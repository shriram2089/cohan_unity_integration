; Auto-generated. Do not edit!


(cl:in-package agent_path_prediction-srv)


;//! \htmlinclude AgentGoal-request.msg.html

(cl:defclass <AgentGoal-request> (roslisp-msg-protocol:ros-message)
  ((goals
    :reader goals
    :initarg :goals
    :type (cl:vector agent_path_prediction-msg:AgentPose)
   :initform (cl:make-array 0 :element-type 'agent_path_prediction-msg:AgentPose :initial-element (cl:make-instance 'agent_path_prediction-msg:AgentPose))))
)

(cl:defclass AgentGoal-request (<AgentGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agent_path_prediction-srv:<AgentGoal-request> is deprecated: use agent_path_prediction-srv:AgentGoal-request instead.")))

(cl:ensure-generic-function 'goals-val :lambda-list '(m))
(cl:defmethod goals-val ((m <AgentGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-srv:goals-val is deprecated.  Use agent_path_prediction-srv:goals instead.")
  (goals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentGoal-request>) ostream)
  "Serializes a message object of type '<AgentGoal-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goals))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentGoal-request>) istream)
  "Deserializes a message object of type '<AgentGoal-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agent_path_prediction-msg:AgentPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentGoal-request>)))
  "Returns string type for a service object of type '<AgentGoal-request>"
  "agent_path_prediction/AgentGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentGoal-request)))
  "Returns string type for a service object of type 'AgentGoal-request"
  "agent_path_prediction/AgentGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentGoal-request>)))
  "Returns md5sum for a message object of type '<AgentGoal-request>"
  "371b2efd3bcf51733c8e0c557637df1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentGoal-request)))
  "Returns md5sum for a message object of type 'AgentGoal-request"
  "371b2efd3bcf51733c8e0c557637df1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentGoal-request>)))
  "Returns full string definition for message of type '<AgentGoal-request>"
  (cl:format cl:nil "agent_path_prediction/AgentPose[]  goals~%~%================================================================================~%MSG: agent_path_prediction/AgentPose~%int8                       type ~%int64                      id~%geometry_msgs/PoseStamped  pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentGoal-request)))
  "Returns full string definition for message of type 'AgentGoal-request"
  (cl:format cl:nil "agent_path_prediction/AgentPose[]  goals~%~%================================================================================~%MSG: agent_path_prediction/AgentPose~%int8                       type ~%int64                      id~%geometry_msgs/PoseStamped  pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentGoal-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentGoal-request
    (cl:cons ':goals (goals msg))
))
;//! \htmlinclude AgentGoal-response.msg.html

(cl:defclass <AgentGoal-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass AgentGoal-response (<AgentGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agent_path_prediction-srv:<AgentGoal-response> is deprecated: use agent_path_prediction-srv:AgentGoal-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AgentGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-srv:success-val is deprecated.  Use agent_path_prediction-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AgentGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-srv:message-val is deprecated.  Use agent_path_prediction-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentGoal-response>) ostream)
  "Serializes a message object of type '<AgentGoal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentGoal-response>) istream)
  "Deserializes a message object of type '<AgentGoal-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentGoal-response>)))
  "Returns string type for a service object of type '<AgentGoal-response>"
  "agent_path_prediction/AgentGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentGoal-response)))
  "Returns string type for a service object of type 'AgentGoal-response"
  "agent_path_prediction/AgentGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentGoal-response>)))
  "Returns md5sum for a message object of type '<AgentGoal-response>"
  "371b2efd3bcf51733c8e0c557637df1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentGoal-response)))
  "Returns md5sum for a message object of type 'AgentGoal-response"
  "371b2efd3bcf51733c8e0c557637df1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentGoal-response>)))
  "Returns full string definition for message of type '<AgentGoal-response>"
  (cl:format cl:nil "bool                         success~%string                       message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentGoal-response)))
  "Returns full string definition for message of type 'AgentGoal-response"
  (cl:format cl:nil "bool                         success~%string                       message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentGoal-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentGoal-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AgentGoal)))
  'AgentGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AgentGoal)))
  'AgentGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentGoal)))
  "Returns string type for a service object of type '<AgentGoal>"
  "agent_path_prediction/AgentGoal")