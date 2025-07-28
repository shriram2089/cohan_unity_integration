; Auto-generated. Do not edit!


(cl:in-package hateb_local_planner-srv)


;//! \htmlinclude getPlanning-request.msg.html

(cl:defclass <getPlanning-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass getPlanning-request (<getPlanning-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getPlanning-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getPlanning-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hateb_local_planner-srv:<getPlanning-request> is deprecated: use hateb_local_planner-srv:getPlanning-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getPlanning-request>) ostream)
  "Serializes a message object of type '<getPlanning-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getPlanning-request>) istream)
  "Deserializes a message object of type '<getPlanning-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getPlanning-request>)))
  "Returns string type for a service object of type '<getPlanning-request>"
  "hateb_local_planner/getPlanningRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getPlanning-request)))
  "Returns string type for a service object of type 'getPlanning-request"
  "hateb_local_planner/getPlanningRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getPlanning-request>)))
  "Returns md5sum for a message object of type '<getPlanning-request>"
  "418c02483a8ca57215fb7b31c5c87234")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getPlanning-request)))
  "Returns md5sum for a message object of type 'getPlanning-request"
  "418c02483a8ca57215fb7b31c5c87234")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getPlanning-request>)))
  "Returns full string definition for message of type '<getPlanning-request>"
  (cl:format cl:nil "# get Planning mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getPlanning-request)))
  "Returns full string definition for message of type 'getPlanning-request"
  (cl:format cl:nil "# get Planning mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getPlanning-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getPlanning-request>))
  "Converts a ROS message object to a list"
  (cl:list 'getPlanning-request
))
;//! \htmlinclude getPlanning-response.msg.html

(cl:defclass <getPlanning-response> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass getPlanning-response (<getPlanning-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getPlanning-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getPlanning-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hateb_local_planner-srv:<getPlanning-response> is deprecated: use hateb_local_planner-srv:getPlanning-response instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <getPlanning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:mode-val is deprecated.  Use hateb_local_planner-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getPlanning-response>) ostream)
  "Serializes a message object of type '<getPlanning-response>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getPlanning-response>) istream)
  "Deserializes a message object of type '<getPlanning-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getPlanning-response>)))
  "Returns string type for a service object of type '<getPlanning-response>"
  "hateb_local_planner/getPlanningResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getPlanning-response)))
  "Returns string type for a service object of type 'getPlanning-response"
  "hateb_local_planner/getPlanningResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getPlanning-response>)))
  "Returns md5sum for a message object of type '<getPlanning-response>"
  "418c02483a8ca57215fb7b31c5c87234")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getPlanning-response)))
  "Returns md5sum for a message object of type 'getPlanning-response"
  "418c02483a8ca57215fb7b31c5c87234")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getPlanning-response>)))
  "Returns full string definition for message of type '<getPlanning-response>"
  (cl:format cl:nil "int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getPlanning-response)))
  "Returns full string definition for message of type 'getPlanning-response"
  (cl:format cl:nil "int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getPlanning-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getPlanning-response>))
  "Converts a ROS message object to a list"
  (cl:list 'getPlanning-response
    (cl:cons ':mode (mode msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'getPlanning)))
  'getPlanning-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'getPlanning)))
  'getPlanning-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getPlanning)))
  "Returns string type for a service object of type '<getPlanning>"
  "hateb_local_planner/getPlanning")