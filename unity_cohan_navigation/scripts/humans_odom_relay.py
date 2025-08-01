#!/usr/bin/env python

import rospy
from nav_msgs.msg import Odometry


def odom_callback3(msg):
    
    pub3.publish(msg)


def odom_callback4(msg):
    
    pub4.publish(msg)

if __name__ == '__main__':
    rospy.init_node('humans_odom_relay_node')




    #humans


    pub3 = rospy.Publisher('/human1/base_pose_ground_truth', Odometry, queue_size=10 , latch = True)

    pub4 = rospy.Publisher('/human2/base_pose_ground_truth', Odometry, queue_size=10 , latch = True)
    
    
    sub3 = rospy.Subscriber('/human1/odom', Odometry, odom_callback3)
    sub4 = rospy.Subscriber('/human2/odom', Odometry, odom_callback4)


    rospy.spin()

