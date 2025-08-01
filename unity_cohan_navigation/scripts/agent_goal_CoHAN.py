#!/usr/bin/env python

import rospy
from agent_path_prediction.srv import AgentGoal
from agent_path_prediction.msg import AgentPose
from geometry_msgs.msg import PoseStamped

def call_set_agent_goal():
    rospy.init_node('set_agent_goal_client')

    rospy.wait_for_service('/agent_path_predict/set_agent_goal')
    try:
        set_goal = rospy.ServiceProxy('/agent_path_predict/set_agent_goal', AgentGoal)

        agent_msg = AgentPose()
        agent_msg.id = 1
        agent_msg.type = 1

  
        pose_stamped = PoseStamped()
        pose_stamped.header.frame_id = "map"
        pose_stamped.header.stamp = rospy.Time.now()    
        pose_stamped.pose.position.x = -16.6
        pose_stamped.pose.position.y = -10.8
        pose_stamped.pose.position.z = 0.0
        pose_stamped.pose.orientation.x = 0.0
        pose_stamped.pose.orientation.y = 0.0
        pose_stamped.pose.orientation.z = 0.0
        pose_stamped.pose.orientation.w = 1.0

        agent_msg.pose = pose_stamped  

        msg_list = [agent_msg]  

        response = set_goal(msg_list)
        rospy.loginfo("Service call successful.")
        rospy.loginfo(response)
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: %s", e)

if __name__ == "__main__":
#     while not rospy.is_shutdown():
#         try:
#             rospy.sleep(5)  # Wait before calling again
#         except rospy.ROSInterruptException:
#             break
        call_set_agent_goal()
