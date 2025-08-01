#!/usr/bin/env python
import rospy
import rosbag
import rostopic
import time
import signal
import sys

currnet_time = time.strftime("%Y-%m-%d-%H-%M-%S", time.localtime())
bag_name = f"rosbag_record_{currnet_time}.bag"

topic_list = [
    '/pr2_cam/image_compressed/compressed',
    '/vr/pose_combined',
    '/joint_states2',
    '/human1/odom',
    '/odom',
    '/tf',
]

subscribers = []
bag = None

def make_callback(topic, bag):
    def callback(msg):
        bag.write(topic, msg)
    return callback

def shutdown_handler(signum, frame):
    rospy.loginfo("Shutting down... closing bag file.")
    if bag:
        bag.close()
    sys.exit(0)

if __name__ == '__main__':
    rospy.init_node('rosbag_record_node', anonymous=True)
    bag = rosbag.Bag(bag_name, 'w')

    # Catch Ctrl+C (SIGINT)
    signal.signal(signal.SIGINT, shutdown_handler)

    for topic in topic_list:
        msg_class, real_topic, _ = rostopic.get_topic_class(topic)
        if msg_class is None:
            rospy.logwarn(f"Could not resolve message type for topic: {topic}. Skipping.")
            continue
        cb = make_callback(topic, bag)
        sub = rospy.Subscriber(real_topic, msg_class, cb)
        subscribers.append(sub)

    rospy.loginfo(f"Recording started. Saving to: {bag_name}")
    try:
        rospy.spin()
    finally:
        if bag:
            bag.close()
        rospy.loginfo("Rosbag recording stopped and file closed.")
