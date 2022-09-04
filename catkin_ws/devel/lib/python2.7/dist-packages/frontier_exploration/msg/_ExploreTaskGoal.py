# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from frontier_exploration/ExploreTaskGoal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class ExploreTaskGoal(genpy.Message):
  _md5sum = "b5f41b52fbca52a68ff7363f86187dbf"
  _type = "frontier_exploration/ExploreTaskGoal"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#Boundary for frontier exploration
geometry_msgs/PolygonStamped explore_boundary
#Center point for frontier exploration, inside explore_boundary
geometry_msgs/PointStamped explore_center

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['explore_boundary','explore_center']
  _slot_types = ['geometry_msgs/PolygonStamped','geometry_msgs/PointStamped']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       explore_boundary,explore_center

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ExploreTaskGoal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.explore_boundary is None:
        self.explore_boundary = geometry_msgs.msg.PolygonStamped()
      if self.explore_center is None:
        self.explore_center = geometry_msgs.msg.PointStamped()
    else:
      self.explore_boundary = geometry_msgs.msg.PolygonStamped()
      self.explore_center = geometry_msgs.msg.PointStamped()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.explore_boundary.header.seq, _x.explore_boundary.header.stamp.secs, _x.explore_boundary.header.stamp.nsecs))
      _x = self.explore_boundary.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.explore_boundary.polygon.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.explore_boundary.polygon.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_3I().pack(_x.explore_center.header.seq, _x.explore_center.header.stamp.secs, _x.explore_center.header.stamp.nsecs))
      _x = self.explore_center.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d().pack(_x.explore_center.point.x, _x.explore_center.point.y, _x.explore_center.point.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.explore_boundary is None:
        self.explore_boundary = geometry_msgs.msg.PolygonStamped()
      if self.explore_center is None:
        self.explore_center = geometry_msgs.msg.PointStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.explore_boundary.header.seq, _x.explore_boundary.header.stamp.secs, _x.explore_boundary.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.explore_boundary.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.explore_boundary.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.explore_boundary.polygon.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.explore_boundary.polygon.points.append(val1)
      _x = self
      start = end
      end += 12
      (_x.explore_center.header.seq, _x.explore_center.header.stamp.secs, _x.explore_center.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.explore_center.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.explore_center.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.explore_center.point.x, _x.explore_center.point.y, _x.explore_center.point.z,) = _get_struct_3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.explore_boundary.header.seq, _x.explore_boundary.header.stamp.secs, _x.explore_boundary.header.stamp.nsecs))
      _x = self.explore_boundary.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.explore_boundary.polygon.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.explore_boundary.polygon.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_3I().pack(_x.explore_center.header.seq, _x.explore_center.header.stamp.secs, _x.explore_center.header.stamp.nsecs))
      _x = self.explore_center.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d().pack(_x.explore_center.point.x, _x.explore_center.point.y, _x.explore_center.point.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.explore_boundary is None:
        self.explore_boundary = geometry_msgs.msg.PolygonStamped()
      if self.explore_center is None:
        self.explore_center = geometry_msgs.msg.PointStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.explore_boundary.header.seq, _x.explore_boundary.header.stamp.secs, _x.explore_boundary.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.explore_boundary.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.explore_boundary.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.explore_boundary.polygon.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.explore_boundary.polygon.points.append(val1)
      _x = self
      start = end
      end += 12
      (_x.explore_center.header.seq, _x.explore_center.header.stamp.secs, _x.explore_center.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.explore_center.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.explore_center.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.explore_center.point.x, _x.explore_center.point.y, _x.explore_center.point.z,) = _get_struct_3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
