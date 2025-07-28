;; Auto-generated. Do not edit!


(when (boundp 'cohan_msgs::AgentTrajectoryArray)
  (if (not (find-package "COHAN_MSGS"))
    (make-package "COHAN_MSGS"))
  (shadow 'AgentTrajectoryArray (find-package "COHAN_MSGS")))
(unless (find-package "COHAN_MSGS::AGENTTRAJECTORYARRAY")
  (make-package "COHAN_MSGS::AGENTTRAJECTORYARRAY"))

(in-package "ROS")
;;//! \htmlinclude AgentTrajectoryArray.msg.html


(defclass cohan_msgs::AgentTrajectoryArray
  :super ros::object
  :slots (_trajectories ))

(defmethod cohan_msgs::AgentTrajectoryArray
  (:init
   (&key
    ((:trajectories __trajectories) ())
    )
   (send-super :init)
   (setq _trajectories __trajectories)
   self)
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
    ;; cohan_msgs/AgentTrajectory[] _trajectories
    (apply #'+ (send-all _trajectories :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cohan_msgs/AgentTrajectory[] _trajectories
     (write-long (length _trajectories) s)
     (dolist (elem _trajectories)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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

(setf (get cohan_msgs::AgentTrajectoryArray :md5sum-) "bc752f4d73f4b5b2a3a6c7deb72dd0c9")
(setf (get cohan_msgs::AgentTrajectoryArray :datatype-) "cohan_msgs/AgentTrajectoryArray")
(setf (get cohan_msgs::AgentTrajectoryArray :definition-)
      "cohan_msgs/AgentTrajectory[] trajectories

================================================================================
MSG: cohan_msgs/AgentTrajectory
uint64                  id
int8                    type
cohan_msgs/Trajectory   trajectory

================================================================================
MSG: cohan_msgs/Trajectory
cohan_msgs/TrajectoryPoint[]     points

================================================================================
MSG: cohan_msgs/TrajectoryPoint
geometry_msgs/Pose          pose
geometry_msgs/Twist         velocity
duration                    time_from_start
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



(provide :cohan_msgs/AgentTrajectoryArray "bc752f4d73f4b5b2a3a6c7deb72dd0c9")


