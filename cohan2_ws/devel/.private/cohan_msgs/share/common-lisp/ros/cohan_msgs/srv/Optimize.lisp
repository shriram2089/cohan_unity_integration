; Auto-generated. Do not edit!


(cl:in-package cohan_msgs-srv)


;//! \htmlinclude Optimize-request.msg.html

(cl:defclass <Optimize-request> (roslisp-msg-protocol:ros-message)
  ((robot_plan
    :reader robot_plan
    :initarg :robot_plan
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (agent_plan_array
    :reader agent_plan_array
    :initarg :agent_plan_array
    :type cohan_msgs-msg:AgentPathArray
    :initform (cl:make-instance 'cohan_msgs-msg:AgentPathArray))
   (agents_ids
    :reader agents_ids
    :initarg :agents_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Optimize-request (<Optimize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Optimize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Optimize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cohan_msgs-srv:<Optimize-request> is deprecated: use cohan_msgs-srv:Optimize-request instead.")))

(cl:ensure-generic-function 'robot_plan-val :lambda-list '(m))
(cl:defmethod robot_plan-val ((m <Optimize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-srv:robot_plan-val is deprecated.  Use cohan_msgs-srv:robot_plan instead.")
  (robot_plan m))

(cl:ensure-generic-function 'agent_plan_array-val :lambda-list '(m))
(cl:defmethod agent_plan_array-val ((m <Optimize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-srv:agent_plan_array-val is deprecated.  Use cohan_msgs-srv:agent_plan_array instead.")
  (agent_plan_array m))

(cl:ensure-generic-function 'agents_ids-val :lambda-list '(m))
(cl:defmethod agents_ids-val ((m <Optimize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-srv:agents_ids-val is deprecated.  Use cohan_msgs-srv:agents_ids instead.")
  (agents_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Optimize-request>) ostream)
  "Serializes a message object of type '<Optimize-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_plan) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'agent_plan_array) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'agents_ids))))
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
   (cl:slot-value msg 'agents_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Optimize-request>) istream)
  "Deserializes a message object of type '<Optimize-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_plan) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'agent_plan_array) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'agents_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'agents_ids)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Optimize-request>)))
  "Returns string type for a service object of type '<Optimize-request>"
  "cohan_msgs/OptimizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Optimize-request)))
  "Returns string type for a service object of type 'Optimize-request"
  "cohan_msgs/OptimizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Optimize-request>)))
  "Returns md5sum for a message object of type '<Optimize-request>"
  "268314f168a8e54386e219ff71892d27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Optimize-request)))
  "Returns md5sum for a message object of type 'Optimize-request"
  "268314f168a8e54386e219ff71892d27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Optimize-request>)))
  "Returns full string definition for message of type '<Optimize-request>"
  (cl:format cl:nil "# Get optimized timed elastic bands for given agents and robot plans~%~%nav_msgs/Path                   robot_plan~%cohan_msgs/AgentPathArray       agent_plan_array~%int64[]                         agents_ids~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: cohan_msgs/AgentPathArray~%std_msgs/Header         header~%cohan_msgs/AgentPath[]   paths~%~%================================================================================~%MSG: cohan_msgs/AgentPath~%std_msgs/Header  header~%uint64           id~%nav_msgs/Path    path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Optimize-request)))
  "Returns full string definition for message of type 'Optimize-request"
  (cl:format cl:nil "# Get optimized timed elastic bands for given agents and robot plans~%~%nav_msgs/Path                   robot_plan~%cohan_msgs/AgentPathArray       agent_plan_array~%int64[]                         agents_ids~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: cohan_msgs/AgentPathArray~%std_msgs/Header         header~%cohan_msgs/AgentPath[]   paths~%~%================================================================================~%MSG: cohan_msgs/AgentPath~%std_msgs/Header  header~%uint64           id~%nav_msgs/Path    path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Optimize-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_plan))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'agent_plan_array))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'agents_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Optimize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Optimize-request
    (cl:cons ':robot_plan (robot_plan msg))
    (cl:cons ':agent_plan_array (agent_plan_array msg))
    (cl:cons ':agents_ids (agents_ids msg))
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
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (robot_trajectory
    :reader robot_trajectory
    :initarg :robot_trajectory
    :type cohan_msgs-msg:Trajectory
    :initform (cl:make-instance 'cohan_msgs-msg:Trajectory))
   (human_trajectories
    :reader human_trajectories
    :initarg :human_trajectories
    :type cohan_msgs-msg:AgentTrajectoryArray
    :initform (cl:make-instance 'cohan_msgs-msg:AgentTrajectoryArray)))
)

(cl:defclass Optimize-response (<Optimize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Optimize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Optimize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cohan_msgs-srv:<Optimize-response> is deprecated: use cohan_msgs-srv:Optimize-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Optimize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-srv:success-val is deprecated.  Use cohan_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Optimize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-srv:message-val is deprecated.  Use cohan_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'cmd_vel-val :lambda-list '(m))
(cl:defmethod cmd_vel-val ((m <Optimize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-srv:cmd_vel-val is deprecated.  Use cohan_msgs-srv:cmd_vel instead.")
  (cmd_vel m))

(cl:ensure-generic-function 'robot_trajectory-val :lambda-list '(m))
(cl:defmethod robot_trajectory-val ((m <Optimize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-srv:robot_trajectory-val is deprecated.  Use cohan_msgs-srv:robot_trajectory instead.")
  (robot_trajectory m))

(cl:ensure-generic-function 'human_trajectories-val :lambda-list '(m))
(cl:defmethod human_trajectories-val ((m <Optimize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-srv:human_trajectories-val is deprecated.  Use cohan_msgs-srv:human_trajectories instead.")
  (human_trajectories m))
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_trajectory) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'human_trajectories) ostream)
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_trajectory) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'human_trajectories) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Optimize-response>)))
  "Returns string type for a service object of type '<Optimize-response>"
  "cohan_msgs/OptimizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Optimize-response)))
  "Returns string type for a service object of type 'Optimize-response"
  "cohan_msgs/OptimizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Optimize-response>)))
  "Returns md5sum for a message object of type '<Optimize-response>"
  "268314f168a8e54386e219ff71892d27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Optimize-response)))
  "Returns md5sum for a message object of type 'Optimize-response"
  "268314f168a8e54386e219ff71892d27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Optimize-response>)))
  "Returns full string definition for message of type '<Optimize-response>"
  (cl:format cl:nil "bool                            success~%string                          message~%geometry_msgs/Twist             cmd_vel~%cohan_msgs/Trajectory           robot_trajectory~%cohan_msgs/AgentTrajectoryArray human_trajectories~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: cohan_msgs/Trajectory~%cohan_msgs/TrajectoryPoint[]     points~%~%================================================================================~%MSG: cohan_msgs/TrajectoryPoint~%geometry_msgs/Pose          pose~%geometry_msgs/Twist         velocity~%duration                    time_from_start~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: cohan_msgs/AgentTrajectoryArray~%cohan_msgs/AgentTrajectory[] trajectories~%~%================================================================================~%MSG: cohan_msgs/AgentTrajectory~%uint64                  id~%int8                    type~%cohan_msgs/Trajectory   trajectory~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Optimize-response)))
  "Returns full string definition for message of type 'Optimize-response"
  (cl:format cl:nil "bool                            success~%string                          message~%geometry_msgs/Twist             cmd_vel~%cohan_msgs/Trajectory           robot_trajectory~%cohan_msgs/AgentTrajectoryArray human_trajectories~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: cohan_msgs/Trajectory~%cohan_msgs/TrajectoryPoint[]     points~%~%================================================================================~%MSG: cohan_msgs/TrajectoryPoint~%geometry_msgs/Pose          pose~%geometry_msgs/Twist         velocity~%duration                    time_from_start~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: cohan_msgs/AgentTrajectoryArray~%cohan_msgs/AgentTrajectory[] trajectories~%~%================================================================================~%MSG: cohan_msgs/AgentTrajectory~%uint64                  id~%int8                    type~%cohan_msgs/Trajectory   trajectory~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Optimize-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_trajectory))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'human_trajectories))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Optimize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Optimize-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':cmd_vel (cmd_vel msg))
    (cl:cons ':robot_trajectory (robot_trajectory msg))
    (cl:cons ':human_trajectories (human_trajectories msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Optimize)))
  'Optimize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Optimize)))
  'Optimize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Optimize)))
  "Returns string type for a service object of type '<Optimize>"
  "cohan_msgs/Optimize")