;; Auto-generated. Do not edit!


(when (boundp 'hateb_local_planner::OptimizationCost)
  (if (not (find-package "HATEB_LOCAL_PLANNER"))
    (make-package "HATEB_LOCAL_PLANNER"))
  (shadow 'OptimizationCost (find-package "HATEB_LOCAL_PLANNER")))
(unless (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST")
  (make-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))

(in-package "ROS")
;;//! \htmlinclude OptimizationCost.msg.html


(intern "*TIME_OPTIMALITY*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*TIME_OPTIMALITY* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*TIME_OPTIMALITY* 0)
(intern "*KINEMATIC_DD*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*KINEMATIC_DD* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*KINEMATIC_DD* 1)
(intern "*KINEMATIC_CL*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*KINEMATIC_CL* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*KINEMATIC_CL* 2)
(intern "*ROBOT_VEL*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*ROBOT_VEL* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*ROBOT_VEL* 3)
(intern "*AGENT_VEL*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*AGENT_VEL* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*AGENT_VEL* 4)
(intern "*ROBOT_ACC*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*ROBOT_ACC* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*ROBOT_ACC* 5)
(intern "*AGENT_ACC*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*AGENT_ACC* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*AGENT_ACC* 6)
(intern "*OBSTACLE*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*OBSTACLE* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*OBSTACLE* 7)
(intern "*DYNAMIC_OBSTACLE*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*DYNAMIC_OBSTACLE* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*DYNAMIC_OBSTACLE* 8)
(intern "*VIA_POINT*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*VIA_POINT* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*VIA_POINT* 9)
(intern "*AGENT_ROBOT_SAFETY*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*AGENT_ROBOT_SAFETY* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*AGENT_ROBOT_SAFETY* 10)
(intern "*AGENT_AGENT_SAFETY*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*AGENT_AGENT_SAFETY* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*AGENT_AGENT_SAFETY* 11)
(intern "*AGENT_ROBOT_TTC*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*AGENT_ROBOT_TTC* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*AGENT_ROBOT_TTC* 12)
(intern "*AGENT_ROBOT_REL_VEL*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*AGENT_ROBOT_REL_VEL* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*AGENT_ROBOT_REL_VEL* 13)
(intern "*AGENT_ROBOT_MIN_DIST*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*AGENT_ROBOT_MIN_DIST* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*AGENT_ROBOT_MIN_DIST* 14)
(intern "*AGENT_ROBOT_VISIBILITY*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*AGENT_ROBOT_VISIBILITY* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*AGENT_ROBOT_VISIBILITY* 15)
(intern "*AGENT_ROBOT_TTCLOSEST*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*AGENT_ROBOT_TTCLOSEST* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*AGENT_ROBOT_TTCLOSEST* 16)
(intern "*AGENT_ROBOT_TTCPLUS*" (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(shadow '*AGENT_ROBOT_TTCPLUS* (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOST"))
(defconstant hateb_local_planner::OptimizationCost::*AGENT_ROBOT_TTCPLUS* 17)

(defun hateb_local_planner::OptimizationCost-to-symbol (const)
  (cond
        ((= const 0) 'hateb_local_planner::OptimizationCost::*TIME_OPTIMALITY*)
        ((= const 1) 'hateb_local_planner::OptimizationCost::*KINEMATIC_DD*)
        ((= const 2) 'hateb_local_planner::OptimizationCost::*KINEMATIC_CL*)
        ((= const 3) 'hateb_local_planner::OptimizationCost::*ROBOT_VEL*)
        ((= const 4) 'hateb_local_planner::OptimizationCost::*AGENT_VEL*)
        ((= const 5) 'hateb_local_planner::OptimizationCost::*ROBOT_ACC*)
        ((= const 6) 'hateb_local_planner::OptimizationCost::*AGENT_ACC*)
        ((= const 7) 'hateb_local_planner::OptimizationCost::*OBSTACLE*)
        ((= const 8) 'hateb_local_planner::OptimizationCost::*DYNAMIC_OBSTACLE*)
        ((= const 9) 'hateb_local_planner::OptimizationCost::*VIA_POINT*)
        ((= const 10) 'hateb_local_planner::OptimizationCost::*AGENT_ROBOT_SAFETY*)
        ((= const 11) 'hateb_local_planner::OptimizationCost::*AGENT_AGENT_SAFETY*)
        ((= const 12) 'hateb_local_planner::OptimizationCost::*AGENT_ROBOT_TTC*)
        ((= const 13) 'hateb_local_planner::OptimizationCost::*AGENT_ROBOT_REL_VEL*)
        ((= const 14) 'hateb_local_planner::OptimizationCost::*AGENT_ROBOT_MIN_DIST*)
        ((= const 15) 'hateb_local_planner::OptimizationCost::*AGENT_ROBOT_VISIBILITY*)
        ((= const 16) 'hateb_local_planner::OptimizationCost::*AGENT_ROBOT_TTClosest*)
        ((= const 17) 'hateb_local_planner::OptimizationCost::*AGENT_ROBOT_TTCplus*)
        (t nil)))

(defclass hateb_local_planner::OptimizationCost
  :super ros::object
  :slots (_type _cost _costs_arr ))

(defmethod hateb_local_planner::OptimizationCost
  (:init
   (&key
    ((:type __type) 0)
    ((:cost __cost) 0.0)
    ((:costs_arr __costs_arr) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _cost (float __cost))
   (setq _costs_arr __costs_arr)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:cost
   (&optional __cost)
   (if __cost (setq _cost __cost)) _cost)
  (:costs_arr
   (&optional __costs_arr)
   (if __costs_arr (setq _costs_arr __costs_arr)) _costs_arr)
  (:serialization-length
   ()
   (+
    ;; int8 _type
    1
    ;; float64 _cost
    8
    ;; float64[] _costs_arr
    (* 8    (length _costs_arr)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _type
       (write-byte _type s)
     ;; float64 _cost
       (sys::poke _cost (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _costs_arr
     (write-long (length _costs_arr) s)
     (dotimes (i (length _costs_arr))
       (sys::poke (elt _costs_arr i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; float64 _cost
     (setq _cost (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _costs_arr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _costs_arr (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _costs_arr i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get hateb_local_planner::OptimizationCost :md5sum-) "7d4c381ecf0f9fe4378c92efd02e5a2d")
(setf (get hateb_local_planner::OptimizationCost :datatype-) "hateb_local_planner/OptimizationCost")
(setf (get hateb_local_planner::OptimizationCost :definition-)
      "# cost types
int8 TIME_OPTIMALITY=0
int8 KINEMATIC_DD=1
int8 KINEMATIC_CL=2
int8 ROBOT_VEL=3
int8 AGENT_VEL=4
int8 ROBOT_ACC=5
int8 AGENT_ACC=6
int8 OBSTACLE=7
int8 DYNAMIC_OBSTACLE=8
int8 VIA_POINT=9
int8 AGENT_ROBOT_SAFETY=10
int8 AGENT_AGENT_SAFETY=11
int8 AGENT_ROBOT_TTC=12
int8 AGENT_ROBOT_REL_VEL=13
int8 AGENT_ROBOT_MIN_DIST=14
int8 AGENT_ROBOT_VISIBILITY=15
int8 AGENT_ROBOT_TTClosest=16
int8 AGENT_ROBOT_TTCplus=17

int8    type
float64 cost
float64[] costs_arr

")



(provide :hateb_local_planner/OptimizationCost "7d4c381ecf0f9fe4378c92efd02e5a2d")


