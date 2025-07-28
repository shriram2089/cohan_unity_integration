; Auto-generated. Do not edit!


(cl:in-package hateb_local_planner-msg)


;//! \htmlinclude OptimizationCost.msg.html

(cl:defclass <OptimizationCost> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (cost
    :reader cost
    :initarg :cost
    :type cl:float
    :initform 0.0)
   (costs_arr
    :reader costs_arr
    :initarg :costs_arr
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass OptimizationCost (<OptimizationCost>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OptimizationCost>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OptimizationCost)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hateb_local_planner-msg:<OptimizationCost> is deprecated: use hateb_local_planner-msg:OptimizationCost instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <OptimizationCost>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-msg:type-val is deprecated.  Use hateb_local_planner-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'cost-val :lambda-list '(m))
(cl:defmethod cost-val ((m <OptimizationCost>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-msg:cost-val is deprecated.  Use hateb_local_planner-msg:cost instead.")
  (cost m))

(cl:ensure-generic-function 'costs_arr-val :lambda-list '(m))
(cl:defmethod costs_arr-val ((m <OptimizationCost>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-msg:costs_arr-val is deprecated.  Use hateb_local_planner-msg:costs_arr instead.")
  (costs_arr m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OptimizationCost>)))
    "Constants for message type '<OptimizationCost>"
  '((:TIME_OPTIMALITY . 0)
    (:KINEMATIC_DD . 1)
    (:KINEMATIC_CL . 2)
    (:ROBOT_VEL . 3)
    (:AGENT_VEL . 4)
    (:ROBOT_ACC . 5)
    (:AGENT_ACC . 6)
    (:OBSTACLE . 7)
    (:DYNAMIC_OBSTACLE . 8)
    (:VIA_POINT . 9)
    (:AGENT_ROBOT_SAFETY . 10)
    (:AGENT_AGENT_SAFETY . 11)
    (:AGENT_ROBOT_REL_VEL . 12)
    (:AGENT_ROBOT_MIN_DIST . 13)
    (:AGENT_ROBOT_VISIBILITY . 14))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OptimizationCost)))
    "Constants for message type 'OptimizationCost"
  '((:TIME_OPTIMALITY . 0)
    (:KINEMATIC_DD . 1)
    (:KINEMATIC_CL . 2)
    (:ROBOT_VEL . 3)
    (:AGENT_VEL . 4)
    (:ROBOT_ACC . 5)
    (:AGENT_ACC . 6)
    (:OBSTACLE . 7)
    (:DYNAMIC_OBSTACLE . 8)
    (:VIA_POINT . 9)
    (:AGENT_ROBOT_SAFETY . 10)
    (:AGENT_AGENT_SAFETY . 11)
    (:AGENT_ROBOT_REL_VEL . 12)
    (:AGENT_ROBOT_MIN_DIST . 13)
    (:AGENT_ROBOT_VISIBILITY . 14))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OptimizationCost>) ostream)
  "Serializes a message object of type '<OptimizationCost>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'costs_arr))))
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
   (cl:slot-value msg 'costs_arr))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OptimizationCost>) istream)
  "Deserializes a message object of type '<OptimizationCost>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cost) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'costs_arr) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'costs_arr)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OptimizationCost>)))
  "Returns string type for a message object of type '<OptimizationCost>"
  "hateb_local_planner/OptimizationCost")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OptimizationCost)))
  "Returns string type for a message object of type 'OptimizationCost"
  "hateb_local_planner/OptimizationCost")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OptimizationCost>)))
  "Returns md5sum for a message object of type '<OptimizationCost>"
  "81613154d523b741089674efed4b6e94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OptimizationCost)))
  "Returns md5sum for a message object of type 'OptimizationCost"
  "81613154d523b741089674efed4b6e94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OptimizationCost>)))
  "Returns full string definition for message of type '<OptimizationCost>"
  (cl:format cl:nil "# cost types~%int8 TIME_OPTIMALITY=0~%int8 KINEMATIC_DD=1~%int8 KINEMATIC_CL=2~%int8 ROBOT_VEL=3~%int8 AGENT_VEL=4~%int8 ROBOT_ACC=5~%int8 AGENT_ACC=6~%int8 OBSTACLE=7~%int8 DYNAMIC_OBSTACLE=8~%int8 VIA_POINT=9~%int8 AGENT_ROBOT_SAFETY=10~%int8 AGENT_AGENT_SAFETY=11~%int8 AGENT_ROBOT_REL_VEL=12~%int8 AGENT_ROBOT_MIN_DIST=13~%int8 AGENT_ROBOT_VISIBILITY=14~%~%int8    type~%float64 cost~%float64[] costs_arr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OptimizationCost)))
  "Returns full string definition for message of type 'OptimizationCost"
  (cl:format cl:nil "# cost types~%int8 TIME_OPTIMALITY=0~%int8 KINEMATIC_DD=1~%int8 KINEMATIC_CL=2~%int8 ROBOT_VEL=3~%int8 AGENT_VEL=4~%int8 ROBOT_ACC=5~%int8 AGENT_ACC=6~%int8 OBSTACLE=7~%int8 DYNAMIC_OBSTACLE=8~%int8 VIA_POINT=9~%int8 AGENT_ROBOT_SAFETY=10~%int8 AGENT_AGENT_SAFETY=11~%int8 AGENT_ROBOT_REL_VEL=12~%int8 AGENT_ROBOT_MIN_DIST=13~%int8 AGENT_ROBOT_VISIBILITY=14~%~%int8    type~%float64 cost~%float64[] costs_arr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OptimizationCost>))
  (cl:+ 0
     1
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'costs_arr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OptimizationCost>))
  "Converts a ROS message object to a list"
  (cl:list 'OptimizationCost
    (cl:cons ':type (type msg))
    (cl:cons ':cost (cost msg))
    (cl:cons ':costs_arr (costs_arr msg))
))
