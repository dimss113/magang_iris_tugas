// Auto-generated. Do not edit!

// (in-package IRIS.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.panjang = null;
      this.lebar = null;
      this.tinggi = null;
      this.luas = null;
    }
    else {
      if (initObj.hasOwnProperty('panjang')) {
        this.panjang = initObj.panjang
      }
      else {
        this.panjang = 0;
      }
      if (initObj.hasOwnProperty('lebar')) {
        this.lebar = initObj.lebar
      }
      else {
        this.lebar = 0;
      }
      if (initObj.hasOwnProperty('tinggi')) {
        this.tinggi = initObj.tinggi
      }
      else {
        this.tinggi = 0;
      }
      if (initObj.hasOwnProperty('luas')) {
        this.luas = initObj.luas
      }
      else {
        this.luas = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type data
    // Serialize message field [panjang]
    bufferOffset = _serializer.int32(obj.panjang, buffer, bufferOffset);
    // Serialize message field [lebar]
    bufferOffset = _serializer.int32(obj.lebar, buffer, bufferOffset);
    // Serialize message field [tinggi]
    bufferOffset = _serializer.int32(obj.tinggi, buffer, bufferOffset);
    // Serialize message field [luas]
    bufferOffset = _serializer.int32(obj.luas, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type data
    let len;
    let data = new data(null);
    // Deserialize message field [panjang]
    data.panjang = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lebar]
    data.lebar = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tinggi]
    data.tinggi = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [luas]
    data.luas = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'IRIS/data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0cd4e5dd6f34bbec68ae4feebbf03ae5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 panjang
    int32 lebar
    int32 tinggi
    int32 luas
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new data(null);
    if (msg.panjang !== undefined) {
      resolved.panjang = msg.panjang;
    }
    else {
      resolved.panjang = 0
    }

    if (msg.lebar !== undefined) {
      resolved.lebar = msg.lebar;
    }
    else {
      resolved.lebar = 0
    }

    if (msg.tinggi !== undefined) {
      resolved.tinggi = msg.tinggi;
    }
    else {
      resolved.tinggi = 0
    }

    if (msg.luas !== undefined) {
      resolved.luas = msg.luas;
    }
    else {
      resolved.luas = 0
    }

    return resolved;
    }
};

module.exports = data;
