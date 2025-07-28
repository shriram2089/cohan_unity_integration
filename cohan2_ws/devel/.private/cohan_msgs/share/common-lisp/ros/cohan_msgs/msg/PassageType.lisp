; Auto-generated. Do not edit!


(cl:in-package cohan_msgs-msg)


;//! \htmlinclude PassageType.msg.html

(cl:defclass <PassageType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PassageType (<PassageType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PassageType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PassageType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cohan_msgs-msg:<PassageType> is deprecated: use cohan_msgs-msg:PassageType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PassageType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-msg:type-val is deprecated.  Use cohan_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PassageType>)))
    "Constants for message type '<PassageType>"
  '((:OPEN . 0)
    (:DOOR . 1)
    (:PILLAR . 2)
    (:WALL . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PassageType)))
    "Constants for message type 'PassageType"
  '((:OPEN . 0)
    (:DOOR . 1)
    (:PILLAR . 2)
    (:WALL . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PassageType>) ostream)
  "Serializes a message object of type '<PassageType>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PassageType>) istream)
  "Deserializes a message object of type '<PassageType>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PassageType>)))
  "Returns string type for a message object of type '<PassageType>"
  "cohan_msgs/PassageType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PassageType)))
  "Returns string type for a message object of type 'PassageType"
  "cohan_msgs/PassageType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PassageType>)))
  "Returns md5sum for a message object of type '<PassageType>"
  "13e6510bc35715bfa6e5fca9e28a30ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PassageType)))
  "Returns md5sum for a message object of type 'PassageType"
  "13e6510bc35715bfa6e5fca9e28a30ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PassageType>)))
  "Returns full string definition for message of type '<PassageType>"
  (cl:format cl:nil "int8 OPEN=0~%int8 DOOR=1~%int8 PILLAR=2~%int8 WALL=3~%~%int8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PassageType)))
  "Returns full string definition for message of type 'PassageType"
  (cl:format cl:nil "int8 OPEN=0~%int8 DOOR=1~%int8 PILLAR=2~%int8 WALL=3~%~%int8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PassageType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PassageType>))
  "Converts a ROS message object to a list"
  (cl:list 'PassageType
    (cl:cons ':type (type msg))
))
