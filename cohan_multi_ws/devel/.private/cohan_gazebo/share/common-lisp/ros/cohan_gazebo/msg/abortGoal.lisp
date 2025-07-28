; Auto-generated. Do not edit!


(cl:in-package cohan_gazebo-msg)


;//! \htmlinclude abortGoal.msg.html

(cl:defclass <abortGoal> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (abort
    :reader abort
    :initarg :abort
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass abortGoal (<abortGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <abortGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'abortGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cohan_gazebo-msg:<abortGoal> is deprecated: use cohan_gazebo-msg:abortGoal instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <abortGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_gazebo-msg:id-val is deprecated.  Use cohan_gazebo-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'abort-val :lambda-list '(m))
(cl:defmethod abort-val ((m <abortGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_gazebo-msg:abort-val is deprecated.  Use cohan_gazebo-msg:abort instead.")
  (abort m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <abortGoal>) ostream)
  "Serializes a message object of type '<abortGoal>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'abort) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <abortGoal>) istream)
  "Deserializes a message object of type '<abortGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'abort) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<abortGoal>)))
  "Returns string type for a message object of type '<abortGoal>"
  "cohan_gazebo/abortGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'abortGoal)))
  "Returns string type for a message object of type 'abortGoal"
  "cohan_gazebo/abortGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<abortGoal>)))
  "Returns md5sum for a message object of type '<abortGoal>"
  "ffb97e617eff82b1230d865ebbca3985")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'abortGoal)))
  "Returns md5sum for a message object of type 'abortGoal"
  "ffb97e617eff82b1230d865ebbca3985")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<abortGoal>)))
  "Returns full string definition for message of type '<abortGoal>"
  (cl:format cl:nil "int64         id~%std_msgs/Bool abort~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'abortGoal)))
  "Returns full string definition for message of type 'abortGoal"
  (cl:format cl:nil "int64         id~%std_msgs/Bool abort~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <abortGoal>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'abort))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <abortGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'abortGoal
    (cl:cons ':id (id msg))
    (cl:cons ':abort (abort msg))
))
