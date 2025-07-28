;; Auto-generated. Do not edit!


(when (boundp 'agent_path_prediction::AgentGoal)
  (if (not (find-package "AGENT_PATH_PREDICTION"))
    (make-package "AGENT_PATH_PREDICTION"))
  (shadow 'AgentGoal (find-package "AGENT_PATH_PREDICTION")))
(unless (find-package "AGENT_PATH_PREDICTION::AGENTGOAL")
  (make-package "AGENT_PATH_PREDICTION::AGENTGOAL"))
(unless (find-package "AGENT_PATH_PREDICTION::AGENTGOALREQUEST")
  (make-package "AGENT_PATH_PREDICTION::AGENTGOALREQUEST"))
(unless (find-package "AGENT_PATH_PREDICTION::AGENTGOALRESPONSE")
  (make-package "AGENT_PATH_PREDICTION::AGENTGOALRESPONSE"))

(in-package "ROS")





(defclass agent_path_prediction::AgentGoalRequest
  :super ros::object
  :slots (_goals ))

(defmethod agent_path_prediction::AgentGoalRequest
  (:init
   (&key
    ((:goals __goals) ())
    )
   (send-super :init)
   (setq _goals __goals)
   self)
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
    ;; agent_path_prediction/AgentPose[] _goals
    (apply #'+ (send-all _goals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agent_path_prediction/AgentPose[] _goals
     (write-long (length _goals) s)
     (dolist (elem _goals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agent_path_prediction/AgentPose[] _goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goals (let (r) (dotimes (i n) (push (instance agent_path_prediction::AgentPose :init) r)) r))
     (dolist (elem- _goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass agent_path_prediction::AgentGoalResponse
  :super ros::object
  :slots (_success _message ))

(defmethod agent_path_prediction::AgentGoalResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass agent_path_prediction::AgentGoal
  :super ros::object
  :slots ())

(setf (get agent_path_prediction::AgentGoal :md5sum-) "371b2efd3bcf51733c8e0c557637df1e")
(setf (get agent_path_prediction::AgentGoal :datatype-) "agent_path_prediction/AgentGoal")
(setf (get agent_path_prediction::AgentGoal :request) agent_path_prediction::AgentGoalRequest)
(setf (get agent_path_prediction::AgentGoal :response) agent_path_prediction::AgentGoalResponse)

(defmethod agent_path_prediction::AgentGoalRequest
  (:response () (instance agent_path_prediction::AgentGoalResponse :init)))

(setf (get agent_path_prediction::AgentGoalRequest :md5sum-) "371b2efd3bcf51733c8e0c557637df1e")
(setf (get agent_path_prediction::AgentGoalRequest :datatype-) "agent_path_prediction/AgentGoalRequest")
(setf (get agent_path_prediction::AgentGoalRequest :definition-)
      "agent_path_prediction/AgentPose[]  goals

================================================================================
MSG: agent_path_prediction/AgentPose
int8                       type 
int64                      id
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
---
bool                         success
string                       message

")

(setf (get agent_path_prediction::AgentGoalResponse :md5sum-) "371b2efd3bcf51733c8e0c557637df1e")
(setf (get agent_path_prediction::AgentGoalResponse :datatype-) "agent_path_prediction/AgentGoalResponse")
(setf (get agent_path_prediction::AgentGoalResponse :definition-)
      "agent_path_prediction/AgentPose[]  goals

================================================================================
MSG: agent_path_prediction/AgentPose
int8                       type 
int64                      id
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
---
bool                         success
string                       message

")



(provide :agent_path_prediction/AgentGoal "371b2efd3bcf51733c8e0c557637df1e")


