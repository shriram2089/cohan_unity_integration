#!/usr/bin/python

# import roslib
# roslib.load_manifest('turtle_tf')

import rospy
import tf
# import turtlesim.msg
import tf.msg
import geometry_msgs.msg
import math
from nav_msgs.msg import Odometry

class DynamicTFBroadcaster:

    def __init__(self):
        self.pub_tf = rospy.Publisher("/tf", tf.msg.tfMessage)
        
        change = 0.0
        while not rospy.is_shutdown():
            odom_data = rospy.wait_for_message('/base_pose_ground_truth' , Odometry)
            t = geometry_msgs.msg.TransformStamped()
            t.header.frame_id = "odom_combined"
            t.header.stamp = rospy.Time.now()
            t.child_frame_id = "base_footprint"
            t.transform.translation.x = odom_data.pose.pose.position.x
            t.transform.translation.y =  odom_data.pose.pose.position.y
            t.transform.translation.z =  odom_data.pose.pose.position.z

            t.transform.rotation.x =  odom_data.pose.pose.orientation.x
            t.transform.rotation.y = odom_data.pose.pose.orientation.y
            t.transform.rotation.z = odom_data.pose.pose.orientation.z
            t.transform.rotation.w = odom_data.pose.pose.orientation.w

            tfm = tf.msg.tfMessage([t])
            self.pub_tf.publish(tfm)




if __name__ == '__main__':
    rospy.init_node('my_tf_broadcaster')
    tfb = DynamicTFBroadcaster()
    rospy.spin()
