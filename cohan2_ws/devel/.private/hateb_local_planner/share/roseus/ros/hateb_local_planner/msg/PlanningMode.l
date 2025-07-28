;; Auto-generated. Do not edit!


(when (boundp 'hateb_local_planner::PlanningMode)
  (if (not (find-package "HATEB_LOCAL_PLANNER"))
    (make-package "HATEB_LOCAL_PLANNER"))
  (shadow 'PlanningMode (find-package "HATEB_LOCAL_PLANNER")))
(unless (find-package "HATEB_LOCAL_PLANNER::PLANNINGMODE")
  (make-package "HATEB_LOCAL_PLANNER::PLANNINGMODE"))

(in-package "ROS")
;;//! \htmlinclude PlanningMode.msg.html


(defclass hateb_local_planner::PlanningMode
  :super ros::object
  :slots (_plan_mode _predict_mode _moving_humans _still_humans ))

(defmethod hateb_local_planner::PlanningMode
  (:init
   (&key
    ((:plan_mode __plan_mode) 0)
    ((:predict_mode __predict_mode) 0)
    ((:moving_humans __moving_humans) (make-array 0 :initial-element 0 :element-type :integer))
    ((:still_humans __still_humans) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _plan_mode (round __plan_mode))
   (setq _predict_mode (round __predict_mode))
   (setq _moving_humans __moving_humans)
   (setq _still_humans __still_humans)
   self)
  (:plan_mode
   (&optional __plan_mode)
   (if __plan_mode (setq _plan_mode __plan_mode)) _plan_mode)
  (:predict_mode
   (&optional __predict_mode)
   (if __predict_mode (setq _predict_mode __predict_mode)) _predict_mode)
  (:moving_humans
   (&optional __moving_humans)
   (if __moving_humans (setq _moving_humans __moving_humans)) _moving_humans)
  (:still_humans
   (&optional __still_humans)
   (if __still_humans (setq _still_humans __still_humans)) _still_humans)
  (:serialization-length
   ()
   (+
    ;; int8 _plan_mode
    1
    ;; int8 _predict_mode
    1
    ;; int32[] _moving_humans
    (* 4    (length _moving_humans)) 4
    ;; int32[] _still_humans
    (* 4    (length _still_humans)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _plan_mode
       (write-byte _plan_mode s)
     ;; int8 _predict_mode
       (write-byte _predict_mode s)
     ;; int32[] _moving_humans
     (write-long (length _moving_humans) s)
     (dotimes (i (length _moving_humans))
       (write-long (elt _moving_humans i) s)
       )
     ;; int32[] _still_humans
     (write-long (length _still_humans) s)
     (dotimes (i (length _still_humans))
       (write-long (elt _still_humans i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _plan_mode
     (setq _plan_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _plan_mode 127) (setq _plan_mode (- _plan_mode 256)))
   ;; int8 _predict_mode
     (setq _predict_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _predict_mode 127) (setq _predict_mode (- _predict_mode 256)))
   ;; int32[] _moving_humans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _moving_humans (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _moving_humans i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _still_humans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _still_humans (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _still_humans i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get hateb_local_planner::PlanningMode :md5sum-) "ee45c05d7fb63156ab0e68657c7bc8e3")
(setf (get hateb_local_planner::PlanningMode :datatype-) "hateb_local_planner/PlanningMode")
(setf (get hateb_local_planner::PlanningMode :definition-)
      "int8    plan_mode
int8    predict_mode
int32[] moving_humans
int32[] still_humans

")



(provide :hateb_local_planner/PlanningMode "ee45c05d7fb63156ab0e68657c7bc8e3")


