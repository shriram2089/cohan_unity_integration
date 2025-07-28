; Auto-generated. Do not edit!


(cl:in-package hateb_local_planner-srv)


;//! \htmlinclude Approach-request.msg.html

(cl:defclass <Approach-request> (roslisp-msg-protocol:ros-message)
  ((agent_id
    :reader agent_id
    :initarg :agent_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Approach-request (<Approach-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Approach-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Approach-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hateb_local_planner-srv:<Approach-request> is deprecated: use hateb_local_planner-srv:Approach-request instead.")))

(cl:ensure-generic-function 'agent_id-val :lambda-list '(m))
(cl:defmethod agent_id-val ((m <Approach-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:agent_id-val is deprecated.  Use hateb_local_planner-srv:agent_id instead.")
  (agent_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Approach-request>) ostream)
  "Serializes a message object of type '<Approach-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'agent_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'agent_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'agent_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'agent_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'agent_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'agent_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Approach-request>) istream)
  "Deserializes a message object of type '<Approach-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'agent_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'agent_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'agent_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'agent_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'agent_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'agent_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Approach-request>)))
  "Returns string type for a service object of type '<Approach-request>"
  "hateb_local_planner/ApproachRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Approach-request)))
  "Returns string type for a service object of type 'Approach-request"
  "hateb_local_planner/ApproachRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Approach-request>)))
  "Returns md5sum for a message object of type '<Approach-request>"
  "199a24b4d2ab7be80f7fdf2e5958eec5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Approach-request)))
  "Returns md5sum for a message object of type 'Approach-request"
  "199a24b4d2ab7be80f7fdf2e5958eec5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Approach-request>)))
  "Returns full string definition for message of type '<Approach-request>"
  (cl:format cl:nil "# Start approach behavior~%~%uint64 agent_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Approach-request)))
  "Returns full string definition for message of type 'Approach-request"
  (cl:format cl:nil "# Start approach behavior~%~%uint64 agent_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Approach-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Approach-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Approach-request
    (cl:cons ':agent_id (agent_id msg))
))
;//! \htmlinclude Approach-response.msg.html

(cl:defclass <Approach-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Approach-response (<Approach-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Approach-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Approach-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hateb_local_planner-srv:<Approach-response> is deprecated: use hateb_local_planner-srv:Approach-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Approach-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:success-val is deprecated.  Use hateb_local_planner-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Approach-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hateb_local_planner-srv:message-val is deprecated.  Use hateb_local_planner-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Approach-response>) ostream)
  "Serializes a message object of type '<Approach-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Approach-response>) istream)
  "Deserializes a message object of type '<Approach-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Approach-response>)))
  "Returns string type for a service object of type '<Approach-response>"
  "hateb_local_planner/ApproachResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Approach-response)))
  "Returns string type for a service object of type 'Approach-response"
  "hateb_local_planner/ApproachResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Approach-response>)))
  "Returns md5sum for a message object of type '<Approach-response>"
  "199a24b4d2ab7be80f7fdf2e5958eec5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Approach-response)))
  "Returns md5sum for a message object of type 'Approach-response"
  "199a24b4d2ab7be80f7fdf2e5958eec5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Approach-response>)))
  "Returns full string definition for message of type '<Approach-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Approach-response)))
  "Returns full string definition for message of type 'Approach-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Approach-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Approach-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Approach-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Approach)))
  'Approach-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Approach)))
  'Approach-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Approach)))
  "Returns string type for a service object of type '<Approach>"
  "hateb_local_planner/Approach")