; Auto-generated. Do not edit!


(cl:in-package cohan_msgs-msg)


;//! \htmlinclude TrajectoryArray.msg.html

(cl:defclass <TrajectoryArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trajectories
    :reader trajectories
    :initarg :trajectories
    :type (cl:vector cohan_msgs-msg:Trajectory)
   :initform (cl:make-array 0 :element-type 'cohan_msgs-msg:Trajectory :initial-element (cl:make-instance 'cohan_msgs-msg:Trajectory))))
)

(cl:defclass TrajectoryArray (<TrajectoryArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cohan_msgs-msg:<TrajectoryArray> is deprecated: use cohan_msgs-msg:TrajectoryArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrajectoryArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-msg:header-val is deprecated.  Use cohan_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'trajectories-val :lambda-list '(m))
(cl:defmethod trajectories-val ((m <TrajectoryArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-msg:trajectories-val is deprecated.  Use cohan_msgs-msg:trajectories instead.")
  (trajectories m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryArray>) ostream)
  "Serializes a message object of type '<TrajectoryArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectories))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryArray>) istream)
  "Deserializes a message object of type '<TrajectoryArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectories) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectories)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cohan_msgs-msg:Trajectory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryArray>)))
  "Returns string type for a message object of type '<TrajectoryArray>"
  "cohan_msgs/TrajectoryArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryArray)))
  "Returns string type for a message object of type 'TrajectoryArray"
  "cohan_msgs/TrajectoryArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryArray>)))
  "Returns md5sum for a message object of type '<TrajectoryArray>"
  "fc32a9d8fe3a5bf36649b7d8a4384f45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryArray)))
  "Returns md5sum for a message object of type 'TrajectoryArray"
  "fc32a9d8fe3a5bf36649b7d8a4384f45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryArray>)))
  "Returns full string definition for message of type '<TrajectoryArray>"
  (cl:format cl:nil "std_msgs/Header          header~%cohan_msgs/Trajectory[]  trajectories~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: cohan_msgs/Trajectory~%cohan_msgs/TrajectoryPoint[]     points~%~%================================================================================~%MSG: cohan_msgs/TrajectoryPoint~%geometry_msgs/Pose          pose~%geometry_msgs/Twist         velocity~%duration                    time_from_start~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryArray)))
  "Returns full string definition for message of type 'TrajectoryArray"
  (cl:format cl:nil "std_msgs/Header          header~%cohan_msgs/Trajectory[]  trajectories~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: cohan_msgs/Trajectory~%cohan_msgs/TrajectoryPoint[]     points~%~%================================================================================~%MSG: cohan_msgs/TrajectoryPoint~%geometry_msgs/Pose          pose~%geometry_msgs/Twist         velocity~%duration                    time_from_start~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryArray
    (cl:cons ':header (header msg))
    (cl:cons ':trajectories (trajectories msg))
))
