;; Auto-generated. Do not edit!


(when (boundp 'cohan_gazebo::abortGoal)
  (if (not (find-package "COHAN_GAZEBO"))
    (make-package "COHAN_GAZEBO"))
  (shadow 'abortGoal (find-package "COHAN_GAZEBO")))
(unless (find-package "COHAN_GAZEBO::ABORTGOAL")
  (make-package "COHAN_GAZEBO::ABORTGOAL"))

(in-package "ROS")
;;//! \htmlinclude abortGoal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cohan_gazebo::abortGoal
  :super ros::object
  :slots (_id _abort ))

(defmethod cohan_gazebo::abortGoal
  (:init
   (&key
    ((:id __id) 0)
    ((:abort __abort) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _abort __abort)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:abort
   (&rest __abort)
   (if (keywordp (car __abort))
       (send* _abort __abort)
     (progn
       (if __abort (setq _abort (car __abort)))
       _abort)))
  (:serialization-length
   ()
   (+
    ;; int64 _id
    8
    ;; std_msgs/Bool _abort
    (send _abort :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _id
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
     ;; std_msgs/Bool _abort
       (send _abort :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _id
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
   ;; std_msgs/Bool _abort
     (send _abort :deserialize buf ptr-) (incf ptr- (send _abort :serialization-length))
   ;;
   self)
  )

(setf (get cohan_gazebo::abortGoal :md5sum-) "ffb97e617eff82b1230d865ebbca3985")
(setf (get cohan_gazebo::abortGoal :datatype-) "cohan_gazebo/abortGoal")
(setf (get cohan_gazebo::abortGoal :definition-)
      "int64         id
std_msgs/Bool abort
================================================================================
MSG: std_msgs/Bool
bool data
")



(provide :cohan_gazebo/abortGoal "ffb97e617eff82b1230d865ebbca3985")


