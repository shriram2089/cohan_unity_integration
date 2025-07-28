; Auto-generated. Do not edit!


(cl:in-package hateb_local_planner-msg)


;//! \htmlinclude PlanningMode.msg.html

(cl:defclass <PlanningMode> (roslisp-msg-protocol:ros-message)
  ((plan_mode
    :reader plan_mode
    :initarg :plan_mode
    :type cl:fixnum
    :initform 0)
   (predict_mode
    :reader predict_mode
    :initarg :predict_mode
    :type cl:fixnum
    :initform 0)
   (moving_humans
    :reader moving_humans
    :initarg :moving_humans
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (still_humans
    :reader still_humans
    :initarg :still_humans
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass PlanningMode (<PlanningMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hateb_local_planner-msg:<PlanningMode> is deprecated: use hateb_local_planner-msg:PlanningMode instead.")))

(cl:ensure-generic-function 'plan_mode-val :lambda-list '(m))
(cl:defmethod plan_mode-val ((m <PlanningMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-msg:plan_mode-val is deprecated.  Use hateb_local_planner-msg:plan_mode instead.")
  (plan_mode m))

(cl:ensure-generic-function 'predict_mode-val :lambda-list '(m))
(cl:defmethod predict_mode-val ((m <PlanningMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-msg:predict_mode-val is deprecated.  Use hateb_local_planner-msg:predict_mode instead.")
  (predict_mode m))

(cl:ensure-generic-function 'moving_humans-val :lambda-list '(m))
(cl:defmethod moving_humans-val ((m <PlanningMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-msg:moving_humans-val is deprecated.  Use hateb_local_planner-msg:moving_humans instead.")
  (moving_humans m))

(cl:ensure-generic-function 'still_humans-val :lambda-list '(m))
(cl:defmethod still_humans-val ((m <PlanningMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-msg:still_humans-val is deprecated.  Use hateb_local_planner-msg:still_humans instead.")
  (still_humans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningMode>) ostream)
  "Serializes a message object of type '<PlanningMode>"
  (cl:let* ((signed (cl:slot-value msg 'plan_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'predict_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'moving_humans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'moving_humans))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'still_humans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'still_humans))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningMode>) istream)
  "Deserializes a message object of type '<PlanningMode>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plan_mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'predict_mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'moving_humans) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'moving_humans)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'still_humans) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'still_humans)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningMode>)))
  "Returns string type for a message object of type '<PlanningMode>"
  "hateb_local_planner/PlanningMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningMode)))
  "Returns string type for a message object of type 'PlanningMode"
  "hateb_local_planner/PlanningMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningMode>)))
  "Returns md5sum for a message object of type '<PlanningMode>"
  "ee45c05d7fb63156ab0e68657c7bc8e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningMode)))
  "Returns md5sum for a message object of type 'PlanningMode"
  "ee45c05d7fb63156ab0e68657c7bc8e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningMode>)))
  "Returns full string definition for message of type '<PlanningMode>"
  (cl:format cl:nil "int8    plan_mode~%int8    predict_mode~%int32[] moving_humans~%int32[] still_humans~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningMode)))
  "Returns full string definition for message of type 'PlanningMode"
  (cl:format cl:nil "int8    plan_mode~%int8    predict_mode~%int32[] moving_humans~%int32[] still_humans~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningMode>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'moving_humans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'still_humans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningMode>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningMode
    (cl:cons ':plan_mode (plan_mode msg))
    (cl:cons ':predict_mode (predict_mode msg))
    (cl:cons ':moving_humans (moving_humans msg))
    (cl:cons ':still_humans (still_humans msg))
))
