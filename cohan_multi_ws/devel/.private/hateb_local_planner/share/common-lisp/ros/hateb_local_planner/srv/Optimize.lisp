; Auto-generated. Do not edit!


(cl:in-package hateb_local_planner-srv)


;//! \htmlinclude Optimize-request.msg.html

(cl:defclass <Optimize-request> (roslisp-msg-protocol:ros-message)
  ((robot_plan
    :reader robot_plan
    :initarg :robot_plan
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (agent_path_array
    :reader agent_path_array
    :initarg :agent_path_array
    :type cohan_msgs-msg:AgentPathArray
    :initform (cl:make-instance 'cohan_msgs-msg:AgentPathArray)))
)

(cl:defclass Optimize-request (<Optimize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Optimize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Optimize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hateb_local_planner-srv:<Optimize-request> is deprecated: use hateb_local_planner-srv:Optimize-request instead.")))

(cl:ensure-generic-function 'robot_plan-val :lambda-list '(m))
(cl:defmethod robot_plan-val ((m <Optimize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:robot_plan-val is deprecated.  Use hateb_local_planner-srv:robot_plan instead.")
  (robot_plan m))

(cl:ensure-generic-function 'agent_path_array-val :lambda-list '(m))
(cl:defmethod agent_path_array-val ((m <Optimize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:agent_path_array-val is deprecated.  Use hateb_local_planner-srv:agent_path_array instead.")
  (agent_path_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Optimize-request>) ostream)
  "Serializes a message object of type '<Optimize-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_plan) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'agent_path_array) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Optimize-request>) istream)
  "Deserializes a message object of type '<Optimize-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_plan) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'agent_path_array) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Optimize-request>)))
  "Returns string type for a service object of type '<Optimize-request>"
  "hateb_local_planner/OptimizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Optimize-request)))
  "Returns string type for a service object of type 'Optimize-request"
  "hateb_local_planner/OptimizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Optimize-request>)))
  "Returns md5sum for a message object of type '<Optimize-request>"
  "da056f999e9b97ec60c1cedc995ad26b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Optimize-request)))
  "Returns md5sum for a message object of type 'Optimize-request"
  "da056f999e9b97ec60c1cedc995ad26b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Optimize-request>)))
  "Returns full string definition for message of type '<Optimize-request>"
  (cl:format cl:nil "# Get optimized timed elastic bands for given agents and robot plans~%~%nav_msgs/Path robot_plan~%cohan_msgs/AgentPathArray agent_path_array~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: cohan_msgs/AgentPathArray~%std_msgs/Header         header~%cohan_msgs/AgentPath[]   paths~%~%================================================================================~%MSG: cohan_msgs/AgentPath~%std_msgs/Header header~%uint64          id~%nav_msgs/Path   path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Optimize-request)))
  "Returns full string definition for message of type 'Optimize-request"
  (cl:format cl:nil "# Get optimized timed elastic bands for given agents and robot plans~%~%nav_msgs/Path robot_plan~%cohan_msgs/AgentPathArray agent_path_array~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: cohan_msgs/AgentPathArray~%std_msgs/Header         header~%cohan_msgs/AgentPath[]   paths~%~%================================================================================~%MSG: cohan_msgs/AgentPath~%std_msgs/Header header~%uint64          id~%nav_msgs/Path   path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Optimize-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_plan))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'agent_path_array))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Optimize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Optimize-request
    (cl:cons ':robot_plan (robot_plan msg))
    (cl:cons ':agent_path_array (agent_path_array msg))
))
;//! \htmlinclude Optimize-response.msg.html

(cl:defclass <Optimize-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Optimize-response (<Optimize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Optimize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Optimize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hateb_local_planner-srv:<Optimize-response> is deprecated: use hateb_local_planner-srv:Optimize-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Optimize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:success-val is deprecated.  Use hateb_local_planner-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Optimize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:message-val is deprecated.  Use hateb_local_planner-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'cmd_vel-val :lambda-list '(m))
(cl:defmethod cmd_vel-val ((m <Optimize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:cmd_vel-val is deprecated.  Use hateb_local_planner-srv:cmd_vel instead.")
  (cmd_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Optimize-response>) ostream)
  "Serializes a message object of type '<Optimize-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd_vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Optimize-response>) istream)
  "Deserializes a message object of type '<Optimize-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Optimize-response>)))
  "Returns string type for a service object of type '<Optimize-response>"
  "hateb_local_planner/OptimizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Optimize-response)))
  "Returns string type for a service object of type 'Optimize-response"
  "hateb_local_planner/OptimizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Optimize-response>)))
  "Returns md5sum for a message object of type '<Optimize-response>"
  "da056f999e9b97ec60c1cedc995ad26b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Optimize-response)))
  "Returns md5sum for a message object of type 'Optimize-response"
  "da056f999e9b97ec60c1cedc995ad26b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Optimize-response>)))
  "Returns full string definition for message of type '<Optimize-response>"
  (cl:format cl:nil "bool success~%string message~%geometry_msgs/Twist cmd_vel~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Optimize-response)))
  "Returns full string definition for message of type 'Optimize-response"
  (cl:format cl:nil "bool success~%string message~%geometry_msgs/Twist cmd_vel~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Optimize-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd_vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Optimize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Optimize-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':cmd_vel (cmd_vel msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Optimize)))
  'Optimize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Optimize)))
  'Optimize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Optimize)))
  "Returns string type for a service object of type '<Optimize>"
  "hateb_local_planner/Optimize")