;; Auto-generated. Do not edit!


(when (boundp 'agent_path_prediction::AgentPosePredict)
  (if (not (find-package "AGENT_PATH_PREDICTION"))
    (make-package "AGENT_PATH_PREDICTION"))
  (shadow 'AgentPosePredict (find-package "AGENT_PATH_PREDICTION")))
(unless (find-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICT")
  (make-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICT"))
(unless (find-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICTREQUEST")
  (make-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICTREQUEST"))
(unless (find-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICTRESPONSE")
  (make-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICTRESPONSE"))

(in-package "ROS")





(intern "*VELOCITY_SCALE*" (find-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICTREQUEST"))
(shadow '*VELOCITY_SCALE* (find-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICTREQUEST"))
(defconstant agent_path_prediction::AgentPosePredictRequest::*VELOCITY_SCALE* 0)
(intern "*VELOCITY_OBSTACLE*" (find-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICTREQUEST"))
(shadow '*VELOCITY_OBSTACLE* (find-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICTREQUEST"))
(defconstant agent_path_prediction::AgentPosePredictRequest::*VELOCITY_OBSTACLE* 1)
(intern "*EXTERNAL*" (find-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICTREQUEST"))
(shadow '*EXTERNAL* (find-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICTREQUEST"))
(defconstant agent_path_prediction::AgentPosePredictRequest::*EXTERNAL* 2)
(intern "*BEHIND_ROBOT*" (find-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICTREQUEST"))
(shadow '*BEHIND_ROBOT* (find-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICTREQUEST"))
(defconstant agent_path_prediction::AgentPosePredictRequest::*BEHIND_ROBOT* 3)
(intern "*PREDICTED_GOAL*" (find-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICTREQUEST"))
(shadow '*PREDICTED_GOAL* (find-package "AGENT_PATH_PREDICTION::AGENTPOSEPREDICTREQUEST"))
(defconstant agent_path_prediction::AgentPosePredictRequest::*PREDICTED_GOAL* 4)

(defun agent_path_prediction::AgentPosePredictRequest-to-symbol (const)
  (cond
        ((= const 0) 'agent_path_prediction::AgentPosePredictRequest::*VELOCITY_SCALE*)
        ((= const 1) 'agent_path_prediction::AgentPosePredictRequest::*VELOCITY_OBSTACLE*)
        ((= const 2) 'agent_path_prediction::AgentPosePredictRequest::*EXTERNAL*)
        ((= const 3) 'agent_path_prediction::AgentPosePredictRequest::*BEHIND_ROBOT*)
        ((= const 4) 'agent_path_prediction::AgentPosePredictRequest::*PREDICTED_GOAL*)
        (t nil)))

(defclass agent_path_prediction::AgentPosePredictRequest
  :super ros::object
  :slots (_type _predict_times _ids ))

(defmethod agent_path_prediction::AgentPosePredictRequest
  (:init
   (&key
    ((:type __type) 0)
    ((:predict_times __predict_times) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _predict_times __predict_times)
   (setq _ids __ids)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:predict_times
   (&optional __predict_times)
   (if __predict_times (setq _predict_times __predict_times)) _predict_times)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; float64[] _predict_times
    (* 8    (length _predict_times)) 4
    ;; int64[] _ids
    (* 8    (length _ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; float64[] _predict_times
     (write-long (length _predict_times) s)
     (dotimes (i (length _predict_times))
       (sys::poke (elt _predict_times i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int64[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _ids i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _ids i)) (= (length ((elt _ids i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _ids i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _ids i) . bv) 1) -1) s))
             ((and (class (elt _ids i)) (= (length ((elt _ids i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _ids i) . bv) 0) s)
              (write-long (if (>= (elt _ids i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _ids i) s)(write-long (if (>= (elt _ids i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _predict_times
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predict_times (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _predict_times i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int64[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _ids i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _ids i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass agent_path_prediction::AgentPosePredictResponse
  :super ros::object
  :slots (_predicted_agents_poses ))

(defmethod agent_path_prediction::AgentPosePredictResponse
  (:init
   (&key
    ((:predicted_agents_poses __predicted_agents_poses) ())
    )
   (send-super :init)
   (setq _predicted_agents_poses __predicted_agents_poses)
   self)
  (:predicted_agents_poses
   (&rest __predicted_agents_poses)
   (if (keywordp (car __predicted_agents_poses))
       (send* _predicted_agents_poses __predicted_agents_poses)
     (progn
       (if __predicted_agents_poses (setq _predicted_agents_poses (car __predicted_agents_poses)))
       _predicted_agents_poses)))
  (:serialization-length
   ()
   (+
    ;; agent_path_prediction/PredictedPoses[] _predicted_agents_poses
    (apply #'+ (send-all _predicted_agents_poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agent_path_prediction/PredictedPoses[] _predicted_agents_poses
     (write-long (length _predicted_agents_poses) s)
     (dolist (elem _predicted_agents_poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agent_path_prediction/PredictedPoses[] _predicted_agents_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predicted_agents_poses (let (r) (dotimes (i n) (push (instance agent_path_prediction::PredictedPoses :init) r)) r))
     (dolist (elem- _predicted_agents_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass agent_path_prediction::AgentPosePredict
  :super ros::object
  :slots ())

(setf (get agent_path_prediction::AgentPosePredict :md5sum-) "bc118b82a57269022e8ca4cc5d1d18ac")
(setf (get agent_path_prediction::AgentPosePredict :datatype-) "agent_path_prediction/AgentPosePredict")
(setf (get agent_path_prediction::AgentPosePredict :request) agent_path_prediction::AgentPosePredictRequest)
(setf (get agent_path_prediction::AgentPosePredict :response) agent_path_prediction::AgentPosePredictResponse)

(defmethod agent_path_prediction::AgentPosePredictRequest
  (:response () (instance agent_path_prediction::AgentPosePredictResponse :init)))

(setf (get agent_path_prediction::AgentPosePredictRequest :md5sum-) "bc118b82a57269022e8ca4cc5d1d18ac")
(setf (get agent_path_prediction::AgentPosePredictRequest :datatype-) "agent_path_prediction/AgentPosePredictRequest")
(setf (get agent_path_prediction::AgentPosePredictRequest :definition-)
      "# request constants
uint8 VELOCITY_SCALE=0
uint8 VELOCITY_OBSTACLE=1
uint8 EXTERNAL=2
uint8 BEHIND_ROBOT=3
uint8 PREDICTED_GOAL=4
# request fields
uint8                               type
float64[]                           predict_times
int64[]                             ids
---
# response fields
agent_path_prediction/PredictedPoses[]    predicted_agents_poses


================================================================================
MSG: agent_path_prediction/PredictedPoses
uint64                                      id
geometry_msgs/PoseWithCovarianceStamped[]   poses
geometry_msgs/TwistStamped                  start_velocity

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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
MSG: geometry_msgs/TwistStamped
# A twist with reference coordinate frame and timestamp
Header header
Twist twist

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

(setf (get agent_path_prediction::AgentPosePredictResponse :md5sum-) "bc118b82a57269022e8ca4cc5d1d18ac")
(setf (get agent_path_prediction::AgentPosePredictResponse :datatype-) "agent_path_prediction/AgentPosePredictResponse")
(setf (get agent_path_prediction::AgentPosePredictResponse :definition-)
      "# request constants
uint8 VELOCITY_SCALE=0
uint8 VELOCITY_OBSTACLE=1
uint8 EXTERNAL=2
uint8 BEHIND_ROBOT=3
uint8 PREDICTED_GOAL=4
# request fields
uint8                               type
float64[]                           predict_times
int64[]                             ids
---
# response fields
agent_path_prediction/PredictedPoses[]    predicted_agents_poses


================================================================================
MSG: agent_path_prediction/PredictedPoses
uint64                                      id
geometry_msgs/PoseWithCovarianceStamped[]   poses
geometry_msgs/TwistStamped                  start_velocity

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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
MSG: geometry_msgs/TwistStamped
# A twist with reference coordinate frame and timestamp
Header header
Twist twist

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



(provide :agent_path_prediction/AgentPosePredict "bc118b82a57269022e8ca4cc5d1d18ac")


