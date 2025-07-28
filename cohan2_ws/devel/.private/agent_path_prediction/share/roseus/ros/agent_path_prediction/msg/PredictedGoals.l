;; Auto-generated. Do not edit!


(when (boundp 'agent_path_prediction::PredictedGoals)
  (if (not (find-package "AGENT_PATH_PREDICTION"))
    (make-package "AGENT_PATH_PREDICTION"))
  (shadow 'PredictedGoals (find-package "AGENT_PATH_PREDICTION")))
(unless (find-package "AGENT_PATH_PREDICTION::PREDICTEDGOALS")
  (make-package "AGENT_PATH_PREDICTION::PREDICTEDGOALS"))

(in-package "ROS")
;;//! \htmlinclude PredictedGoals.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agent_path_prediction::PredictedGoals
  :super ros::object
  :slots (_header _goals ))

(defmethod agent_path_prediction::PredictedGoals
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goals __goals) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _goals __goals)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goals
   (&rest __goals)
   (if (keywordp (car __goals))
       (send* _goals __goals)
     (progn
       (if __goals (setq _goals (car __goals)))
       _goals)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; agent_path_prediction/PredictedGoal[] _goals
    (apply #'+ (send-all _goals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; agent_path_prediction/PredictedGoal[] _goals
     (write-long (length _goals) s)
     (dolist (elem _goals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; agent_path_prediction/PredictedGoal[] _goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goals (let (r) (dotimes (i n) (push (instance agent_path_prediction::PredictedGoal :init) r)) r))
     (dolist (elem- _goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agent_path_prediction::PredictedGoals :md5sum-) "95cfdad36d575cd6c2bdeb6bf9876c1b")
(setf (get agent_path_prediction::PredictedGoals :datatype-) "agent_path_prediction/PredictedGoals")
(setf (get agent_path_prediction::PredictedGoals :definition-)
      "std_msgs/Header header
PredictedGoal[] goals
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
MSG: agent_path_prediction/PredictedGoal
int32                       id
geometry_msgs/Pose          goal                                                       

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



(provide :agent_path_prediction/PredictedGoals "95cfdad36d575cd6c2bdeb6bf9876c1b")


