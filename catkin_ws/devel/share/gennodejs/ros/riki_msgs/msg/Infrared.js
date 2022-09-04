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

class Infrared {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front = null;
      this.rear = null;
    }
    else {
      if (initObj.hasOwnProperty('front')) {
        this.front = initObj.front
      }
      else {
        this.front = 0.0;
      }
      if (initObj.hasOwnProperty('rear')) {
        this.rear = initObj.rear
      }
      else {
        this.rear = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Infrared
    // Serialize message field [front]
    bufferOffset = _serializer.float32(obj.front, buffer, bufferOffset);
    // Serialize message field [rear]
    bufferOffset = _serializer.float32(obj.rear, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Infrared
    let len;
    let data = new Infrared(null);
    // Deserialize message field [front]
    data.front = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear]
    data.rear = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'riki_msgs/Infrared';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25f4ca8647150542dc24ea09b80ff4f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 front
    float32 rear
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Infrared(null);
    if (msg.front !== undefined) {
      resolved.front = msg.front;
    }
    else {
      resolved.front = 0.0
    }

    if (msg.rear !== undefined) {
      resolved.rear = msg.rear;
    }
    else {
      resolved.rear = 0.0
    }

    return resolved;
    }
};

module.exports = Infrared;
