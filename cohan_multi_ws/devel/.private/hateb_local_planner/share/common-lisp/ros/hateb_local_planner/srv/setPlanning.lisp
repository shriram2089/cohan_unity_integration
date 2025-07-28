; Auto-generated. Do not edit!


(cl:in-package hateb_local_planner-srv)


;//! \htmlinclude setPlanning-request.msg.html

(cl:defclass <setPlanning-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass setPlanning-request (<setPlanning-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setPlanning-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setPlanning-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hateb_local_planner-srv:<setPlanning-request> is deprecated: use hateb_local_planner-srv:setPlanning-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <setPlanning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:mode-val is deprecated.  Use hateb_local_planner-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setPlanning-request>) ostream)
  "Serializes a message object of type '<setPlanning-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setPlanning-request>) istream)
  "Deserializes a message object of type '<setPlanning-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setPlanning-request>)))
  "Returns string type for a service object of type '<setPlanning-request>"
  "hateb_local_planner/setPlanningRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setPlanning-request)))
  "Returns string type for a service object of type 'setPlanning-request"
  "hateb_local_planner/setPlanningRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setPlanning-request>)))
  "Returns md5sum for a message object of type '<setPlanning-request>"
  "718da2351c63fdc303e9567a9bc6772c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setPlanning-request)))
  "Returns md5sum for a message object of type 'setPlanning-request"
  "718da2351c63fdc303e9567a9bc6772c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setPlanning-request>)))
  "Returns full string definition for message of type '<setPlanning-request>"
  (cl:format cl:nil "# Planning mode~%~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setPlanning-request)))
  "Returns full string definition for message of type 'setPlanning-request"
  (cl:format cl:nil "# Planning mode~%~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setPlanning-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setPlanning-request>))
  "Converts a ROS message object to a list"
  (cl:list 'setPlanning-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude setPlanning-response.msg.html

(cl:defclass <setPlanning-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass setPlanning-response (<setPlanning-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setPlanning-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setPlanning-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hateb_local_planner-srv:<setPlanning-response> is deprecated: use hateb_local_planner-srv:setPlanning-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <setPlanning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:success-val is deprecated.  Use hateb_local_planner-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <setPlanning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:message-val is deprecated.  Use hateb_local_planner-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setPlanning-response>) ostream)
  "Serializes a message object of type '<setPlanning-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setPlanning-response>) istream)
  "Deserializes a message object of type '<setPlanning-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setPlanning-response>)))
  "Returns string type for a service object of type '<setPlanning-response>"
  "hateb_local_planner/setPlanningResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setPlanning-response)))
  "Returns string type for a service object of type 'setPlanning-response"
  "hateb_local_planner/setPlanningResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setPlanning-response>)))
  "Returns md5sum for a message object of type '<setPlanning-response>"
  "718da2351c63fdc303e9567a9bc6772c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setPlanning-response)))
  "Returns md5sum for a message object of type 'setPlanning-response"
  "718da2351c63fdc303e9567a9bc6772c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setPlanning-response>)))
  "Returns full string definition for message of type '<setPlanning-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setPlanning-response)))
  "Returns full string definition for message of type 'setPlanning-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setPlanning-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setPlanning-response>))
  "Converts a ROS message object to a list"
  (cl:list 'setPlanning-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'setPlanning)))
  'setPlanning-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'setPlanning)))
  'setPlanning-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setPlanning)))
  "Returns string type for a service object of type '<setPlanning>"
  "hateb_local_planner/setPlanning")