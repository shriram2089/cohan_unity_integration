; Auto-generated. Do not edit!


(cl:in-package cohan_msgs-msg)


;//! \htmlinclude AgentMarkerStamped.msg.html

(cl:defclass <AgentMarkerStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (agent
    :reader agent
    :initarg :agent
    :type cohan_msgs-msg:AgentMarker
    :initform (cl:make-instance 'cohan_msgs-msg:AgentMarker)))
)

(cl:defclass AgentMarkerStamped (<AgentMarkerStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentMarkerStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentMarkerStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cohan_msgs-msg:<AgentMarkerStamped> is deprecated: use cohan_msgs-msg:AgentMarkerStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AgentMarkerStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-msg:header-val is deprecated.  Use cohan_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'agent-val :lambda-list '(m))
(cl:defmethod agent-val ((m <AgentMarkerStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-msg:agent-val is deprecated.  Use cohan_msgs-msg:agent instead.")
  (agent m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentMarkerStamped>) ostream)
  "Serializes a message object of type '<AgentMarkerStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'agent) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentMarkerStamped>) istream)
  "Deserializes a message object of type '<AgentMarkerStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'agent) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentMarkerStamped>)))
  "Returns string type for a message object of type '<AgentMarkerStamped>"
  "cohan_msgs/AgentMarkerStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentMarkerStamped)))
  "Returns string type for a message object of type 'AgentMarkerStamped"
  "cohan_msgs/AgentMarkerStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentMarkerStamped>)))
  "Returns md5sum for a message object of type '<AgentMarkerStamped>"
  "0285b2aa7ba6b65347e0ed226637a9ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentMarkerStamped)))
  "Returns md5sum for a message object of type 'AgentMarkerStamped"
  "0285b2aa7ba6b65347e0ed226637a9ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentMarkerStamped>)))
  "Returns full string definition for message of type '<AgentMarkerStamped>"
  (cl:format cl:nil "Header        header~%cohan_msgs/AgentMarker   agent         ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: cohan_msgs/AgentMarker~%uint64              id~%bool                active~%geometry_msgs/Pose  pose~%geometry_msgs/Twist velocity~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentMarkerStamped)))
  "Returns full string definition for message of type 'AgentMarkerStamped"
  (cl:format cl:nil "Header        header~%cohan_msgs/AgentMarker   agent         ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: cohan_msgs/AgentMarker~%uint64              id~%bool                active~%geometry_msgs/Pose  pose~%geometry_msgs/Twist velocity~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentMarkerStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'agent))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentMarkerStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentMarkerStamped
    (cl:cons ':header (header msg))
    (cl:cons ':agent (agent msg))
))
