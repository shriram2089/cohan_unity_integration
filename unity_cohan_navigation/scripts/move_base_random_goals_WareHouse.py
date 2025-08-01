#!/usr/bin/env python

import rospy
import random
import math
from geometry_msgs.msg import PoseStamped
from nav_msgs.msg import Odometry
from tf.transformations import quaternion_from_euler
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
class RandomGoalPublisher:
    def __init__(self):
        self.move_base_client = actionlib.SimpleActionClient('/move_base', MoveBaseAction)
        self.move_base_client.wait_for_server()
        rospy.sleep(3.0)
        print("after waiting for server")
        self.pub = rospy.Publisher('/move_base_simple/goal', PoseStamped, queue_size=10)
        self.robot_pose = None
        rospy.Subscriber('/base_odometry/odom', Odometry, self.pose_callback)
        # self.goal_positions = [[-35 , -23  , -1.5707] , [-38 , -28 ,- 1.5707] , [-38 , -43 , 1.5707] , [-26 , -60 , -1.5707],[-10 , -60 , -1.5707],[-21 , -48 , 0],[-22 , -19 , 0],[-11 , -7 , 1.5707]]
        self.goal_positions = [[[-37 , -47, 1.570] , [-29 , -45 , -1.5707] , [-29 , -23 , -1.5707]], [[-20 , -16 , 3.14]] ,[[-22 , -32 , 3.14] , [-15, -20 , 0]] , [[-16 , -6 , 0]] ]
        self.goal_timeout = rospy.Duration(25)         #  Max time allowed per goal
        self.distance_threshold = 0.5                  #  Considered reached if within this distance
        self.stuck_check_interval = 5.0                #  Check stuck status every 5 seconds
        self.min_progress = 0.05            
        self.human_stop_locatons = [[-32 , -10] , [-26 , -56] , [-21 , -40] , [-22, -13]]
        self.human_location_flags = [False] * len(self.human_stop_locatons)
        rospy.Timer(rospy.Duration(0.1), self.check_human_status)  # Update goal positions every second
        # self.reached_goal = False
                    #  If progress < this, robot may be stuck

    def check_human_status(self , _ ):
        human_pose = rospy.wait_for_message('/human1/odom', Odometry)
        human_position = human_pose.pose.pose.position
        for i, location in enumerate(self.human_stop_locatons):
            # print((self.human_location_flags[i]))
            if not self.human_location_flags[i]:
                distance = math.sqrt((human_position.x - location[0]) ** 2 + (human_position.y - location[1]) ** 2)
                if distance < 2:
                    rospy.loginfo(f"Human reached stop location {i+1} at ({location[0]}, {location[1]})")
                    self.human_location_flags[i] = True
                    self.go(self.goal_positions[i])

                    # Optionally, you can publish a message or take action here


    def go(self , goal_locations):
        for goal_location in goal_locations:
            # goal = PoseStamped()
            # goal.header.frame_id = "map"
            # goal.header.stamp = rospy.Time.now()
            # goal.pose.position.x = goal_location[0]
            # goal.pose.position.y = goal_location[1]
            # q = quaternion_from_euler(0, 0, goal_location[2])
            # goal.pose.orientation.w = q[3]
            # goal.pose.orientation.z = q[2]

            # rospy.loginfo(f" Publishing new goal: ({goal.pose.position.x:.2f}, {goal.pose.position.y:.2f})")
            # self.pub.publish(goal)

            move_goal = MoveBaseGoal()
            move_goal.target_pose.header.frame_id = "map"
            move_goal.target_pose.header.stamp = rospy.Time.now()
            move_goal.target_pose.pose.position.x = goal_location[0]
            move_goal.target_pose.pose.position.y = goal_location[1]
            q = quaternion_from_euler(0, 0, goal_location[2])
            move_goal.target_pose.pose.orientation.z = q[2]
            move_goal.target_pose.pose.orientation.w = q[3]

            self.move_base_client.send_goal(move_goal)
            rospy.loginfo("Sent goal to move_base...")

            # Wait for result or timeout
            # success = self.move_base_client.wait_for_result(self.goal_timeout)

            # if not success:
                # rospy.logwarn("Timeout or failure in reaching goal.")
            # else:
                # rospy.loginfo("Goal reached successfully.")


            # rospy.loginfo(" Waiting for 3 seconds before checking goal status...")
            # rospy.sleep(3.0)/

            self.wait_until_goal_done(move_goal.target_pose)

            rospy.sleep(1.0)

    def pose_callback(self, msg):
        self.robot_pose = msg.pose.pose

    def distance_to_goal(self, goal):

        if self.robot_pose is None:
            print('Robot pose not available yet.')
            return float('inf')
        print('Robot pose:', self.robot_pose.position.x, self.robot_pose.position.y)
        dx = goal.pose.position.x - self.robot_pose.position.x
        dy = goal.pose.position.y - self.robot_pose.position.y
        return math.hypot(dx, dy)

    def wait_until_goal_done(self, goal):
        start_time = rospy.Time.now()
        last_check_time = rospy.Time.now()
        last_distance = self.distance_to_goal(goal)

        while not rospy.is_shutdown():
            current_time = rospy.Time.now()
            elapsed_time = (current_time - start_time).to_sec()
            current_distance = self.distance_to_goal(goal)

            # reached
            if current_distance < self.distance_threshold:
                rospy.loginfo(" Goal reached.")
                self.reached_goal = True
                rospy.sleep(3.0)
                return

            # # Timeout 
            # if elapsed_time > self.goal_timeout.to_sec():
            #     rospy.logwarn(" Timeout: Goal not reached.")
            #     return

            # # stuck
            # if (current_time - last_check_time).to_sec() > self.stuck_check_interval:
            #     progress = last_distance - current_distance
            #     if progress < self.min_progress:
            #         rospy.logwarn(" Robot seems stuck. Giving up on current goal.")
            #         return
            #     last_check_time = current_time
            #     last_distance = current_distance

            rospy.sleep(1.0)

    def publish_random_goal(self):
        while not rospy.is_shutdown():
            for goal_position in self.goal_positions:
                goal = PoseStamped()
                goal.header.frame_id = "map"
                goal.header.stamp = rospy.Time.now()
                # goal.pose.position.x = random.uniform(0.0, 15.0)
                # goal.pose.position.y = random.uniform(-12.0, 30.0)
                # random_index = random.randint(0, len(self.goal_positions) - 1)
                goal.pose.position.x  = goal_position[0]
                goal.pose.position.y  = goal_position[1]
                q = quaternion_from_euler(0, 0, goal_position[2])
                goal.pose.orientation.w = q[3]
                goal.pose.orientation.z = q[2]

                # goal.header.stamp = rospy.Time.now()
            




                rospy.loginfo(f" Publishing new goal: ({goal.pose.position.x:.2f}, {goal.pose.position.y:.2f})")
                self.pub.publish(goal)

                rospy.sleep(3.0)

                self.wait_until_goal_done(goal)

                rospy.sleep(1.0)

if __name__ == '__main__':
    try:
        print("before waiting for server")
        rospy.init_node('random_goal_publisher', anonymous=True)
        rgp = RandomGoalPublisher()
        
    
        rospy.spin()

        # rospy.sleep(10.0)
        # rgp.publish_random_goal()
    except rospy.ROSInterruptException:
        pass
