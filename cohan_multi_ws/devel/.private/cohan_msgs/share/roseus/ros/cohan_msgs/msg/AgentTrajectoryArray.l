;; Auto-generated. Do not edit!


(when (boundp 'cohan_msgs::AgentTrajectoryArray)
  (if (not (find-package "COHAN_MSGS"))
    (make-package "COHAN_MSGS"))
  (shadow 'AgentTrajectoryArray (find-package "COHAN_MSGS")))
(unless (find-package "COHAN_MSGS::AGENTTRAJECTORYARRAY")
  (make-package "COHAN_MSGS::AGENTTRAJECTORYARRAY"))

(in-package "ROS")
;;//! \htmlinclude AgentTrajectoryArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cohan_msgs::AgentTrajectoryArray
  :super ros::object
  :slots (_header _trajectories ))

(defmethod cohan_msgs::AgentTrajectoryArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trajectories __trajectories) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _trajectories __trajectories)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trajectories
   (&rest __trajectories)
   (if (keywordp (car __trajectories))
       (send* _trajectories __trajectories)
     (progn
       (if __trajectories (setq _trajectories (car __trajectories)))
       _trajectories)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cohan_msgs/AgentTrajectory[] _trajectories
    (apply #'+ (send-all _trajectories :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cohan_msgs/AgentTrajectory[] _trajectories
     (write-long (length _trajectories) s)
     (dolist (elem _trajectories)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cohan_msgs/AgentTrajectory[] _trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectories (let (r) (dotimes (i n) (push (instance cohan_msgs::AgentTrajectory :init) r)) r))
     (dolist (elem- _trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cohan_msgs::AgentTrajectoryArray :md5sum-) "e595d06f1b4574be3148fbd5def9f2c3")
(setf (get cohan_msgs::AgentTrajectoryArray :datatype-) "cohan_msgs/AgentTrajectoryArray")
(setf (get cohan_msgs::AgentTrajectoryArray :definition-)
      "std_msgs/Header             header
cohan_msgs/AgentTrajectory[] trajectories

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
MSG: cohan_msgs/AgentTrajectory
std_msgs/Header         header
uint64                  id
int8                    type
cohan_msgs/Trajectory    trajectory

================================================================================
MSG: cohan_msgs/Trajectory
std_msgs/Header                  header
cohan_msgs/TrajectoryPoint[]     points

================================================================================
MSG: cohan_msgs/TrajectoryPoint
geometry_msgs/Transform     transform
geometry_msgs/Twist         velocity
geometry_msgs/Twist         acceleration
duration                    time_from_start
================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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

")



(provide :cohan_msgs/AgentTrajectoryArray "e595d06f1b4574be3148fbd5def9f2c3")


