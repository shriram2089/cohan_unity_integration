#!/usr/bin/env python

import rospy
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist

def odom_callback1(msg):
    msg.header.stamp = rospy.Time.now()
    pub1.publish(msg)
    pub2.publish(msg)
    pub3.publish(msg)
 

# def odom_callback2(msg):
    
#     pub4.publish(msg)






if __name__ == '__main__':
    rospy.init_node('pr2_odom_relay_node')

    
    pub1 = rospy.Publisher('/base_pose_ground_truth', Odometry, queue_size=10 , latch = True)

    pub2 = rospy.Publisher('/base_odometry/odom', Odometry, queue_size=10 ,  latch = True)
    pub3 = rospy.Publisher('/odom', Odometry, queue_size=10 ,  latch = True)
    # pub4 = rospy.Publisher('/cmd_vel',Twist,queue_size=10, latch=True)
    
    sub1 = rospy.Subscriber('odom_unity_1', Odometry, odom_callback1)
    # sub1 = rospy.Subscriber('odom_unreal_1', Odometry, odom_callback1)
    # sub2 = rospy.Subscriber('/cmd_vel', Twist, odom_callback2)





    rospy.spin()

