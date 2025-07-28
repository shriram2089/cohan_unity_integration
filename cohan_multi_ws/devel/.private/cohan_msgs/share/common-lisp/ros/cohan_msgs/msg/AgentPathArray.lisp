; Auto-generated. Do not edit!


(cl:in-package cohan_msgs-msg)


;//! \htmlinclude AgentPathArray.msg.html

(cl:defclass <AgentPathArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (paths
    :reader paths
    :initarg :paths
    :type (cl:vector cohan_msgs-msg:AgentPath)
   :initform (cl:make-array 0 :element-type 'cohan_msgs-msg:AgentPath :initial-element (cl:make-instance 'cohan_msgs-msg:AgentPath))))
)

(cl:defclass AgentPathArray (<AgentPathArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentPathArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentPathArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cohan_msgs-msg:<AgentPathArray> is deprecated: use cohan_msgs-msg:AgentPathArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AgentPathArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-msg:header-val is deprecated.  Use cohan_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'paths-val :lambda-list '(m))
(cl:defmethod paths-val ((m <AgentPathArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-msg:paths-val is deprecated.  Use cohan_msgs-msg:paths instead.")
  (paths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentPathArray>) ostream)
  "Serializes a message object of type '<AgentPathArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'paths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'paths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentPathArray>) istream)
  "Deserializes a message object of type '<AgentPathArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'paths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'paths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cohan_msgs-msg:AgentPath))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentPathArray>)))
  "Returns string type for a message object of type '<AgentPathArray>"
  "cohan_msgs/AgentPathArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentPathArray)))
  "Returns string type for a message object of type 'AgentPathArray"
  "cohan_msgs/AgentPathArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentPathArray>)))
  "Returns md5sum for a message object of type '<AgentPathArray>"
  "be9631bea00a14da0ca7d5484c81b047")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentPathArray)))
  "Returns md5sum for a message object of type 'AgentPathArray"
  "be9631bea00a14da0ca7d5484c81b047")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentPathArray>)))
  "Returns full string definition for message of type '<AgentPathArray>"
  (cl:format cl:nil "std_msgs/Header         header~%cohan_msgs/AgentPath[]   paths~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: cohan_msgs/AgentPath~%std_msgs/Header header~%uint64          id~%nav_msgs/Path   path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentPathArray)))
  "Returns full string definition for message of type 'AgentPathArray"
  (cl:format cl:nil "std_msgs/Header         header~%cohan_msgs/AgentPath[]   paths~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: cohan_msgs/AgentPath~%std_msgs/Header header~%uint64          id~%nav_msgs/Path   path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentPathArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentPathArray>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentPathArray
    (cl:cons ':header (header msg))
    (cl:cons ':paths (paths msg))
))
