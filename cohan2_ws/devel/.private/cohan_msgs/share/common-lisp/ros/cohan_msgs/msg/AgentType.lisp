; Auto-generated. Do not edit!


(cl:in-package cohan_msgs-msg)


;//! \htmlinclude AgentType.msg.html

(cl:defclass <AgentType> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AgentType (<AgentType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cohan_msgs-msg:<AgentType> is deprecated: use cohan_msgs-msg:AgentType instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AgentType>)))
    "Constants for message type '<AgentType>"
  '((:ROBOT . 0)
    (:HUMAN . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AgentType)))
    "Constants for message type 'AgentType"
  '((:ROBOT . 0)
    (:HUMAN . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentType>) ostream)
  "Serializes a message object of type '<AgentType>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentType>) istream)
  "Deserializes a message object of type '<AgentType>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentType>)))
  "Returns string type for a message object of type '<AgentType>"
  "cohan_msgs/AgentType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentType)))
  "Returns string type for a message object of type 'AgentType"
  "cohan_msgs/AgentType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentType>)))
  "Returns md5sum for a message object of type '<AgentType>"
  "5beb948e85cadcdc28356d202c4aeecd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentType)))
  "Returns md5sum for a message object of type 'AgentType"
  "5beb948e85cadcdc28356d202c4aeecd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentType>)))
  "Returns full string definition for message of type '<AgentType>"
  (cl:format cl:nil "# agent types~%int8 ROBOT=0~%int8 HUMAN=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentType)))
  "Returns full string definition for message of type 'AgentType"
  (cl:format cl:nil "# agent types~%int8 ROBOT=0~%int8 HUMAN=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentType>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentType>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentType
))
