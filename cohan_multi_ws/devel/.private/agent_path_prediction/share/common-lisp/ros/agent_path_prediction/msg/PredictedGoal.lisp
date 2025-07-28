; Auto-generated. Do not edit!


(cl:in-package agent_path_prediction-msg)


;//! \htmlinclude PredictedGoal.msg.html

(cl:defclass <PredictedGoal> (roslisp-msg-protocol:ros-message)
  ((changed
    :reader changed
    :initarg :changed
    :type cl:boolean
    :initform cl:nil)
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass PredictedGoal (<PredictedGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictedGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictedGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agent_path_prediction-msg:<PredictedGoal> is deprecated: use agent_path_prediction-msg:PredictedGoal instead.")))

(cl:ensure-generic-function 'changed-val :lambda-list '(m))
(cl:defmethod changed-val ((m <PredictedGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-msg:changed-val is deprecated.  Use agent_path_prediction-msg:changed instead.")
  (changed m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <PredictedGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent_path_prediction-msg:goal-val is deprecated.  Use agent_path_prediction-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictedGoal>) ostream)
  "Serializes a message object of type '<PredictedGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'changed) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictedGoal>) istream)
  "Deserializes a message object of type '<PredictedGoal>"
    (cl:setf (cl:slot-value msg 'changed) (cl:not (cl:zerop (cl:read-byte istream))))
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
  "b1011011ba3cf8056b5f0d10375a839d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictedGoal)))
  "Returns md5sum for a message object of type 'PredictedGoal"
  "b1011011ba3cf8056b5f0d10375a839d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictedGoal>)))
  "Returns full string definition for message of type '<PredictedGoal>"
  (cl:format cl:nil "bool                        changed~%geometry_msgs/PoseStamped   goal                                                       ~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictedGoal)))
  "Returns full string definition for message of type 'PredictedGoal"
  (cl:format cl:nil "bool                        changed~%geometry_msgs/PoseStamped   goal                                                       ~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictedGoal>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictedGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictedGoal
    (cl:cons ':changed (changed msg))
    (cl:cons ':goal (goal msg))
))
