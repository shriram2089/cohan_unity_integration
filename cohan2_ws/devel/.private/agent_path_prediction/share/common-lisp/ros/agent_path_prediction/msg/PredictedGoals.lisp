; Auto-generated. Do not edit!


(cl:in-package agent_path_prediction-msg)


;//! \htmlinclude PredictedGoals.msg.html

(cl:defclass <PredictedGoals> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goals
    :reader goals
    :initarg :goals
    :type (cl:vector agent_path_prediction-msg:PredictedGoal)
   :initform (cl:make-array 0 :element-type 'agent_path_prediction-msg:PredictedGoal :initial-element (cl:make-instance 'agent_path_prediction-msg:PredictedGoal))))
)

(cl:defclass PredictedGoals (<PredictedGoals>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictedGoals>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictedGoals)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agent_path_prediction-msg:<PredictedGoals> is deprecated: use agent_path_prediction-msg:PredictedGoals instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PredictedGoals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-msg:header-val is deprecated.  Use agent_path_prediction-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goals-val :lambda-list '(m))
(cl:defmethod goals-val ((m <PredictedGoals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-msg:goals-val is deprecated.  Use agent_path_prediction-msg:goals instead.")
  (goals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictedGoals>) ostream)
  "Serializes a message object of type '<PredictedGoals>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goals))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictedGoals>) istream)
  "Deserializes a message object of type '<PredictedGoals>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agent_path_prediction-msg:PredictedGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictedGoals>)))
  "Returns string type for a message object of type '<PredictedGoals>"
  "agent_path_prediction/PredictedGoals")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictedGoals)))
  "Returns string type for a message object of type 'PredictedGoals"
  "agent_path_prediction/PredictedGoals")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictedGoals>)))
  "Returns md5sum for a message object of type '<PredictedGoals>"
  "95cfdad36d575cd6c2bdeb6bf9876c1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictedGoals)))
  "Returns md5sum for a message object of type 'PredictedGoals"
  "95cfdad36d575cd6c2bdeb6bf9876c1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictedGoals>)))
  "Returns full string definition for message of type '<PredictedGoals>"
  (cl:format cl:nil "std_msgs/Header header~%PredictedGoal[] goals~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agent_path_prediction/PredictedGoal~%int32                       id~%geometry_msgs/Pose          goal                                                       ~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictedGoals)))
  "Returns full string definition for message of type 'PredictedGoals"
  (cl:format cl:nil "std_msgs/Header header~%PredictedGoal[] goals~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agent_path_prediction/PredictedGoal~%int32                       id~%geometry_msgs/Pose          goal                                                       ~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictedGoals>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictedGoals>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictedGoals
    (cl:cons ':header (header msg))
    (cl:cons ':goals (goals msg))
))
