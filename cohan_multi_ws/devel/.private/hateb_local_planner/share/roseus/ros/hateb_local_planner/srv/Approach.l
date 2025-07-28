;; Auto-generated. Do not edit!


(when (boundp 'hateb_local_planner::Approach)
  (if (not (find-package "HATEB_LOCAL_PLANNER"))
    (make-package "HATEB_LOCAL_PLANNER"))
  (shadow 'Approach (find-package "HATEB_LOCAL_PLANNER")))
(unless (find-package "HATEB_LOCAL_PLANNER::APPROACH")
  (make-package "HATEB_LOCAL_PLANNER::APPROACH"))
(unless (find-package "HATEB_LOCAL_PLANNER::APPROACHREQUEST")
  (make-package "HATEB_LOCAL_PLANNER::APPROACHREQUEST"))
(unless (find-package "HATEB_LOCAL_PLANNER::APPROACHRESPONSE")
  (make-package "HATEB_LOCAL_PLANNER::APPROACHRESPONSE"))

(in-package "ROS")





(defclass hateb_local_planner::ApproachRequest
  :super ros::object
  :slots (_agent_id ))

(defmethod hateb_local_planner::ApproachRequest
  (:init
   (&key
    ((:agent_id __agent_id) 0)
    )
   (send-super :init)
   (setq _agent_id (round __agent_id))
   self)
  (:agent_id
   (&optional __agent_id)
   (if __agent_id (setq _agent_id __agent_id)) _agent_id)
  (:serialization-length
   ()
   (+
    ;; uint64 _agent_id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _agent_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _agent_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _agent_id) (= (length (_agent_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_agent_id . bv) 0) 0) s)
              (write-long (ash (elt (_agent_id . bv) 1) -1) s))
             ((and (class _agent_id) (= (length (_agent_id . bv)) 1)) ;; big1
              (write-long (elt (_agent_id . bv) 0) s)
              (write-long (if (>= _agent_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _agent_id s)(write-long (if (>= _agent_id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _agent_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _agent_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _agent_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass hateb_local_planner::ApproachResponse
  :super ros::object
  :slots (_success _message ))

(defmethod hateb_local_planner::ApproachResponse
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

(defclass hateb_local_planner::Approach
  :super ros::object
  :slots ())

(setf (get hateb_local_planner::Approach :md5sum-) "199a24b4d2ab7be80f7fdf2e5958eec5")
(setf (get hateb_local_planner::Approach :datatype-) "hateb_local_planner/Approach")
(setf (get hateb_local_planner::Approach :request) hateb_local_planner::ApproachRequest)
(setf (get hateb_local_planner::Approach :response) hateb_local_planner::ApproachResponse)

(defmethod hateb_local_planner::ApproachRequest
  (:response () (instance hateb_local_planner::ApproachResponse :init)))

(setf (get hateb_local_planner::ApproachRequest :md5sum-) "199a24b4d2ab7be80f7fdf2e5958eec5")
(setf (get hateb_local_planner::ApproachRequest :datatype-) "hateb_local_planner/ApproachRequest")
(setf (get hateb_local_planner::ApproachRequest :definition-)
      "# Start approach behavior

uint64 agent_id
---
bool success
string message

")

(setf (get hateb_local_planner::ApproachResponse :md5sum-) "199a24b4d2ab7be80f7fdf2e5958eec5")
(setf (get hateb_local_planner::ApproachResponse :datatype-) "hateb_local_planner/ApproachResponse")
(setf (get hateb_local_planner::ApproachResponse :definition-)
      "# Start approach behavior

uint64 agent_id
---
bool success
string message

")



(provide :hateb_local_planner/Approach "199a24b4d2ab7be80f7fdf2e5958eec5")


