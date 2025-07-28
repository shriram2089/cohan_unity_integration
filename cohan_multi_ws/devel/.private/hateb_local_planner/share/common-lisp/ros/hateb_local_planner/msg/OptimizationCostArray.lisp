; Auto-generated. Do not edit!


(cl:in-package hateb_local_planner-msg)


;//! \htmlinclude OptimizationCostArray.msg.html

(cl:defclass <OptimizationCostArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (costs
    :reader costs
    :initarg :costs
    :type (cl:vector hateb_local_planner-msg:OptimizationCost)
   :initform (cl:make-array 0 :element-type 'hateb_local_planner-msg:OptimizationCost :initial-element (cl:make-instance 'hateb_local_planner-msg:OptimizationCost))))
)

(cl:defclass OptimizationCostArray (<OptimizationCostArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OptimizationCostArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OptimizationCostArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hateb_local_planner-msg:<OptimizationCostArray> is deprecated: use hateb_local_planner-msg:OptimizationCostArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OptimizationCostArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-msg:header-val is deprecated.  Use hateb_local_planner-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'costs-val :lambda-list '(m))
(cl:defmethod costs-val ((m <OptimizationCostArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-msg:costs-val is deprecated.  Use hateb_local_planner-msg:costs instead.")
  (costs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OptimizationCostArray>) ostream)
  "Serializes a message object of type '<OptimizationCostArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'costs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'costs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OptimizationCostArray>) istream)
  "Deserializes a message object of type '<OptimizationCostArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'costs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'costs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hateb_local_planner-msg:OptimizationCost))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OptimizationCostArray>)))
  "Returns string type for a message object of type '<OptimizationCostArray>"
  "hateb_local_planner/OptimizationCostArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OptimizationCostArray)))
  "Returns string type for a message object of type 'OptimizationCostArray"
  "hateb_local_planner/OptimizationCostArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OptimizationCostArray>)))
  "Returns md5sum for a message object of type '<OptimizationCostArray>"
  "6278d232d18141b2ca3d171f8cdec014")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OptimizationCostArray)))
  "Returns md5sum for a message object of type 'OptimizationCostArray"
  "6278d232d18141b2ca3d171f8cdec014")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OptimizationCostArray>)))
  "Returns full string definition for message of type '<OptimizationCostArray>"
  (cl:format cl:nil "std_msgs/Header header~%hateb_local_planner/OptimizationCost[] costs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hateb_local_planner/OptimizationCost~%# cost types~%int8 TIME_OPTIMALITY=0~%int8 KINEMATIC_DD=1~%int8 KINEMATIC_CL=2~%int8 ROBOT_VEL=3~%int8 AGENT_VEL=4~%int8 ROBOT_ACC=5~%int8 AGENT_ACC=6~%int8 OBSTACLE=7~%int8 DYNAMIC_OBSTACLE=8~%int8 VIA_POINT=9~%int8 AGENT_ROBOT_SAFETY=10~%int8 AGENT_AGENT_SAFETY=11~%int8 AGENT_ROBOT_TTC=12~%int8 AGENT_ROBOT_REL_VEL=13~%int8 AGENT_ROBOT_MIN_DIST=14~%int8 AGENT_ROBOT_VISIBILITY=15~%int8 AGENT_ROBOT_TTClosest=16~%int8 AGENT_ROBOT_TTCplus=17~%~%int8    type~%float64 cost~%float64[] costs_arr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OptimizationCostArray)))
  "Returns full string definition for message of type 'OptimizationCostArray"
  (cl:format cl:nil "std_msgs/Header header~%hateb_local_planner/OptimizationCost[] costs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hateb_local_planner/OptimizationCost~%# cost types~%int8 TIME_OPTIMALITY=0~%int8 KINEMATIC_DD=1~%int8 KINEMATIC_CL=2~%int8 ROBOT_VEL=3~%int8 AGENT_VEL=4~%int8 ROBOT_ACC=5~%int8 AGENT_ACC=6~%int8 OBSTACLE=7~%int8 DYNAMIC_OBSTACLE=8~%int8 VIA_POINT=9~%int8 AGENT_ROBOT_SAFETY=10~%int8 AGENT_AGENT_SAFETY=11~%int8 AGENT_ROBOT_TTC=12~%int8 AGENT_ROBOT_REL_VEL=13~%int8 AGENT_ROBOT_MIN_DIST=14~%int8 AGENT_ROBOT_VISIBILITY=15~%int8 AGENT_ROBOT_TTClosest=16~%int8 AGENT_ROBOT_TTCplus=17~%~%int8    type~%float64 cost~%float64[] costs_arr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OptimizationCostArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'costs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OptimizationCostArray>))
  "Converts a ROS message object to a list"
  (cl:list 'OptimizationCostArray
    (cl:cons ':header (header msg))
    (cl:cons ':costs (costs msg))
))
