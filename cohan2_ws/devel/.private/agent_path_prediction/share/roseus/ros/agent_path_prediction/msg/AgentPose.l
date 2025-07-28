;; Auto-generated. Do not edit!


(when (boundp 'agent_path_prediction::AgentPose)
  (if (not (find-package "AGENT_PATH_PREDICTION"))
    (make-package "AGENT_PATH_PREDICTION"))
  (shadow 'AgentPose (find-package "AGENT_PATH_PREDICTION")))
(unless (find-package "AGENT_PATH_PREDICTION::AGENTPOSE")
  (make-package "AGENT_PATH_PREDICTION::AGENTPOSE"))

(in-package "ROS")
;;//! \htmlinclude AgentPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass agent_path_prediction::AgentPose
  :super ros::object
  :slots (_type _id _pose ))

(defmethod agent_path_prediction::AgentPose
  (:init
   (&key
    ((:type __type) 0)
    ((:id __id) 0)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _id (round __id))
   (setq _pose __pose)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; int8 _type
    1
    ;; int32 _id
    4
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _type
       (write-byte _type s)
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get agent_path_prediction::AgentPose :md5sum-) "eba4892371bf047acb069910bf104f63")
(setf (get agent_path_prediction::AgentPose :datatype-) "agent_path_prediction/AgentPose")
(setf (get agent_path_prediction::AgentPose :definition-)
      "int8                       type 
int32                      id
geometry_msgs/PoseStamped  pose

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



(provide :agent_path_prediction/AgentPose "eba4892371bf047acb069910bf104f63")


