# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/haopi3/rikirobot/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/haopi3/rikirobot/catkin_ws/build

# Include any dependencies generated for this target.
include lidar/ydlidar/CMakeFiles/ydlidar_client.dir/depend.make

# Include the progress variables for this target.
include lidar/ydlidar/CMakeFiles/ydlidar_client.dir/progress.make

# Include the compile flags for this target's objects.
include lidar/ydlidar/CMakeFiles/ydlidar_client.dir/flags.make

lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o: lidar/ydlidar/CMakeFiles/ydlidar_client.dir/flags.make
lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o: /home/haopi3/rikirobot/catkin_ws/src/lidar/ydlidar/src/ydlidar_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/haopi3/rikirobot/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o"
	cd /home/haopi3/rikirobot/catkin_ws/build/lidar/ydlidar && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o -c /home/haopi3/rikirobot/catkin_ws/src/lidar/ydlidar/src/ydlidar_client.cpp

lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.i"
	cd /home/haopi3/rikirobot/catkin_ws/build/lidar/ydlidar && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/haopi3/rikirobot/catkin_ws/src/lidar/ydlidar/src/ydlidar_client.cpp > CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.i

lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.s"
	cd /home/haopi3/rikirobot/catkin_ws/build/lidar/ydlidar && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/haopi3/rikirobot/catkin_ws/src/lidar/ydlidar/src/ydlidar_client.cpp -o CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.s

lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.requires:

.PHONY : lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.requires

lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.provides: lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.requires
	$(MAKE) -f lidar/ydlidar/CMakeFiles/ydlidar_client.dir/build.make lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.provides.build
.PHONY : lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.provides

lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.provides.build: lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o


# Object files for target ydlidar_client
ydlidar_client_OBJECTS = \
"CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o"

# External object files for target ydlidar_client
ydlidar_client_EXTERNAL_OBJECTS =

/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: lidar/ydlidar/CMakeFiles/ydlidar_client.dir/build.make
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /opt/ros/kinetic/lib/libroscpp.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /opt/ros/kinetic/lib/librosconsole.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /opt/ros/kinetic/lib/librostime.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /opt/ros/kinetic/lib/libcpp_common.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client: lidar/ydlidar/CMakeFiles/ydlidar_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/haopi3/rikirobot/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client"
	cd /home/haopi3/rikirobot/catkin_ws/build/lidar/ydlidar && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ydlidar_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lidar/ydlidar/CMakeFiles/ydlidar_client.dir/build: /home/haopi3/rikirobot/catkin_ws/devel/lib/ydlidar/ydlidar_client

.PHONY : lidar/ydlidar/CMakeFiles/ydlidar_client.dir/build

lidar/ydlidar/CMakeFiles/ydlidar_client.dir/requires: lidar/ydlidar/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.requires

.PHONY : lidar/ydlidar/CMakeFiles/ydlidar_client.dir/requires

lidar/ydlidar/CMakeFiles/ydlidar_client.dir/clean:
	cd /home/haopi3/rikirobot/catkin_ws/build/lidar/ydlidar && $(CMAKE_COMMAND) -P CMakeFiles/ydlidar_client.dir/cmake_clean.cmake
.PHONY : lidar/ydlidar/CMakeFiles/ydlidar_client.dir/clean

lidar/ydlidar/CMakeFiles/ydlidar_client.dir/depend:
	cd /home/haopi3/rikirobot/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/haopi3/rikirobot/catkin_ws/src /home/haopi3/rikirobot/catkin_ws/src/lidar/ydlidar /home/haopi3/rikirobot/catkin_ws/build /home/haopi3/rikirobot/catkin_ws/build/lidar/ydlidar /home/haopi3/rikirobot/catkin_ws/build/lidar/ydlidar/CMakeFiles/ydlidar_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lidar/ydlidar/CMakeFiles/ydlidar_client.dir/depend

