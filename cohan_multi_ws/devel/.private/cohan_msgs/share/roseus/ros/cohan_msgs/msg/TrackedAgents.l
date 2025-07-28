;; Auto-generated. Do not edit!


(when (boundp 'cohan_msgs::TrackedAgents)
  (if (not (find-package "COHAN_MSGS"))
    (make-package "COHAN_MSGS"))
  (shadow 'TrackedAgents (find-package "COHAN_MSGS")))
(unless (find-package "COHAN_MSGS::TRACKEDAGENTS")
  (make-package "COHAN_MSGS::TRACKEDAGENTS"))

(in-package "ROS")
;;//! \htmlinclude TrackedAgents.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cohan_msgs::TrackedAgents
  :super ros::object
  :slots (_header _agents ))

(defmethod cohan_msgs::TrackedAgents
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:agents __agents) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _agents __agents)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:agents
   (&rest __agents)
   (if (keywordp (car __agents))
       (send* _agents __agents)
     (progn
       (if __agents (setq _agents (car __agents)))
       _agents)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cohan_msgs/TrackedAgent[] _agents
    (apply #'+ (send-all _agents :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cohan_msgs/TrackedAgent[] _agents
     (write-long (length _agents) s)
     (dolist (elem _agents)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cohan_msgs/TrackedAgent[] _agents
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _agents (let (r) (dotimes (i n) (push (instance cohan_msgs::TrackedAgent :init) r)) r))
     (dolist (elem- _agents)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cohan_msgs::TrackedAgents :md5sum-) "fc1cf2007c31152542d2c6c79f8fd329")
(setf (get cohan_msgs::TrackedAgents :datatype-) "cohan_msgs/TrackedAgents")
(setf (get cohan_msgs::TrackedAgents :definition-)
      "Header                         header
cohan_msgs/TrackedAgent[]      agents

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
MSG: cohan_msgs/TrackedAgent
# states
int8 STATIC=0
int8 MOVING=1
int8 STOPPED=2
int8 BLOCKED=3

uint64              track_id
int8                state
int8                type
string              name
TrackedSegment[]    segments

================================================================================
MSG: cohan_msgs/TrackedSegment
int8                                type
geometry_msgs/PoseWithCovariance    pose
geometry_msgs/TwistWithCovariance   twist
geometry_msgs/AccelWithCovariance   accel

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
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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
================================================================================
MSG: geometry_msgs/AccelWithCovariance
# This expresses acceleration in free space with uncertainty.

Accel accel

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :cohan_msgs/TrackedAgents "fc1cf2007c31152542d2c6c79f8fd329")


