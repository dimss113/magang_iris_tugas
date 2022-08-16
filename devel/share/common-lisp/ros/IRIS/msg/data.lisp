; Auto-generated. Do not edit!


(cl:in-package IRIS-msg)


;//! \htmlinclude data.msg.html

(cl:defclass <data> (roslisp-msg-protocol:ros-message)
  ((panjang
    :reader panjang
    :initarg :panjang
    :type cl:integer
    :initform 0)
   (lebar
    :reader lebar
    :initarg :lebar
    :type cl:integer
    :initform 0)
   (tinggi
    :reader tinggi
    :initarg :tinggi
    :type cl:integer
    :initform 0)
   (luas
    :reader luas
    :initarg :luas
    :type cl:integer
    :initform 0))
)

(cl:defclass data (<data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name IRIS-msg:<data> is deprecated: use IRIS-msg:data instead.")))

(cl:ensure-generic-function 'panjang-val :lambda-list '(m))
(cl:defmethod panjang-val ((m <data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS-msg:panjang-val is deprecated.  Use IRIS-msg:panjang instead.")
  (panjang m))

(cl:ensure-generic-function 'lebar-val :lambda-list '(m))
(cl:defmethod lebar-val ((m <data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS-msg:lebar-val is deprecated.  Use IRIS-msg:lebar instead.")
  (lebar m))

(cl:ensure-generic-function 'tinggi-val :lambda-list '(m))
(cl:defmethod tinggi-val ((m <data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS-msg:tinggi-val is deprecated.  Use IRIS-msg:tinggi instead.")
  (tinggi m))

(cl:ensure-generic-function 'luas-val :lambda-list '(m))
(cl:defmethod luas-val ((m <data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS-msg:luas-val is deprecated.  Use IRIS-msg:luas instead.")
  (luas m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <data>) ostream)
  "Serializes a message object of type '<data>"
  (cl:let* ((signed (cl:slot-value msg 'panjang)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lebar)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tinggi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'luas)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <data>) istream)
  "Deserializes a message object of type '<data>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'panjang) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lebar) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tinggi) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'luas) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<data>)))
  "Returns string type for a message object of type '<data>"
  "IRIS/data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data)))
  "Returns string type for a message object of type 'data"
  "IRIS/data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<data>)))
  "Returns md5sum for a message object of type '<data>"
  "0cd4e5dd6f34bbec68ae4feebbf03ae5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'data)))
  "Returns md5sum for a message object of type 'data"
  "0cd4e5dd6f34bbec68ae4feebbf03ae5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<data>)))
  "Returns full string definition for message of type '<data>"
  (cl:format cl:nil "int32 panjang~%int32 lebar~%int32 tinggi~%int32 luas~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'data)))
  "Returns full string definition for message of type 'data"
  (cl:format cl:nil "int32 panjang~%int32 lebar~%int32 tinggi~%int32 luas~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <data>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <data>))
  "Converts a ROS message object to a list"
  (cl:list 'data
    (cl:cons ':panjang (panjang msg))
    (cl:cons ':lebar (lebar msg))
    (cl:cons ':tinggi (tinggi msg))
    (cl:cons ':luas (luas msg))
))
