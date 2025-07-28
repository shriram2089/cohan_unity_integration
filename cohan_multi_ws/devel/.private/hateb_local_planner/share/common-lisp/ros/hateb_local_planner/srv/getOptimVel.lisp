; Auto-generated. Do not edit!


(cl:in-package hateb_local_planner-srv)


;//! \htmlinclude getOptimVel-request.msg.html

(cl:defclass <getOptimVel-request> (roslisp-msg-protocol:ros-message)
  ((robot_goal
    :reader robot_goal
    :initarg :robot_goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass getOptimVel-request (<getOptimVel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getOptimVel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getOptimVel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hateb_local_planner-srv:<getOptimVel-request> is deprecated: use hateb_local_planner-srv:getOptimVel-request instead.")))

(cl:ensure-generic-function 'robot_goal-val :lambda-list '(m))
(cl:defmethod robot_goal-val ((m <getOptimVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:robot_goal-val is deprecated.  Use hateb_local_planner-srv:robot_goal instead.")
  (robot_goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getOptimVel-request>) ostream)
  "Serializes a message object of type '<getOptimVel-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getOptimVel-request>) istream)
  "Deserializes a message object of type '<getOptimVel-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getOptimVel-request>)))
  "Returns string type for a service object of type '<getOptimVel-request>"
  "hateb_local_planner/getOptimVelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getOptimVel-request)))
  "Returns string type for a service object of type 'getOptimVel-request"
  "hateb_local_planner/getOptimVelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getOptimVel-request>)))
  "Returns md5sum for a message object of type '<getOptimVel-request>"
  "9064de66b0c4b1d712622f9ef99fd185")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getOptimVel-request)))
  "Returns md5sum for a message object of type 'getOptimVel-request"
  "9064de66b0c4b1d712622f9ef99fd185")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getOptimVel-request>)))
  "Returns full string definition for message of type '<getOptimVel-request>"
  (cl:format cl:nil "#Set the goal and get the optimal velocity command~%~%geometry_msgs/PoseStamped robot_goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getOptimVel-request)))
  "Returns full string definition for message of type 'getOptimVel-request"
  (cl:format cl:nil "#Set the goal and get the optimal velocity command~%~%geometry_msgs/PoseStamped robot_goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getOptimVel-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getOptimVel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'getOptimVel-request
    (cl:cons ':robot_goal (robot_goal msg))
))
;//! \htmlinclude getOptimVel-response.msg.html

(cl:defclass <getOptimVel-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (cmd_vel
    :reader cmd_vel
    :initarg :cmd_vel
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass getOptimVel-response (<getOptimVel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getOptimVel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getOptimVel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hateb_local_planner-srv:<getOptimVel-response> is deprecated: use hateb_local_planner-srv:getOptimVel-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <getOptimVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:success-val is deprecated.  Use hateb_local_planner-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <getOptimVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:message-val is deprecated.  Use hateb_local_planner-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'cmd_vel-val :lambda-list '(m))
(cl:defmethod cmd_vel-val ((m <getOptimVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:cmd_vel-val is deprecated.  Use hateb_local_planner-srv:cmd_vel instead.")
  (cmd_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getOptimVel-response>) ostream)
  "Serializes a message object of type '<getOptimVel-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd_vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getOptimVel-response>) istream)
  "Deserializes a message object of type '<getOptimVel-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cmd_vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getOptimVel-response>)))
  "Returns string type for a service object of type '<getOptimVel-response>"
  "hateb_local_planner/getOptimVelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getOptimVel-response)))
  "Returns string type for a service object of type 'getOptimVel-response"
  "hateb_local_planner/getOptimVelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getOptimVel-response>)))
  "Returns md5sum for a message object of type '<getOptimVel-response>"
  "9064de66b0c4b1d712622f9ef99fd185")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getOptimVel-response)))
  "Returns md5sum for a message object of type 'getOptimVel-response"
  "9064de66b0c4b1d712622f9ef99fd185")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getOptimVel-response>)))
  "Returns full string definition for message of type '<getOptimVel-response>"
  (cl:format cl:nil "bool success~%string message~%geometry_msgs/Twist cmd_vel~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getOptimVel-response)))
  "Returns full string definition for message of type 'getOptimVel-response"
  (cl:format cl:nil "bool success~%string message~%geometry_msgs/Twist cmd_vel~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getOptimVel-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd_vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getOptimVel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'getOptimVel-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':cmd_vel (cmd_vel msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'getOptimVel)))
  'getOptimVel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'getOptimVel)))
  'getOptimVel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getOptimVel)))
  "Returns string type for a service object of type '<getOptimVel>"
  "hateb_local_planner/getOptimVel")