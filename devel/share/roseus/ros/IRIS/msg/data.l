;; Auto-generated. Do not edit!


(when (boundp 'IRIS::data)
  (if (not (find-package "IRIS"))
    (make-package "IRIS"))
  (shadow 'data (find-package "IRIS")))
(unless (find-package "IRIS::DATA")
  (make-package "IRIS::DATA"))

(in-package "ROS")
;;//! \htmlinclude data.msg.html


(defclass IRIS::data
  :super ros::object
  :slots (_panjang _lebar _tinggi _luas ))

(defmethod IRIS::data
  (:init
   (&key
    ((:panjang __panjang) 0)
    ((:lebar __lebar) 0)
    ((:tinggi __tinggi) 0)
    ((:luas __luas) 0)
    )
   (send-super :init)
   (setq _panjang (round __panjang))
   (setq _lebar (round __lebar))
   (setq _tinggi (round __tinggi))
   (setq _luas (round __luas))
   self)
  (:panjang
   (&optional __panjang)
   (if __panjang (setq _panjang __panjang)) _panjang)
  (:lebar
   (&optional __lebar)
   (if __lebar (setq _lebar __lebar)) _lebar)
  (:tinggi
   (&optional __tinggi)
   (if __tinggi (setq _tinggi __tinggi)) _tinggi)
  (:luas
   (&optional __luas)
   (if __luas (setq _luas __luas)) _luas)
  (:serialization-length
   ()
   (+
    ;; int32 _panjang
    4
    ;; int32 _lebar
    4
    ;; int32 _tinggi
    4
    ;; int32 _luas
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _panjang
       (write-long _panjang s)
     ;; int32 _lebar
       (write-long _lebar s)
     ;; int32 _tinggi
       (write-long _tinggi s)
     ;; int32 _luas
       (write-long _luas s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _panjang
     (setq _panjang (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lebar
     (setq _lebar (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _tinggi
     (setq _tinggi (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _luas
     (setq _luas (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get IRIS::data :md5sum-) "0cd4e5dd6f34bbec68ae4feebbf03ae5")
(setf (get IRIS::data :datatype-) "IRIS/data")
(setf (get IRIS::data :definition-)
      "int32 panjang
int32 lebar
int32 tinggi
int32 luas
")



(provide :IRIS/data "0cd4e5dd6f34bbec68ae4feebbf03ae5")


