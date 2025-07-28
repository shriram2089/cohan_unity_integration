#!/usr/bin/env python3

import rospy
from nav_msgs.msg import Odometry
from sensor_msgs.msg import JointState
from geometry_msgs.msg import Pose, Twist, Quaternion, Point
import tf
import math

def publish_fake_data():
    rospy.init_node('fake_pr2_driver')

    odom_pub = rospy.Publisher('/base_pose_ground_truth', Odometry, queue_size=10)
    joint_pub = rospy.Publisher('/joint_states', JointState, queue_size=10)
    br = tf.TransformBroadcaster()

    rate = rospy.Rate(30)
    t_start = rospy.Time.now()

    while not rospy.is_shutdown():
        t = (rospy.Time.now() - t_start).to_sec()

        x = 1.0 * math.cos(t / 5.0)
        y = 1.0 * math.sin(t / 5.0)
        yaw = t / 5.0
        quat = tf.transformations.quaternion_from_euler(0, 0, yaw)

        odom = Odometry()
        odom.header.stamp = rospy.Time.now()
        odom.header.frame_id = "odom"
        odom.child_frame_id = "base_footprint"
        odom.pose.pose = Pose(Point(x, y, 0.0), Quaternion(*quat))
        odom.twist.twist = Twist()
        odom_pub.publish(odom)

        br.sendTransform(
            (x, y, 0.0),
            quat,
            rospy.Time.now(),
            "base_footprint",
            "odom"
        )

        js = JointState()
        js.header.stamp = rospy.Time.now()
        js.name = ['head_pan_joint', 'l_shoulder_lift_joint']
        js.position = [1.0, 1.0]
        joint_pub.publish(js)

        rate.sleep()

if __name__ == '__main__':
    try:
        publish_fake_data()
    except rospy.ROSInterruptException:
        pass

