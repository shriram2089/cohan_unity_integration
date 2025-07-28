; Auto-generated. Do not edit!


(cl:in-package agent_path_prediction-srv)


;//! \htmlinclude AgentPosePredict-request.msg.html

(cl:defclass <AgentPosePredict-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (predict_times
    :reader predict_times
    :initarg :predict_times
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass AgentPosePredict-request (<AgentPosePredict-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentPosePredict-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentPosePredict-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agent_path_prediction-srv:<AgentPosePredict-request> is deprecated: use agent_path_prediction-srv:AgentPosePredict-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <AgentPosePredict-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-srv:type-val is deprecated.  Use agent_path_prediction-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'predict_times-val :lambda-list '(m))
(cl:defmethod predict_times-val ((m <AgentPosePredict-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-srv:predict_times-val is deprecated.  Use agent_path_prediction-srv:predict_times instead.")
  (predict_times m))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <AgentPosePredict-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-srv:ids-val is deprecated.  Use agent_path_prediction-srv:ids instead.")
  (ids m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AgentPosePredict-request>)))
    "Constants for message type '<AgentPosePredict-request>"
  '((:VELOCITY_SCALE . 0)
    (:VELOCITY_OBSTACLE . 1)
    (:EXTERNAL . 2)
    (:BEHIND_ROBOT . 3)
    (:PREDICTED_GOAL . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AgentPosePredict-request)))
    "Constants for message type 'AgentPosePredict-request"
  '((:VELOCITY_SCALE . 0)
    (:VELOCITY_OBSTACLE . 1)
    (:EXTERNAL . 2)
    (:BEHIND_ROBOT . 3)
    (:PREDICTED_GOAL . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentPosePredict-request>) ostream)
  "Serializes a message object of type '<AgentPosePredict-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'predict_times))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'predict_times))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentPosePredict-request>) istream)
  "Deserializes a message object of type '<AgentPosePredict-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'predict_times) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'predict_times)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentPosePredict-request>)))
  "Returns string type for a service object of type '<AgentPosePredict-request>"
  "agent_path_prediction/AgentPosePredictRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentPosePredict-request)))
  "Returns string type for a service object of type 'AgentPosePredict-request"
  "agent_path_prediction/AgentPosePredictRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentPosePredict-request>)))
  "Returns md5sum for a message object of type '<AgentPosePredict-request>"
  "bc118b82a57269022e8ca4cc5d1d18ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentPosePredict-request)))
  "Returns md5sum for a message object of type 'AgentPosePredict-request"
  "bc118b82a57269022e8ca4cc5d1d18ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentPosePredict-request>)))
  "Returns full string definition for message of type '<AgentPosePredict-request>"
  (cl:format cl:nil "# request constants~%uint8 VELOCITY_SCALE=0~%uint8 VELOCITY_OBSTACLE=1~%uint8 EXTERNAL=2~%uint8 BEHIND_ROBOT=3~%uint8 PREDICTED_GOAL=4~%# request fields~%uint8                               type~%float64[]                           predict_times~%int64[]                             ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentPosePredict-request)))
  "Returns full string definition for message of type 'AgentPosePredict-request"
  (cl:format cl:nil "# request constants~%uint8 VELOCITY_SCALE=0~%uint8 VELOCITY_OBSTACLE=1~%uint8 EXTERNAL=2~%uint8 BEHIND_ROBOT=3~%uint8 PREDICTED_GOAL=4~%# request fields~%uint8                               type~%float64[]                           predict_times~%int64[]                             ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentPosePredict-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'predict_times) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentPosePredict-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentPosePredict-request
    (cl:cons ':type (type msg))
    (cl:cons ':predict_times (predict_times msg))
    (cl:cons ':ids (ids msg))
))
;//! \htmlinclude AgentPosePredict-response.msg.html

(cl:defclass <AgentPosePredict-response> (roslisp-msg-protocol:ros-message)
  ((predicted_agents_poses
    :reader predicted_agents_poses
    :initarg :predicted_agents_poses
    :type (cl:vector agent_path_prediction-msg:PredictedPoses)
   :initform (cl:make-array 0 :element-type 'agent_path_prediction-msg:PredictedPoses :initial-element (cl:make-instance 'agent_path_prediction-msg:PredictedPoses))))
)

(cl:defclass AgentPosePredict-response (<AgentPosePredict-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentPosePredict-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentPosePredict-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agent_path_prediction-srv:<AgentPosePredict-response> is deprecated: use agent_path_prediction-srv:AgentPosePredict-response instead.")))

(cl:ensure-generic-function 'predicted_agents_poses-val :lambda-list '(m))
(cl:defmethod predicted_agents_poses-val ((m <AgentPosePredict-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-srv:predicted_agents_poses-val is deprecated.  Use agent_path_prediction-srv:predicted_agents_poses instead.")
  (predicted_agents_poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentPosePredict-response>) ostream)
  "Serializes a message object of type '<AgentPosePredict-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'predicted_agents_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'predicted_agents_poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentPosePredict-response>) istream)
  "Deserializes a message object of type '<AgentPosePredict-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'predicted_agents_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'predicted_agents_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agent_path_prediction-msg:PredictedPoses))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentPosePredict-response>)))
  "Returns string type for a service object of type '<AgentPosePredict-response>"
  "agent_path_prediction/AgentPosePredictResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentPosePredict-response)))
  "Returns string type for a service object of type 'AgentPosePredict-response"
  "agent_path_prediction/AgentPosePredictResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentPosePredict-response>)))
  "Returns md5sum for a message object of type '<AgentPosePredict-response>"
  "bc118b82a57269022e8ca4cc5d1d18ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentPosePredict-response)))
  "Returns md5sum for a message object of type 'AgentPosePredict-response"
  "bc118b82a57269022e8ca4cc5d1d18ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentPosePredict-response>)))
  "Returns full string definition for message of type '<AgentPosePredict-response>"
  (cl:format cl:nil "# response fields~%agent_path_prediction/PredictedPoses[]    predicted_agents_poses~%~%~%================================================================================~%MSG: agent_path_prediction/PredictedPoses~%uint64                                      id~%geometry_msgs/PoseWithCovarianceStamped[]   poses~%geometry_msgs/TwistStamped                  start_velocity~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentPosePredict-response)))
  "Returns full string definition for message of type 'AgentPosePredict-response"
  (cl:format cl:nil "# response fields~%agent_path_prediction/PredictedPoses[]    predicted_agents_poses~%~%~%================================================================================~%MSG: agent_path_prediction/PredictedPoses~%uint64                                      id~%geometry_msgs/PoseWithCovarianceStamped[]   poses~%geometry_msgs/TwistStamped                  start_velocity~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentPosePredict-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'predicted_agents_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentPosePredict-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentPosePredict-response
    (cl:cons ':predicted_agents_poses (predicted_agents_poses msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AgentPosePredict)))
  'AgentPosePredict-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AgentPosePredict)))
  'AgentPosePredict-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentPosePredict)))
  "Returns string type for a service object of type '<AgentPosePredict>"
  "agent_path_prediction/AgentPosePredict")