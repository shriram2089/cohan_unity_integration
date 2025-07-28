#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import PoseArray, Pose
import math

def publish_fake_human_paths():
    rospy.init_node('fake_actor_path_publisher')
    path_pub = rospy.Publisher('/actor_paths', PoseArray, queue_size=10)
    rate = rospy.Rate(10)
    t_start = rospy.Time.now()

    while not rospy.is_shutdown():
        t = (rospy.Time.now() - t_start).to_sec()
        msg = PoseArray()
        msg.header.stamp = rospy.Time.now()
        msg.header.frame_id = "map"

        for i in range(2):  # Simulate 2 human paths
            pose = Pose()
            pose.position.x = 3.0 + i + math.sin(t + i)
            pose.position.y = 2.0 + math.cos(t + i)
            msg.poses.append(pose)

        path_pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        publish_fake_human_paths()
    except rospy.ROSInterruptException:
        pass
