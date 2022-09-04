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

class Led {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.LED1 = null;
      this.LED2 = null;
      this.LED3 = null;
    }
    else {
      if (initObj.hasOwnProperty('LED1')) {
        this.LED1 = initObj.LED1
      }
      else {
        this.LED1 = 0;
      }
      if (initObj.hasOwnProperty('LED2')) {
        this.LED2 = initObj.LED2
      }
      else {
        this.LED2 = 0;
      }
      if (initObj.hasOwnProperty('LED3')) {
        this.LED3 = initObj.LED3
      }
      else {
        this.LED3 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Led
    // Serialize message field [LED1]
    bufferOffset = _serializer.int32(obj.LED1, buffer, bufferOffset);
    // Serialize message field [LED2]
    bufferOffset = _serializer.int32(obj.LED2, buffer, bufferOffset);
    // Serialize message field [LED3]
    bufferOffset = _serializer.int32(obj.LED3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Led
    let len;
    let data = new Led(null);
    // Deserialize message field [LED1]
    data.LED1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [LED2]
    data.LED2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [LED3]
    data.LED3 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'riki_msgs/Led';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '872502f8a1825d221fb8b98672c92037';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 LED1
    int32 LED2
    int32 LED3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Led(null);
    if (msg.LED1 !== undefined) {
      resolved.LED1 = msg.LED1;
    }
    else {
      resolved.LED1 = 0
    }

    if (msg.LED2 !== undefined) {
      resolved.LED2 = msg.LED2;
    }
    else {
      resolved.LED2 = 0
    }

    if (msg.LED3 !== undefined) {
      resolved.LED3 = msg.LED3;
    }
    else {
      resolved.LED3 = 0
    }

    return resolved;
    }
};

module.exports = Led;
