#!/usr/bin/env python
import rospy
from std_msgs.msg import String
import socket
from llm_chains import listener_convo


# WIN SOCKET

WINDOWS_IP = '172.26.128.1'
PORT = 54320

def send_to_windows(text):
    try:
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.connect((WINDOWS_IP, PORT))
            s.sendall(text.encode('utf-8'))
            rospy.loginfo(f"Sent LLM response to Windows client: {text}")
    except Exception as e:
        rospy.logerr(f"Failed to send response to Windows client: {e}")

def ros_publisher():
    rospy.init_node('text_listener', anonymous=True)

    pub_in = rospy.Publisher('/speech_text', String, queue_size=10)   
    pub_out = rospy.Publisher('/llm_response', String, queue_size=10)  

    #LINUX LISTEN SOCKET

    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    server_socket.bind(('0.0.0.0', 12345))
    server_socket.listen(5)
    rospy.loginfo("Server listening on port 12345")

    conversation_history = ""

    while not rospy.is_shutdown():
        try:
            client_socket, addr = server_socket.accept()
            rospy.loginfo(f"Connection from {addr}")

            while not rospy.is_shutdown():
                data = client_socket.recv(1024)
                if not data:
                    break

                human_text = data.decode('utf-8').strip()
                rospy.loginfo(f"Received (Human): {human_text}")

                
                pub_in.publish(human_text)

                # convo history
                conversation_history += f"Human: {human_text}\n"
                conversation_history += "Robot: "  #response
                try:
                    
                    llm_response = listener_convo(conversation_history)

                    
                    robot_speech = ""
                    if isinstance(llm_response, dict):
                        robot_speech = llm_response.get("speech", "").strip()
                    else:
                        robot_speech = str(llm_response).strip()

                    rospy.loginfo(f"LLM Response (Robot): {robot_speech}")

                   
                    pub_out.publish(robot_speech)

                    
                    send_to_windows(robot_speech)

                    conversation_history += f"{robot_speech}\n"

                except Exception as e:
                    rospy.logerr(f"Error during LLM processing: {e}")
              
                    conversation_history = conversation_history.rsplit("Robot: ", 1)[0]

            client_socket.close()
            rospy.loginfo(f"Connection from {addr} closed.")

            # reset
            conversation_history = ""

        except Exception as e:
            rospy.logerr(f"Socket error: {e}")

    server_socket.close()

if __name__ == '__main__':
    try:
        ros_publisher()
    except rospy.ROSInterruptException:
        pass
