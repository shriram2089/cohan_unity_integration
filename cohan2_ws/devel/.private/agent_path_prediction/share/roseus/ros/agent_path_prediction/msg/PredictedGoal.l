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
  :slots (_id _goal ))

(defmethod agent_path_prediction::PredictedGoal
  (:init
   (&key
    ((:id __id) 0)
    ((:goal __goal) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _goal __goal)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
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
    ;; int32 _id
    4
    ;; geometry_msgs/Pose _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/Pose _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get agent_path_prediction::PredictedGoal :md5sum-) "5b66795eb4fb429239b3af80e563eabc")
(setf (get agent_path_prediction::PredictedGoal :datatype-) "agent_path_prediction/PredictedGoal")
(setf (get agent_path_prediction::PredictedGoal :definition-)
      "int32                       id
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



(provide :agent_path_prediction/PredictedGoal "5b66795eb4fb429239b3af80e563eabc")


