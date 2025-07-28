;; Auto-generated. Do not edit!


(when (boundp 'hateb_local_planner::getPlanning)
  (if (not (find-package "HATEB_LOCAL_PLANNER"))
    (make-package "HATEB_LOCAL_PLANNER"))
  (shadow 'getPlanning (find-package "HATEB_LOCAL_PLANNER")))
(unless (find-package "HATEB_LOCAL_PLANNER::GETPLANNING")
  (make-package "HATEB_LOCAL_PLANNER::GETPLANNING"))
(unless (find-package "HATEB_LOCAL_PLANNER::GETPLANNINGREQUEST")
  (make-package "HATEB_LOCAL_PLANNER::GETPLANNINGREQUEST"))
(unless (find-package "HATEB_LOCAL_PLANNER::GETPLANNINGRESPONSE")
  (make-package "HATEB_LOCAL_PLANNER::GETPLANNINGRESPONSE"))

(in-package "ROS")





(defclass hateb_local_planner::getPlanningRequest
  :super ros::object
  :slots ())

(defmethod hateb_local_planner::getPlanningRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass hateb_local_planner::getPlanningResponse
  :super ros::object
  :slots (_mode ))

(defmethod hateb_local_planner::getPlanningResponse
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
    ;; int8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(defclass hateb_local_planner::getPlanning
  :super ros::object
  :slots ())

(setf (get hateb_local_planner::getPlanning :md5sum-) "418c02483a8ca57215fb7b31c5c87234")
(setf (get hateb_local_planner::getPlanning :datatype-) "hateb_local_planner/getPlanning")
(setf (get hateb_local_planner::getPlanning :request) hateb_local_planner::getPlanningRequest)
(setf (get hateb_local_planner::getPlanning :response) hateb_local_planner::getPlanningResponse)

(defmethod hateb_local_planner::getPlanningRequest
  (:response () (instance hateb_local_planner::getPlanningResponse :init)))

(setf (get hateb_local_planner::getPlanningRequest :md5sum-) "418c02483a8ca57215fb7b31c5c87234")
(setf (get hateb_local_planner::getPlanningRequest :datatype-) "hateb_local_planner/getPlanningRequest")
(setf (get hateb_local_planner::getPlanningRequest :definition-)
      "# get Planning mode

---
int8 mode

")

(setf (get hateb_local_planner::getPlanningResponse :md5sum-) "418c02483a8ca57215fb7b31c5c87234")
(setf (get hateb_local_planner::getPlanningResponse :datatype-) "hateb_local_planner/getPlanningResponse")
(setf (get hateb_local_planner::getPlanningResponse :definition-)
      "# get Planning mode

---
int8 mode

")



(provide :hateb_local_planner/getPlanning "418c02483a8ca57215fb7b31c5c87234")


