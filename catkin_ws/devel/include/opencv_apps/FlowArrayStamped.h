// Generated by gencpp from file opencv_apps/FlowArrayStamped.msg
// DO NOT EDIT!


#ifndef OPENCV_APPS_MESSAGE_FLOWARRAYSTAMPED_H
#define OPENCV_APPS_MESSAGE_FLOWARRAYSTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <opencv_apps/Flow.h>

namespace opencv_apps
{
template <class ContainerAllocator>
struct FlowArrayStamped_
{
  typedef FlowArrayStamped_<ContainerAllocator> Type;

  FlowArrayStamped_()
    : header()
    , flow()  {
    }
  FlowArrayStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , flow(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::opencv_apps::Flow_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::opencv_apps::Flow_<ContainerAllocator> >::other >  _flow_type;
  _flow_type flow;





  typedef boost::shared_ptr< ::opencv_apps::FlowArrayStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::opencv_apps::FlowArrayStamped_<ContainerAllocator> const> ConstPtr;

}; // struct FlowArrayStamped_

typedef ::opencv_apps::FlowArrayStamped_<std::allocator<void> > FlowArrayStamped;

typedef boost::shared_ptr< ::opencv_apps::FlowArrayStamped > FlowArrayStampedPtr;
typedef boost::shared_ptr< ::opencv_apps::FlowArrayStamped const> FlowArrayStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::opencv_apps::FlowArrayStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::opencv_apps::FlowArrayStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace opencv_apps

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'opencv_apps': ['/home/haopi3/rikirobot/catkin_ws/src/opencv_apps/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::opencv_apps::FlowArrayStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::opencv_apps::FlowArrayStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_apps::FlowArrayStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_apps::FlowArrayStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_apps::FlowArrayStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_apps::FlowArrayStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::opencv_apps::FlowArrayStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b55faf909449963372b92417925b68cc";
  }

  static const char* value(const ::opencv_apps::FlowArrayStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb55faf9094499633ULL;
  static const uint64_t static_value2 = 0x72b92417925b68ccULL;
};

template<class ContainerAllocator>
struct DataType< ::opencv_apps::FlowArrayStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "opencv_apps/FlowArrayStamped";
  }

  static const char* value(const ::opencv_apps::FlowArrayStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::opencv_apps::FlowArrayStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
Flow[] flow\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: opencv_apps/Flow\n\
Point2D point\n\
Point2D velocity\n\
\n\
================================================================================\n\
MSG: opencv_apps/Point2D\n\
float64 x\n\
float64 y\n\
\n\
";
  }

  static const char* value(const ::opencv_apps::FlowArrayStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::opencv_apps::FlowArrayStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.flow);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FlowArrayStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::opencv_apps::FlowArrayStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::opencv_apps::FlowArrayStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "flow[]" << std::endl;
    for (size_t i = 0; i < v.flow.size(); ++i)
    {
      s << indent << "  flow[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::opencv_apps::Flow_<ContainerAllocator> >::stream(s, indent + "    ", v.flow[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPENCV_APPS_MESSAGE_FLOWARRAYSTAMPED_H
