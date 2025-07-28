;; Auto-generated. Do not edit!


(when (boundp 'cohan_msgs::TrackedAgent)
  (if (not (find-package "COHAN_MSGS"))
    (make-package "COHAN_MSGS"))
  (shadow 'TrackedAgent (find-package "COHAN_MSGS")))
(unless (find-package "COHAN_MSGS::TRACKEDAGENT")
  (make-package "COHAN_MSGS::TRACKEDAGENT"))

(in-package "ROS")
;;//! \htmlinclude TrackedAgent.msg.html


(intern "*STATIC*" (find-package "COHAN_MSGS::TRACKEDAGENT"))
(shadow '*STATIC* (find-package "COHAN_MSGS::TRACKEDAGENT"))
(defconstant cohan_msgs::TrackedAgent::*STATIC* 0)
(intern "*MOVING*" (find-package "COHAN_MSGS::TRACKEDAGENT"))
(shadow '*MOVING* (find-package "COHAN_MSGS::TRACKEDAGENT"))
(defconstant cohan_msgs::TrackedAgent::*MOVING* 1)
(intern "*STOPPED*" (find-package "COHAN_MSGS::TRACKEDAGENT"))
(shadow '*STOPPED* (find-package "COHAN_MSGS::TRACKEDAGENT"))
(defconstant cohan_msgs::TrackedAgent::*STOPPED* 2)
(intern "*BLOCKED*" (find-package "COHAN_MSGS::TRACKEDAGENT"))
(shadow '*BLOCKED* (find-package "COHAN_MSGS::TRACKEDAGENT"))
(defconstant cohan_msgs::TrackedAgent::*BLOCKED* 3)

(defun cohan_msgs::TrackedAgent-to-symbol (const)
  (cond
        ((= const 0) 'cohan_msgs::TrackedAgent::*STATIC*)
        ((= const 1) 'cohan_msgs::TrackedAgent::*MOVING*)
        ((= const 2) 'cohan_msgs::TrackedAgent::*STOPPED*)
        ((= const 3) 'cohan_msgs::TrackedAgent::*BLOCKED*)
        (t nil)))

(defclass cohan_msgs::TrackedAgent
  :super ros::object
  :slots (_track_id _state _type _name _segments ))

(defmethod cohan_msgs::TrackedAgent
  (:init
   (&key
    ((:track_id __track_id) 0)
    ((:state __state) 0)
    ((:type __type) 0)
    ((:name __name) "")
    ((:segments __segments) ())
    )
   (send-super :init)
   (setq _track_id (round __track_id))
   (setq _state (round __state))
   (setq _type (round __type))
   (setq _name (string __name))
   (setq _segments __segments)
   self)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:serialization-length
   ()
   (+
    ;; uint64 _track_id
    8
    ;; int8 _state
    1
    ;; int8 _type
    1
    ;; string _name
    4 (length _name)
    ;; cohan_msgs/TrackedSegment[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _track_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _track_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _track_id) (= (length (_track_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_track_id . bv) 0) 0) s)
              (write-long (ash (elt (_track_id . bv) 1) -1) s))
             ((and (class _track_id) (= (length (_track_id . bv)) 1)) ;; big1
              (write-long (elt (_track_id . bv) 0) s)
              (write-long (if (>= _track_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _track_id s)(write-long (if (>= _track_id 0) 0 #xffffffff) s)))
     ;; int8 _state
       (write-byte _state s)
     ;; int8 _type
       (write-byte _type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; cohan_msgs/TrackedSegment[] _segments
     (write-long (length _segments) s)
     (dolist (elem _segments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _track_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _track_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _track_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; cohan_msgs/TrackedSegment[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance cohan_msgs::TrackedSegment :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cohan_msgs::TrackedAgent :md5sum-) "e6d0cc6bc60fdd6b12a54123fbdffc28")
(setf (get cohan_msgs::TrackedAgent :datatype-) "cohan_msgs/TrackedAgent")
(setf (get cohan_msgs::TrackedAgent :definition-)
      "# states
int8 STATIC=0
int8 MOVING=1
int8 STOPPED=2
int8 BLOCKED=3

uint64              track_id
int8                state
int8                type
string              name
TrackedSegment[]    segments

================================================================================
MSG: cohan_msgs/TrackedSegment
int8                                type
geometry_msgs/PoseWithCovariance    pose
geometry_msgs/TwistWithCovariance   twist
geometry_msgs/AccelWithCovariance   accel

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
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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
MSG: geometry_msgs/AccelWithCovariance
# This expresses acceleration in free space with uncertainty.

Accel accel

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :cohan_msgs/TrackedAgent "e6d0cc6bc60fdd6b12a54123fbdffc28")


