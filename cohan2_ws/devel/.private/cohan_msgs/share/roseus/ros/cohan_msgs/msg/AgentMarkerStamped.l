;; Auto-generated. Do not edit!


(when (boundp 'cohan_msgs::AgentMarkerStamped)
  (if (not (find-package "COHAN_MSGS"))
    (make-package "COHAN_MSGS"))
  (shadow 'AgentMarkerStamped (find-package "COHAN_MSGS")))
(unless (find-package "COHAN_MSGS::AGENTMARKERSTAMPED")
  (make-package "COHAN_MSGS::AGENTMARKERSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude AgentMarkerStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cohan_msgs::AgentMarkerStamped
  :super ros::object
  :slots (_header _agent ))

(defmethod cohan_msgs::AgentMarkerStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:agent __agent) (instance cohan_msgs::AgentMarker :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _agent __agent)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:agent
   (&rest __agent)
   (if (keywordp (car __agent))
       (send* _agent __agent)
     (progn
       (if __agent (setq _agent (car __agent)))
       _agent)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cohan_msgs/AgentMarker _agent
    (send _agent :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cohan_msgs/AgentMarker _agent
       (send _agent :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cohan_msgs/AgentMarker _agent
     (send _agent :deserialize buf ptr-) (incf ptr- (send _agent :serialization-length))
   ;;
   self)
  )

(setf (get cohan_msgs::AgentMarkerStamped :md5sum-) "0285b2aa7ba6b65347e0ed226637a9ff")
(setf (get cohan_msgs::AgentMarkerStamped :datatype-) "cohan_msgs/AgentMarkerStamped")
(setf (get cohan_msgs::AgentMarkerStamped :definition-)
      "Header        header
cohan_msgs/AgentMarker   agent         

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
MSG: cohan_msgs/AgentMarker
uint64              id
bool                active
geometry_msgs/Pose  pose
geometry_msgs/Twist velocity

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



(provide :cohan_msgs/AgentMarkerStamped "0285b2aa7ba6b65347e0ed226637a9ff")


