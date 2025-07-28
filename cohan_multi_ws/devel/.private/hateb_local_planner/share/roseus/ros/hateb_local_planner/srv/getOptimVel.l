;; Auto-generated. Do not edit!


(when (boundp 'hateb_local_planner::getOptimVel)
  (if (not (find-package "HATEB_LOCAL_PLANNER"))
    (make-package "HATEB_LOCAL_PLANNER"))
  (shadow 'getOptimVel (find-package "HATEB_LOCAL_PLANNER")))
(unless (find-package "HATEB_LOCAL_PLANNER::GETOPTIMVEL")
  (make-package "HATEB_LOCAL_PLANNER::GETOPTIMVEL"))
(unless (find-package "HATEB_LOCAL_PLANNER::GETOPTIMVELREQUEST")
  (make-package "HATEB_LOCAL_PLANNER::GETOPTIMVELREQUEST"))
(unless (find-package "HATEB_LOCAL_PLANNER::GETOPTIMVELRESPONSE")
  (make-package "HATEB_LOCAL_PLANNER::GETOPTIMVELRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hateb_local_planner::getOptimVelRequest
  :super ros::object
  :slots (_robot_goal ))

(defmethod hateb_local_planner::getOptimVelRequest
  (:init
   (&key
    ((:robot_goal __robot_goal) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _robot_goal __robot_goal)
   self)
  (:robot_goal
   (&rest __robot_goal)
   (if (keywordp (car __robot_goal))
       (send* _robot_goal __robot_goal)
     (progn
       (if __robot_goal (setq _robot_goal (car __robot_goal)))
       _robot_goal)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _robot_goal
    (send _robot_goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _robot_goal
       (send _robot_goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _robot_goal
     (send _robot_goal :deserialize buf ptr-) (incf ptr- (send _robot_goal :serialization-length))
   ;;
   self)
  )

(defclass hateb_local_planner::getOptimVelResponse
  :super ros::object
  :slots (_success _message _cmd_vel ))

(defmethod hateb_local_planner::getOptimVelResponse
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

(defclass hateb_local_planner::getOptimVel
  :super ros::object
  :slots ())

(setf (get hateb_local_planner::getOptimVel :md5sum-) "9064de66b0c4b1d712622f9ef99fd185")
(setf (get hateb_local_planner::getOptimVel :datatype-) "hateb_local_planner/getOptimVel")
(setf (get hateb_local_planner::getOptimVel :request) hateb_local_planner::getOptimVelRequest)
(setf (get hateb_local_planner::getOptimVel :response) hateb_local_planner::getOptimVelResponse)

(defmethod hateb_local_planner::getOptimVelRequest
  (:response () (instance hateb_local_planner::getOptimVelResponse :init)))

(setf (get hateb_local_planner::getOptimVelRequest :md5sum-) "9064de66b0c4b1d712622f9ef99fd185")
(setf (get hateb_local_planner::getOptimVelRequest :datatype-) "hateb_local_planner/getOptimVelRequest")
(setf (get hateb_local_planner::getOptimVelRequest :definition-)
      "#Set the goal and get the optimal velocity command

geometry_msgs/PoseStamped robot_goal

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

(setf (get hateb_local_planner::getOptimVelResponse :md5sum-) "9064de66b0c4b1d712622f9ef99fd185")
(setf (get hateb_local_planner::getOptimVelResponse :datatype-) "hateb_local_planner/getOptimVelResponse")
(setf (get hateb_local_planner::getOptimVelResponse :definition-)
      "#Set the goal and get the optimal velocity command

geometry_msgs/PoseStamped robot_goal

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



(provide :hateb_local_planner/getOptimVel "9064de66b0c4b1d712622f9ef99fd185")


