; Auto-generated. Do not edit!


(cl:in-package agent_path_prediction-msg)


;//! \htmlinclude HumanInfo.msg.html

(cl:defclass <HumanInfo> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (dist
    :reader dist
    :initarg :dist
    :type cl:float
    :initform 0.0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass HumanInfo (<HumanInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agent_path_prediction-msg:<HumanInfo> is deprecated: use agent_path_prediction-msg:HumanInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <HumanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-msg:id-val is deprecated.  Use agent_path_prediction-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <HumanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-msg:state-val is deprecated.  Use agent_path_prediction-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <HumanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-msg:dist-val is deprecated.  Use agent_path_prediction-msg:dist instead.")
  (dist m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <HumanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-msg:name-val is deprecated.  Use agent_path_prediction-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanInfo>) ostream)
  "Serializes a message object of type '<HumanInfo>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanInfo>) istream)
  "Deserializes a message object of type '<HumanInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanInfo>)))
  "Returns string type for a message object of type '<HumanInfo>"
  "agent_path_prediction/HumanInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanInfo)))
  "Returns string type for a message object of type 'HumanInfo"
  "agent_path_prediction/HumanInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanInfo>)))
  "Returns md5sum for a message object of type '<HumanInfo>"
  "f9b027edfb328a8dba300480146782d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanInfo)))
  "Returns md5sum for a message object of type 'HumanInfo"
  "f9b027edfb328a8dba300480146782d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanInfo>)))
  "Returns full string definition for message of type '<HumanInfo>"
  (cl:format cl:nil "int32   id~%int8    state~%float32 dist~%string  name~%# geometry_msgs/Twist vel                    ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanInfo)))
  "Returns full string definition for message of type 'HumanInfo"
  (cl:format cl:nil "int32   id~%int8    state~%float32 dist~%string  name~%# geometry_msgs/Twist vel                    ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanInfo>))
  (cl:+ 0
     4
     1
     4
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanInfo
    (cl:cons ':id (id msg))
    (cl:cons ':state (state msg))
    (cl:cons ':dist (dist msg))
    (cl:cons ':name (name msg))
))
