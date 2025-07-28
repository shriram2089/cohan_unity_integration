; Auto-generated. Do not edit!


(cl:in-package agent_path_prediction-msg)


;//! \htmlinclude PredictedGoal.msg.html

(cl:defclass <PredictedGoal> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass PredictedGoal (<PredictedGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictedGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictedGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agent_path_prediction-msg:<PredictedGoal> is deprecated: use agent_path_prediction-msg:PredictedGoal instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PredictedGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-msg:id-val is deprecated.  Use agent_path_prediction-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <PredictedGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-msg:goal-val is deprecated.  Use agent_path_prediction-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictedGoal>) ostream)
  "Serializes a message object of type '<PredictedGoal>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictedGoal>) istream)
  "Deserializes a message object of type '<PredictedGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictedGoal>)))
  "Returns string type for a message object of type '<PredictedGoal>"
  "agent_path_prediction/PredictedGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictedGoal)))
  "Returns string type for a message object of type 'PredictedGoal"
  "agent_path_prediction/PredictedGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictedGoal>)))
  "Returns md5sum for a message object of type '<PredictedGoal>"
  "5b66795eb4fb429239b3af80e563eabc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictedGoal)))
  "Returns md5sum for a message object of type 'PredictedGoal"
  "5b66795eb4fb429239b3af80e563eabc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictedGoal>)))
  "Returns full string definition for message of type '<PredictedGoal>"
  (cl:format cl:nil "int32                       id~%geometry_msgs/Pose          goal                                                       ~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictedGoal)))
  "Returns full string definition for message of type 'PredictedGoal"
  (cl:format cl:nil "int32                       id~%geometry_msgs/Pose          goal                                                       ~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictedGoal>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictedGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictedGoal
    (cl:cons ':id (id msg))
    (cl:cons ':goal (goal msg))
))
