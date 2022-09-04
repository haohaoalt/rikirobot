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

class Buzzer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.BUZZER1 = null;
    }
    else {
      if (initObj.hasOwnProperty('BUZZER1')) {
        this.BUZZER1 = initObj.BUZZER1
      }
      else {
        this.BUZZER1 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Buzzer
    // Serialize message field [BUZZER1]
    bufferOffset = _serializer.int32(obj.BUZZER1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Buzzer
    let len;
    let data = new Buzzer(null);
    // Deserialize message field [BUZZER1]
    data.BUZZER1 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'riki_msgs/Buzzer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '961d0bf227fa8152deae5f5d68ec086e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 BUZZER1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Buzzer(null);
    if (msg.BUZZER1 !== undefined) {
      resolved.BUZZER1 = msg.BUZZER1;
    }
    else {
      resolved.BUZZER1 = 0
    }

    return resolved;
    }
};

module.exports = Buzzer;
