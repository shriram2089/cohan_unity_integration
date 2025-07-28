;; Auto-generated. Do not edit!


(when (boundp 'agent_path_prediction::HumanInfo)
  (if (not (find-package "AGENT_PATH_PREDICTION"))
    (make-package "AGENT_PATH_PREDICTION"))
  (shadow 'HumanInfo (find-package "AGENT_PATH_PREDICTION")))
(unless (find-package "AGENT_PATH_PREDICTION::HUMANINFO")
  (make-package "AGENT_PATH_PREDICTION::HUMANINFO"))

(in-package "ROS")
;;//! \htmlinclude HumanInfo.msg.html


(defclass agent_path_prediction::HumanInfo
  :super ros::object
  :slots (_id _state _dist _name ))

(defmethod agent_path_prediction::HumanInfo
  (:init
   (&key
    ((:id __id) 0)
    ((:state __state) 0)
    ((:dist __dist) 0.0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _state (round __state))
   (setq _dist (float __dist))
   (setq _name (string __name))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int8 _state
    1
    ;; float32 _dist
    4
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int8 _state
       (write-byte _state s)
     ;; float32 _dist
       (sys::poke _dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;; float32 _dist
     (setq _dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get agent_path_prediction::HumanInfo :md5sum-) "f9b027edfb328a8dba300480146782d2")
(setf (get agent_path_prediction::HumanInfo :datatype-) "agent_path_prediction/HumanInfo")
(setf (get agent_path_prediction::HumanInfo :definition-)
      "int32   id
int8    state
float32 dist
string  name
# geometry_msgs/Twist vel                    

")



(provide :agent_path_prediction/HumanInfo "f9b027edfb328a8dba300480146782d2")


