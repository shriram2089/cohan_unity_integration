;; Auto-generated. Do not edit!


(when (boundp 'agent_path_prediction::AgentsInfo)
  (if (not (find-package "AGENT_PATH_PREDICTION"))
    (make-package "AGENT_PATH_PREDICTION"))
  (shadow 'AgentsInfo (find-package "AGENT_PATH_PREDICTION")))
(unless (find-package "AGENT_PATH_PREDICTION::AGENTSINFO")
  (make-package "AGENT_PATH_PREDICTION::AGENTSINFO"))

(in-package "ROS")
;;//! \htmlinclude AgentsInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass agent_path_prediction::AgentsInfo
  :super ros::object
  :slots (_humans _visible _still _moving _robot_pose ))

(defmethod agent_path_prediction::AgentsInfo
  (:init
   (&key
    ((:humans __humans) ())
    ((:visible __visible) (make-array 0 :initial-element 0 :element-type :integer))
    ((:still __still) (make-array 0 :initial-element 0 :element-type :integer))
    ((:moving __moving) (make-array 0 :initial-element 0 :element-type :integer))
    ((:robot_pose __robot_pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _humans __humans)
   (setq _visible __visible)
   (setq _still __still)
   (setq _moving __moving)
   (setq _robot_pose __robot_pose)
   self)
  (:humans
   (&rest __humans)
   (if (keywordp (car __humans))
       (send* _humans __humans)
     (progn
       (if __humans (setq _humans (car __humans)))
       _humans)))
  (:visible
   (&optional __visible)
   (if __visible (setq _visible __visible)) _visible)
  (:still
   (&optional __still)
   (if __still (setq _still __still)) _still)
  (:moving
   (&optional __moving)
   (if __moving (setq _moving __moving)) _moving)
  (:robot_pose
   (&rest __robot_pose)
   (if (keywordp (car __robot_pose))
       (send* _robot_pose __robot_pose)
     (progn
       (if __robot_pose (setq _robot_pose (car __robot_pose)))
       _robot_pose)))
  (:serialization-length
   ()
   (+
    ;; agent_path_prediction/HumanInfo[] _humans
    (apply #'+ (send-all _humans :serialization-length)) 4
    ;; int32[] _visible
    (* 4    (length _visible)) 4
    ;; int32[] _still
    (* 4    (length _still)) 4
    ;; int32[] _moving
    (* 4    (length _moving)) 4
    ;; geometry_msgs/Pose2D _robot_pose
    (send _robot_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agent_path_prediction/HumanInfo[] _humans
     (write-long (length _humans) s)
     (dolist (elem _humans)
       (send elem :serialize s)
       )
     ;; int32[] _visible
     (write-long (length _visible) s)
     (dotimes (i (length _visible))
       (write-long (elt _visible i) s)
       )
     ;; int32[] _still
     (write-long (length _still) s)
     (dotimes (i (length _still))
       (write-long (elt _still i) s)
       )
     ;; int32[] _moving
     (write-long (length _moving) s)
     (dotimes (i (length _moving))
       (write-long (elt _moving i) s)
       )
     ;; geometry_msgs/Pose2D _robot_pose
       (send _robot_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agent_path_prediction/HumanInfo[] _humans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _humans (let (r) (dotimes (i n) (push (instance agent_path_prediction::HumanInfo :init) r)) r))
     (dolist (elem- _humans)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32[] _visible
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _visible (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _visible i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _still
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _still (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _still i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _moving
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _moving (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _moving i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Pose2D _robot_pose
     (send _robot_pose :deserialize buf ptr-) (incf ptr- (send _robot_pose :serialization-length))
   ;;
   self)
  )

(setf (get agent_path_prediction::AgentsInfo :md5sum-) "baf312eee874059dba1071b6b4d6d8e3")
(setf (get agent_path_prediction::AgentsInfo :datatype-) "agent_path_prediction/AgentsInfo")
(setf (get agent_path_prediction::AgentsInfo :definition-)
      "HumanInfo[]           humans
int32[]               visible
int32[]               still
int32[]               moving
geometry_msgs/Pose2D  robot_pose
# geometry_msgs/Twist   robot_vel                    


================================================================================
MSG: agent_path_prediction/HumanInfo
int32   id
int8    state
float32 dist
string  name
# geometry_msgs/Twist vel                    

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :agent_path_prediction/AgentsInfo "baf312eee874059dba1071b6b4d6d8e3")


