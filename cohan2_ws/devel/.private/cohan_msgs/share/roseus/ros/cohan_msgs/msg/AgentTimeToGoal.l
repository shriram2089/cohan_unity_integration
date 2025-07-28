;; Auto-generated. Do not edit!


(when (boundp 'cohan_msgs::AgentTimeToGoal)
  (if (not (find-package "COHAN_MSGS"))
    (make-package "COHAN_MSGS"))
  (shadow 'AgentTimeToGoal (find-package "COHAN_MSGS")))
(unless (find-package "COHAN_MSGS::AGENTTIMETOGOAL")
  (make-package "COHAN_MSGS::AGENTTIMETOGOAL"))

(in-package "ROS")
;;//! \htmlinclude AgentTimeToGoal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cohan_msgs::AgentTimeToGoal
  :super ros::object
  :slots (_header _id _type _time_to_goal ))

(defmethod cohan_msgs::AgentTimeToGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:type __type) 0)
    ((:time_to_goal __time_to_goal) (instance ros::time :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _time_to_goal __time_to_goal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:time_to_goal
   (&optional __time_to_goal)
   (if __time_to_goal (setq _time_to_goal __time_to_goal)) _time_to_goal)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _id
    8
    ;; int8 _type
    1
    ;; duration _time_to_goal
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; int8 _type
       (write-byte _type s)
     ;; duration _time_to_goal
       (write-long (send _time_to_goal :sec) s) (write-long (send _time_to_goal :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _id
     
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; duration _time_to_goal
     (send _time_to_goal :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_to_goal :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cohan_msgs::AgentTimeToGoal :md5sum-) "fa9354bd82de41a4f433be8a3687818a")
(setf (get cohan_msgs::AgentTimeToGoal :datatype-) "cohan_msgs/AgentTimeToGoal")
(setf (get cohan_msgs::AgentTimeToGoal :definition-)
      "std_msgs/Header header
uint64          id
int8            type
duration        time_to_goal

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

")



(provide :cohan_msgs/AgentTimeToGoal "fa9354bd82de41a4f433be8a3687818a")


