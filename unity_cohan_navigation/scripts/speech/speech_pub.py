#!/usr/bin/env python
import rospy
from std_msgs.msg import String
import socket

def ros_publisher():
    rospy.init_node('text_listener', anonymous=True)
    pub = rospy.Publisher('/speech_text', String, queue_size=10)

    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)  # Reuse 
    server_socket.bind(('0.0.0.0', 12345))  
    server_socket.listen(5)
    rospy.loginfo("Server listening on port 12345")

    while not rospy.is_shutdown():
        try:
            client_socket, addr = server_socket.accept()
            rospy.loginfo(f"Connection from {addr}")

            while not rospy.is_shutdown():
                data = client_socket.recv(1024)
                if not data:
                    break
                text = data.decode('utf-8')
                rospy.loginfo(f"Received: {text}")
                pub.publish(text)

            client_socket.close()
            rospy.loginfo(f"Connection from {addr} closed.")

        except Exception as e:
            rospy.logerr(f"Error: {e}")

    server_socket.close()

if __name__ == '__main__':
    try:
        ros_publisher()
    except rospy.ROSInterruptException:
        pass
