;; Auto-generated. Do not edit!


(when (boundp 'cohan_msgs::PassageType)
  (if (not (find-package "COHAN_MSGS"))
    (make-package "COHAN_MSGS"))
  (shadow 'PassageType (find-package "COHAN_MSGS")))
(unless (find-package "COHAN_MSGS::PASSAGETYPE")
  (make-package "COHAN_MSGS::PASSAGETYPE"))

(in-package "ROS")
;;//! \htmlinclude PassageType.msg.html


(intern "*OPEN*" (find-package "COHAN_MSGS::PASSAGETYPE"))
(shadow '*OPEN* (find-package "COHAN_MSGS::PASSAGETYPE"))
(defconstant cohan_msgs::PassageType::*OPEN* 0)
(intern "*DOOR*" (find-package "COHAN_MSGS::PASSAGETYPE"))
(shadow '*DOOR* (find-package "COHAN_MSGS::PASSAGETYPE"))
(defconstant cohan_msgs::PassageType::*DOOR* 1)
(intern "*PILLAR*" (find-package "COHAN_MSGS::PASSAGETYPE"))
(shadow '*PILLAR* (find-package "COHAN_MSGS::PASSAGETYPE"))
(defconstant cohan_msgs::PassageType::*PILLAR* 2)
(intern "*WALL*" (find-package "COHAN_MSGS::PASSAGETYPE"))
(shadow '*WALL* (find-package "COHAN_MSGS::PASSAGETYPE"))
(defconstant cohan_msgs::PassageType::*WALL* 3)

(defun cohan_msgs::PassageType-to-symbol (const)
  (cond
        ((= const 0) 'cohan_msgs::PassageType::*OPEN*)
        ((= const 1) 'cohan_msgs::PassageType::*DOOR*)
        ((= const 2) 'cohan_msgs::PassageType::*PILLAR*)
        ((= const 3) 'cohan_msgs::PassageType::*WALL*)
        (t nil)))

(defclass cohan_msgs::PassageType
  :super ros::object
  :slots (_type ))

(defmethod cohan_msgs::PassageType
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; int8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;;
   self)
  )

(setf (get cohan_msgs::PassageType :md5sum-) "13e6510bc35715bfa6e5fca9e28a30ac")
(setf (get cohan_msgs::PassageType :datatype-) "cohan_msgs/PassageType")
(setf (get cohan_msgs::PassageType :definition-)
      "int8 OPEN=0
int8 DOOR=1
int8 PILLAR=2
int8 WALL=3

int8 type
")



(provide :cohan_msgs/PassageType "13e6510bc35715bfa6e5fca9e28a30ac")


