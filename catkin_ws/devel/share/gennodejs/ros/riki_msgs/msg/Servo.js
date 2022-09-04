// Auto-generated. Do not edit!

// (in-package riki_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Servo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Servo1 = null;
      this.Servo2 = null;
    }
    else {
      if (initObj.hasOwnProperty('Servo1')) {
        this.Servo1 = initObj.Servo1
      }
      else {
        this.Servo1 = 0;
      }
      if (initObj.hasOwnProperty('Servo2')) {
        this.Servo2 = initObj.Servo2
      }
      else {
        this.Servo2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Servo
    // Serialize message field [Servo1]
    bufferOffset = _serializer.int32(obj.Servo1, buffer, bufferOffset);
    // Serialize message field [Servo2]
    bufferOffset = _serializer.int32(obj.Servo2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Servo
    let len;
    let data = new Servo(null);
    // Deserialize message field [Servo1]
    data.Servo1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Servo2]
    data.Servo2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'riki_msgs/Servo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b1d39e7bb90536edb373b61068d04284';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 Servo1
    int32 Servo2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Servo(null);
    if (msg.Servo1 !== undefined) {
      resolved.Servo1 = msg.Servo1;
    }
    else {
      resolved.Servo1 = 0
    }

    if (msg.Servo2 !== undefined) {
      resolved.Servo2 = msg.Servo2;
    }
    else {
      resolved.Servo2 = 0
    }

    return resolved;
    }
};

module.exports = Servo;
