;; Auto-generated. Do not edit!


(when (boundp 'agent_path_prediction::PredictedPoses)
  (if (not (find-package "AGENT_PATH_PREDICTION"))
    (make-package "AGENT_PATH_PREDICTION"))
  (shadow 'PredictedPoses (find-package "AGENT_PATH_PREDICTION")))
(unless (find-package "AGENT_PATH_PREDICTION::PREDICTEDPOSES")
  (make-package "AGENT_PATH_PREDICTION::PREDICTEDPOSES"))

(in-package "ROS")
;;//! \htmlinclude PredictedPoses.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass agent_path_prediction::PredictedPoses
  :super ros::object
  :slots (_id _poses _start_velocity ))

(defmethod agent_path_prediction::PredictedPoses
  (:init
   (&key
    ((:id __id) 0)
    ((:poses __poses) ())
    ((:start_velocity __start_velocity) (instance geometry_msgs::TwistStamped :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _poses __poses)
   (setq _start_velocity __start_velocity)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:start_velocity
   (&rest __start_velocity)
   (if (keywordp (car __start_velocity))
       (send* _start_velocity __start_velocity)
     (progn
       (if __start_velocity (setq _start_velocity (car __start_velocity)))
       _start_velocity)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; geometry_msgs/PoseWithCovarianceStamped[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; geometry_msgs/TwistStamped _start_velocity
    (send _start_velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/PoseWithCovarianceStamped[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; geometry_msgs/TwistStamped _start_velocity
       (send _start_velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseWithCovarianceStamped[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseWithCovarianceStamped :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/TwistStamped _start_velocity
     (send _start_velocity :deserialize buf ptr-) (incf ptr- (send _start_velocity :serialization-length))
   ;;
   self)
  )

(setf (get agent_path_prediction::PredictedPoses :md5sum-) "0afc7ea8a06c2201607e4a9a3f48c060")
(setf (get agent_path_prediction::PredictedPoses :datatype-) "agent_path_prediction/PredictedPoses")
(setf (get agent_path_prediction::PredictedPoses :definition-)
      "int32                                       id
geometry_msgs/PoseWithCovarianceStamped[]   poses
geometry_msgs/TwistStamped                  start_velocity

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistStamped
# A twist with reference coordinate frame and timestamp
Header header
Twist twist

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3 linear
Vector3 angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :agent_path_prediction/PredictedPoses "0afc7ea8a06c2201607e4a9a3f48c060")


