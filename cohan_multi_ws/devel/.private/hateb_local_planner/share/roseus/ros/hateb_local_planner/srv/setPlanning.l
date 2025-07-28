;; Auto-generated. Do not edit!


(when (boundp 'hateb_local_planner::setPlanning)
  (if (not (find-package "HATEB_LOCAL_PLANNER"))
    (make-package "HATEB_LOCAL_PLANNER"))
  (shadow 'setPlanning (find-package "HATEB_LOCAL_PLANNER")))
(unless (find-package "HATEB_LOCAL_PLANNER::SETPLANNING")
  (make-package "HATEB_LOCAL_PLANNER::SETPLANNING"))
(unless (find-package "HATEB_LOCAL_PLANNER::SETPLANNINGREQUEST")
  (make-package "HATEB_LOCAL_PLANNER::SETPLANNINGREQUEST"))
(unless (find-package "HATEB_LOCAL_PLANNER::SETPLANNINGRESPONSE")
  (make-package "HATEB_LOCAL_PLANNER::SETPLANNINGRESPONSE"))

(in-package "ROS")





(defclass hateb_local_planner::setPlanningRequest
  :super ros::object
  :slots (_mode ))

(defmethod hateb_local_planner::setPlanningRequest
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass hateb_local_planner::setPlanningResponse
  :super ros::object
  :slots (_success _message ))

(defmethod hateb_local_planner::setPlanningResponse
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

(defclass hateb_local_planner::setPlanning
  :super ros::object
  :slots ())

(setf (get hateb_local_planner::setPlanning :md5sum-) "718da2351c63fdc303e9567a9bc6772c")
(setf (get hateb_local_planner::setPlanning :datatype-) "hateb_local_planner/setPlanning")
(setf (get hateb_local_planner::setPlanning :request) hateb_local_planner::setPlanningRequest)
(setf (get hateb_local_planner::setPlanning :response) hateb_local_planner::setPlanningResponse)

(defmethod hateb_local_planner::setPlanningRequest
  (:response () (instance hateb_local_planner::setPlanningResponse :init)))

(setf (get hateb_local_planner::setPlanningRequest :md5sum-) "718da2351c63fdc303e9567a9bc6772c")
(setf (get hateb_local_planner::setPlanningRequest :datatype-) "hateb_local_planner/setPlanningRequest")
(setf (get hateb_local_planner::setPlanningRequest :definition-)
      "# Planning mode

uint8 mode
---
bool success
string message

")

(setf (get hateb_local_planner::setPlanningResponse :md5sum-) "718da2351c63fdc303e9567a9bc6772c")
(setf (get hateb_local_planner::setPlanningResponse :datatype-) "hateb_local_planner/setPlanningResponse")
(setf (get hateb_local_planner::setPlanningResponse :definition-)
      "# Planning mode

uint8 mode
---
bool success
string message

")



(provide :hateb_local_planner/setPlanning "718da2351c63fdc303e9567a9bc6772c")


