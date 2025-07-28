;; Auto-generated. Do not edit!


(when (boundp 'hateb_local_planner::Optimize)
  (if (not (find-package "HATEB_LOCAL_PLANNER"))
    (make-package "HATEB_LOCAL_PLANNER"))
  (shadow 'Optimize (find-package "HATEB_LOCAL_PLANNER")))
(unless (find-package "HATEB_LOCAL_PLANNER::OPTIMIZE")
  (make-package "HATEB_LOCAL_PLANNER::OPTIMIZE"))
(unless (find-package "HATEB_LOCAL_PLANNER::OPTIMIZEREQUEST")
  (make-package "HATEB_LOCAL_PLANNER::OPTIMIZEREQUEST"))
(unless (find-package "HATEB_LOCAL_PLANNER::OPTIMIZERESPONSE")
  (make-package "HATEB_LOCAL_PLANNER::OPTIMIZERESPONSE"))

(in-package "ROS")

(if (not (find-package "COHAN_MSGS"))
  (ros::roseus-add-msgs "cohan_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hateb_local_planner::OptimizeRequest
  :super ros::object
  :slots (_robot_plan _agent_path_array ))

(defmethod hateb_local_planner::OptimizeRequest
  (:init
   (&key
    ((:robot_plan __robot_plan) (instance nav_msgs::Path :init))
    ((:agent_path_array __agent_path_array) (instance cohan_msgs::AgentPathArray :init))
    )
   (send-super :init)
   (setq _robot_plan __robot_plan)
   (setq _agent_path_array __agent_path_array)
   self)
  (:robot_plan
   (&rest __robot_plan)
   (if (keywordp (car __robot_plan))
       (send* _robot_plan __robot_plan)
     (progn
       (if __robot_plan (setq _robot_plan (car __robot_plan)))
       _robot_plan)))
  (:agent_path_array
   (&rest __agent_path_array)
   (if (keywordp (car __agent_path_array))
       (send* _agent_path_array __agent_path_array)
     (progn
       (if __agent_path_array (setq _agent_path_array (car __agent_path_array)))
       _agent_path_array)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _robot_plan
    (send _robot_plan :serialization-length)
    ;; cohan_msgs/AgentPathArray _agent_path_array
    (send _agent_path_array :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _robot_plan
       (send _robot_plan :serialize s)
     ;; cohan_msgs/AgentPathArray _agent_path_array
       (send _agent_path_array :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _robot_plan
     (send _robot_plan :deserialize buf ptr-) (incf ptr- (send _robot_plan :serialization-length))
   ;; cohan_msgs/AgentPathArray _agent_path_array
     (send _agent_path_array :deserialize buf ptr-) (incf ptr- (send _agent_path_array :serialization-length))
   ;;
   self)
  )

(defclass hateb_local_planner::OptimizeResponse
  :super ros::object
  :slots (_success _message _cmd_vel ))

(defmethod hateb_local_planner::OptimizeResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:cmd_vel __cmd_vel) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _cmd_vel __cmd_vel)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:cmd_vel
   (&rest __cmd_vel)
   (if (keywordp (car __cmd_vel))
       (send* _cmd_vel __cmd_vel)
     (progn
       (if __cmd_vel (setq _cmd_vel (car __cmd_vel)))
       _cmd_vel)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; geometry_msgs/Twist _cmd_vel
    (send _cmd_vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; geometry_msgs/Twist _cmd_vel
       (send _cmd_vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Twist _cmd_vel
     (send _cmd_vel :deserialize buf ptr-) (incf ptr- (send _cmd_vel :serialization-length))
   ;;
   self)
  )

(defclass hateb_local_planner::Optimize
  :super ros::object
  :slots ())

(setf (get hateb_local_planner::Optimize :md5sum-) "da056f999e9b97ec60c1cedc995ad26b")
(setf (get hateb_local_planner::Optimize :datatype-) "hateb_local_planner/Optimize")
(setf (get hateb_local_planner::Optimize :request) hateb_local_planner::OptimizeRequest)
(setf (get hateb_local_planner::Optimize :response) hateb_local_planner::OptimizeResponse)

(defmethod hateb_local_planner::OptimizeRequest
  (:response () (instance hateb_local_planner::OptimizeResponse :init)))

(setf (get hateb_local_planner::OptimizeRequest :md5sum-) "da056f999e9b97ec60c1cedc995ad26b")
(setf (get hateb_local_planner::OptimizeRequest :datatype-) "hateb_local_planner/OptimizeRequest")
(setf (get hateb_local_planner::OptimizeRequest :definition-)
      "# Get optimized timed elastic bands for given agents and robot plans

nav_msgs/Path robot_plan
cohan_msgs/AgentPathArray agent_path_array

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: cohan_msgs/AgentPathArray
std_msgs/Header         header
cohan_msgs/AgentPath[]   paths

================================================================================
MSG: cohan_msgs/AgentPath
std_msgs/Header header
uint64          id
nav_msgs/Path   path
---
bool success
string message
geometry_msgs/Twist cmd_vel


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
")

(setf (get hateb_local_planner::OptimizeResponse :md5sum-) "da056f999e9b97ec60c1cedc995ad26b")
(setf (get hateb_local_planner::OptimizeResponse :datatype-) "hateb_local_planner/OptimizeResponse")
(setf (get hateb_local_planner::OptimizeResponse :definition-)
      "# Get optimized timed elastic bands for given agents and robot plans

nav_msgs/Path robot_plan
cohan_msgs/AgentPathArray agent_path_array

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: cohan_msgs/AgentPathArray
std_msgs/Header         header
cohan_msgs/AgentPath[]   paths

================================================================================
MSG: cohan_msgs/AgentPath
std_msgs/Header header
uint64          id
nav_msgs/Path   path
---
bool success
string message
geometry_msgs/Twist cmd_vel


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
")



(provide :hateb_local_planner/Optimize "da056f999e9b97ec60c1cedc995ad26b")


