;; Auto-generated. Do not edit!


(when (boundp 'agent_path_prediction::PredictedGoal)
  (if (not (find-package "AGENT_PATH_PREDICTION"))
    (make-package "AGENT_PATH_PREDICTION"))
  (shadow 'PredictedGoal (find-package "AGENT_PATH_PREDICTION")))
(unless (find-package "AGENT_PATH_PREDICTION::PREDICTEDGOAL")
  (make-package "AGENT_PATH_PREDICTION::PREDICTEDGOAL"))

(in-package "ROS")
;;//! \htmlinclude PredictedGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass agent_path_prediction::PredictedGoal
  :super ros::object
  :slots (_changed _goal ))

(defmethod agent_path_prediction::PredictedGoal
  (:init
   (&key
    ((:changed __changed) nil)
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _changed __changed)
   (setq _goal __goal)
   self)
  (:changed
   (&optional (__changed :null))
   (if (not (eq __changed :null)) (setq _changed __changed)) _changed)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; bool _changed
    1
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _changed
       (if _changed (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _changed
     (setq _changed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get agent_path_prediction::PredictedGoal :md5sum-) "b1011011ba3cf8056b5f0d10375a839d")
(setf (get agent_path_prediction::PredictedGoal :datatype-) "agent_path_prediction/PredictedGoal")
(setf (get agent_path_prediction::PredictedGoal :definition-)
      "bool                        changed
geometry_msgs/PoseStamped   goal                                                       

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

")



(provide :agent_path_prediction/PredictedGoal "b1011011ba3cf8056b5f0d10375a839d")


