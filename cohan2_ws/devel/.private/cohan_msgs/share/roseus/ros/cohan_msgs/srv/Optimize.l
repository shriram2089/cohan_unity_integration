;; Auto-generated. Do not edit!


(when (boundp 'cohan_msgs::Optimize)
  (if (not (find-package "COHAN_MSGS"))
    (make-package "COHAN_MSGS"))
  (shadow 'Optimize (find-package "COHAN_MSGS")))
(unless (find-package "COHAN_MSGS::OPTIMIZE")
  (make-package "COHAN_MSGS::OPTIMIZE"))
(unless (find-package "COHAN_MSGS::OPTIMIZEREQUEST")
  (make-package "COHAN_MSGS::OPTIMIZEREQUEST"))
(unless (find-package "COHAN_MSGS::OPTIMIZERESPONSE")
  (make-package "COHAN_MSGS::OPTIMIZERESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cohan_msgs::OptimizeRequest
  :super ros::object
  :slots (_robot_plan _agent_plan_array _agents_ids ))

(defmethod cohan_msgs::OptimizeRequest
  (:init
   (&key
    ((:robot_plan __robot_plan) (instance nav_msgs::Path :init))
    ((:agent_plan_array __agent_plan_array) (instance cohan_msgs::AgentPathArray :init))
    ((:agents_ids __agents_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _robot_plan __robot_plan)
   (setq _agent_plan_array __agent_plan_array)
   (setq _agents_ids __agents_ids)
   self)
  (:robot_plan
   (&rest __robot_plan)
   (if (keywordp (car __robot_plan))
       (send* _robot_plan __robot_plan)
     (progn
       (if __robot_plan (setq _robot_plan (car __robot_plan)))
       _robot_plan)))
  (:agent_plan_array
   (&rest __agent_plan_array)
   (if (keywordp (car __agent_plan_array))
       (send* _agent_plan_array __agent_plan_array)
     (progn
       (if __agent_plan_array (setq _agent_plan_array (car __agent_plan_array)))
       _agent_plan_array)))
  (:agents_ids
   (&optional __agents_ids)
   (if __agents_ids (setq _agents_ids __agents_ids)) _agents_ids)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _robot_plan
    (send _robot_plan :serialization-length)
    ;; cohan_msgs/AgentPathArray _agent_plan_array
    (send _agent_plan_array :serialization-length)
    ;; int64[] _agents_ids
    (* 8    (length _agents_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _robot_plan
       (send _robot_plan :serialize s)
     ;; cohan_msgs/AgentPathArray _agent_plan_array
       (send _agent_plan_array :serialize s)
     ;; int64[] _agents_ids
     (write-long (length _agents_ids) s)
     (dotimes (i (length _agents_ids))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _agents_ids i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _agents_ids i)) (= (length ((elt _agents_ids i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _agents_ids i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _agents_ids i) . bv) 1) -1) s))
             ((and (class (elt _agents_ids i)) (= (length ((elt _agents_ids i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _agents_ids i) . bv) 0) s)
              (write-long (if (>= (elt _agents_ids i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _agents_ids i) s)(write-long (if (>= (elt _agents_ids i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _robot_plan
     (send _robot_plan :deserialize buf ptr-) (incf ptr- (send _robot_plan :serialization-length))
   ;; cohan_msgs/AgentPathArray _agent_plan_array
     (send _agent_plan_array :deserialize buf ptr-) (incf ptr- (send _agent_plan_array :serialization-length))
   ;; int64[] _agents_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _agents_ids (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _agents_ids i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _agents_ids i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(defclass cohan_msgs::OptimizeResponse
  :super ros::object
  :slots (_success _message _cmd_vel _robot_trajectory _human_trajectories ))

(defmethod cohan_msgs::OptimizeResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:cmd_vel __cmd_vel) (instance geometry_msgs::Twist :init))
    ((:robot_trajectory __robot_trajectory) (instance cohan_msgs::Trajectory :init))
    ((:human_trajectories __human_trajectories) (instance cohan_msgs::AgentTrajectoryArray :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _cmd_vel __cmd_vel)
   (setq _robot_trajectory __robot_trajectory)
   (setq _human_trajectories __human_trajectories)
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
  (:robot_trajectory
   (&rest __robot_trajectory)
   (if (keywordp (car __robot_trajectory))
       (send* _robot_trajectory __robot_trajectory)
     (progn
       (if __robot_trajectory (setq _robot_trajectory (car __robot_trajectory)))
       _robot_trajectory)))
  (:human_trajectories
   (&rest __human_trajectories)
   (if (keywordp (car __human_trajectories))
       (send* _human_trajectories __human_trajectories)
     (progn
       (if __human_trajectories (setq _human_trajectories (car __human_trajectories)))
       _human_trajectories)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; geometry_msgs/Twist _cmd_vel
    (send _cmd_vel :serialization-length)
    ;; cohan_msgs/Trajectory _robot_trajectory
    (send _robot_trajectory :serialization-length)
    ;; cohan_msgs/AgentTrajectoryArray _human_trajectories
    (send _human_trajectories :serialization-length)
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
     ;; cohan_msgs/Trajectory _robot_trajectory
       (send _robot_trajectory :serialize s)
     ;; cohan_msgs/AgentTrajectoryArray _human_trajectories
       (send _human_trajectories :serialize s)
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
   ;; cohan_msgs/Trajectory _robot_trajectory
     (send _robot_trajectory :deserialize buf ptr-) (incf ptr- (send _robot_trajectory :serialization-length))
   ;; cohan_msgs/AgentTrajectoryArray _human_trajectories
     (send _human_trajectories :deserialize buf ptr-) (incf ptr- (send _human_trajectories :serialization-length))
   ;;
   self)
  )

(defclass cohan_msgs::Optimize
  :super ros::object
  :slots ())

(setf (get cohan_msgs::Optimize :md5sum-) "268314f168a8e54386e219ff71892d27")
(setf (get cohan_msgs::Optimize :datatype-) "cohan_msgs/Optimize")
(setf (get cohan_msgs::Optimize :request) cohan_msgs::OptimizeRequest)
(setf (get cohan_msgs::Optimize :response) cohan_msgs::OptimizeResponse)

(defmethod cohan_msgs::OptimizeRequest
  (:response () (instance cohan_msgs::OptimizeResponse :init)))

(setf (get cohan_msgs::OptimizeRequest :md5sum-) "268314f168a8e54386e219ff71892d27")
(setf (get cohan_msgs::OptimizeRequest :datatype-) "cohan_msgs/OptimizeRequest")
(setf (get cohan_msgs::OptimizeRequest :definition-)
      "# Get optimized timed elastic bands for given agents and robot plans

nav_msgs/Path                   robot_plan
cohan_msgs/AgentPathArray       agent_plan_array
int64[]                         agents_ids

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
std_msgs/Header  header
uint64           id
nav_msgs/Path    path
---
bool                            success
string                          message
geometry_msgs/Twist             cmd_vel
cohan_msgs/Trajectory           robot_trajectory
cohan_msgs/AgentTrajectoryArray human_trajectories

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
MSG: cohan_msgs/AgentTrajectoryArray
cohan_msgs/AgentTrajectory[] trajectories

================================================================================
MSG: cohan_msgs/AgentTrajectory
uint64                  id
int8                    type
cohan_msgs/Trajectory   trajectory
")

(setf (get cohan_msgs::OptimizeResponse :md5sum-) "268314f168a8e54386e219ff71892d27")
(setf (get cohan_msgs::OptimizeResponse :datatype-) "cohan_msgs/OptimizeResponse")
(setf (get cohan_msgs::OptimizeResponse :definition-)
      "# Get optimized timed elastic bands for given agents and robot plans

nav_msgs/Path                   robot_plan
cohan_msgs/AgentPathArray       agent_plan_array
int64[]                         agents_ids

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
std_msgs/Header  header
uint64           id
nav_msgs/Path    path
---
bool                            success
string                          message
geometry_msgs/Twist             cmd_vel
cohan_msgs/Trajectory           robot_trajectory
cohan_msgs/AgentTrajectoryArray human_trajectories

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
MSG: cohan_msgs/AgentTrajectoryArray
cohan_msgs/AgentTrajectory[] trajectories

================================================================================
MSG: cohan_msgs/AgentTrajectory
uint64                  id
int8                    type
cohan_msgs/Trajectory   trajectory
")



(provide :cohan_msgs/Optimize "268314f168a8e54386e219ff71892d27")


