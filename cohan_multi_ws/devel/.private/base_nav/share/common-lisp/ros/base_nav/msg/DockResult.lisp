; Auto-generated. Do not edit!


(cl:in-package base_nav-msg)


;//! \htmlinclude DockResult.msg.html

(cl:defclass <DockResult> (roslisp-msg-protocol:ros-message)
  ((error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (action_end
    :reader action_end
    :initarg :action_end
    :type cl:real
    :initform 0))
)

(cl:defclass DockResult (<DockResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_nav-msg:<DockResult> is deprecated: use base_nav-msg:DockResult instead.")))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <DockResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_nav-msg:error_code-val is deprecated.  Use base_nav-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'action_end-val :lambda-list '(m))
(cl:defmethod action_end-val ((m <DockResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_nav-msg:action_end-val is deprecated.  Use base_nav-msg:action_end instead.")
  (action_end m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DockResult>)))
    "Constants for message type '<DockResult>"
  '((:SUCCESS . 0)
    (:NO_MAP_TO_FOOTPRINT_TRANSFORM . -1)
    (:PREEMPTED . -2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DockResult)))
    "Constants for message type 'DockResult"
  '((:SUCCESS . 0)
    (:NO_MAP_TO_FOOTPRINT_TRANSFORM . -1)
    (:PREEMPTED . -2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockResult>) ostream)
  "Serializes a message object of type '<DockResult>"
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'action_end)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'action_end) (cl:floor (cl:slot-value msg 'action_end)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockResult>) istream)
  "Deserializes a message object of type '<DockResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_end) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockResult>)))
  "Returns string type for a message object of type '<DockResult>"
  "base_nav/DockResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockResult)))
  "Returns string type for a message object of type 'DockResult"
  "base_nav/DockResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockResult>)))
  "Returns md5sum for a message object of type '<DockResult>"
  "cc1f185eecc72325073f858a16abb3f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockResult)))
  "Returns md5sum for a message object of type 'DockResult"
  "cc1f185eecc72325073f858a16abb3f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockResult>)))
  "Returns full string definition for message of type '<DockResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 SUCCESS = 0~%int32 NO_MAP_TO_FOOTPRINT_TRANSFORM = -1~%int32 PREEMPTED = -2~%~%~%int32 error_code~%time action_end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockResult)))
  "Returns full string definition for message of type 'DockResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 SUCCESS = 0~%int32 NO_MAP_TO_FOOTPRINT_TRANSFORM = -1~%int32 PREEMPTED = -2~%~%~%int32 error_code~%time action_end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockResult>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DockResult
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':action_end (action_end msg))
))
