#! /usr/bin/env python
import rospy 
from nav_msgs.msg import Path, Odometry , Path
from geometry_msgs.msg import Pose2D
from cohan_msgs.msg import Trajectory
import tf
import numpy as np
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
# from cohan_msg.msg import TrajectoryStamped
import math


class head_motion:
    def __init__(self):
        self.robot_pose = Pose2D()
        self.point = Pose2D()
        self.robot_head_angle = 0.0
        self.head_pose_time = 0 #in seconds (towards whose goal, the head is oriented)
        self.headtj_pub = rospy.Publisher('/head_traj_controller/command' , JointTrajectory , queue_size=10)
        rospy.Subscriber('/base_pose_ground_truth' , Odometry , self.robot_pose_cb)
        rospy.Subscriber('/move_base/HATebLocalPlannerROS/local_traj' , Trajectory , self.angle_calculator)
        # rospy.Subscriber('/move_base/HATebLocalPlannerROS/local_plan' , Path , self.local_plan_cb)
        
        # rospy.Timer(rospy.Duration(0.1), self.timer_callback)


    def local_plan_cb(self , data):
        time_from_start = []
        initial_plan_time = data.poses[0].header.stamp.to_sec()
        for pose_stamped in data.poses : 
            time_from_start.append(pose_stamped.header.stamp.to_sec() - initial_plan_time)
        print(time_from_start)

    
    def robot_pose_cb(self, data):
        q = (
            data.pose.pose.orientation.x,
            data.pose.pose.orientation.y,
            data.pose.pose.orientation.z,
            data.pose.pose.orientation.w
        )
        
        m = tf.transformations.quaternion_matrix(q)
        
        self.robot_pose.x = data.pose.pose.position.x
        self.robot_pose.y = data.pose.pose.position.y
        self.robot_pose.theta = tf.transformations.euler_from_matrix(m)[2]

    def timer_callback(self, event):
        self.head_joint_trajectory_goal = JointTrajectory()
        self.head_goal_point = JointTrajectoryPoint()
        self.head_joint_trajectory_goal.joint_names = ['head_pan_joint' , 'head_tilt_joint']
        self.head_goal_point.positions = [-3 , 0.0]
        self.head_goal_point.time_from_start = rospy.Duration(0.1)
        self.head_joint_trajectory_goal.points.append(self.head_goal_point) 
        self.headtj_pub.publish(self.head_joint_trajectory_goal)
        rospy.loginfo("Head Command Sent")

    def angle_calculator(self, data):
        self.head_joint_trajectory_goal = JointTrajectory()
        self.head_goal_point = JointTrajectoryPoint()
        self.head_joint_trajectory_goal.joint_names = ['head_pan_joint' , 'head_tilt_joint']
        point_found = False
        # print(data)
        # print(data.points[-3].time_from_start.to_sec())
        # time_from_starts = []
        for data_ in data.points:
            # if data_.time_from_start != -1000000000 : 
                # time_from_starts.append(data_.time_from_start)
            if data_.time_from_start> rospy.Duration(self.head_pose_time + 1): # Trial and Fix
                # print(data_.time_from_start)
                point_found = True
                break
        # print(time_from_starts)
        if not point_found:
            data_ = data.points[-1] 
        
        if not math.sqrt((data_.transform.translation.x - self.robot_pose.x)**2 + (data_.transform.translation.y - self.robot_pose.y)**2) < 0.2 : 

            self.point.x = data_.transform.translation.x
            self.point.y = data_.transform.translation.y
            q = (
            data_.transform.rotation.x,
            data_.transform.rotation.y,
            data_.transform.rotation.z,
            data_.transform.rotation.w
            )

            m = tf.transformations.quaternion_matrix(q)
            self.point.theta = tf.transformations.euler_from_matrix(m)[2]   

            point_pos = np.array([self.point.x , self.point.y])
            robot_pos = np.array([self.robot_pose.x , self.robot_pose.y])
            vector_to_goal = point_pos - robot_pos
            goal_yaw = math.atan2(vector_to_goal[1], vector_to_goal[0])
            goal_orientation = (goal_yaw - self.robot_pose.theta + math.pi) % (2 * math.pi) - math.pi 
        else:
            goal_orientation = 0.0 
            
        
        self.head_goal_point.positions = [goal_orientation, 0.0]
        self.head_goal_point.time_from_start = rospy.Duration(0.1)
        self.head_joint_trajectory_goal.points.append(self.head_goal_point)
        self.head_joint_trajectory_goal.header.stamp = rospy.Time.now()
        self.headtj_pub.publish(self.head_joint_trajectory_goal)
        # rospy.loginfo("Head Command Sent")
        # Calculate the distance from the robot to the person
        # distance_to_goal = math.sqrt(vector_to_goal[0]**2 + vector_to_goal[1]**2)

        # Normalize the vector to the desired distance
        # normalized_vector = vector_to_goal/ distance_to_goal

        # Calculate the orientation needed to reach the person
        # self.head_joint_trajectory_goal.points.position = [goal_orientation]
        # self.head_joint_trajectory_goal.header.stamp = rospy.Time.now()
        # self.headtj_pub.publish(self.head_joint_trajectory_goal)

if __name__ == "__main__":
    rospy.init_node('head_extension')
    obj = head_motion()
    rospy.spin()