sudo cp 58-riki.rules /etc/udev/rules.d/
sudo cp 558-orbbec-usb.rules /etc/udev/rules.d/
sudo cp 10-local-rpi.rules /etc/udev/rules.d/
sudo cp 40-scratch.rules /etc/udev/rules.d/
sudo cp 49-teensy.rules /etc/udev/rules.d/
sudo cp 60-flashgo.rules /etc/udev/rules.d/
sudo cp 99-com.rules /etc/udev/rules.d/
sudo cp name.rules /etc/udev/rules.d/
sudo cp primesense-usb.rules /etc/udev/rules.d/

sudo apt-get update

sudo apt-get install python-gudev
sudo apt-get install -y avahi-daemon
sudo apt-get install -y openssh-server
sudo apt-get install -y arduino-core
sudo easy_install pip
sudo pip install -U platformio
sudo rm -rf ~/.platformio/

ver=$(rosversion -d)
sudo apt-get install -y libusb-dev libspnav-dev  libbluetooth-dev libcwiid-dev
sudo apt-get install -y git vim
sudo pip install pybluez
sudo apt-get install -y libv4l-dev 
sudo apt-get install -y build-essential
sudo apt-get install -y chrony
sudo apt-get install -y libbullet-dev 
sudo apt-get install -y libudev-dev
sudo apt-get install -y libusb-dev
sudo apt-get install -y mini-httpd
sudo apt-get install -y ros-$ver\-roslint
sudo apt-get install -y ros-$ver\-rosserial
sudo apt-get install -y ros-$ver\-gmapping
sudo apt-get install -y ros-$ver\-navigation
sudo apt-get install -y ros-$ver\-map-server
sudo apt-get install -y ros-$ver\-rgbd-launch
sudo apt-get install -y ros-$ver\-costmap-2d
sudo apt-get install -y ros-$ver\-camera-info-manager
sudo apt-get install -y ros-$ver\-image-transport
sudo apt-get install -y ros-$ver\-teleop-twist-keyboard 
sudo apt-get install -y ros-$ver\-robot-upstart
sudo apt-get install -y ros-$ver\-slam-karto
sudo apt-get install -y ros-$ver\-geographic-msgs 
sudo apt-get install -y ros-$ver\-rosbridge-suite
sudo apt-get install -y ros-$ver\-robot-pose-publisher
sudo apt-get install -y ros-$ver\-tf2-web-republisher
sudo apt-get install -y ros-$ver\-web-video-server
sudo apt-get install ros-kinetic-move-base
sudo apt-get install ros-kinetic-imu-complementary-filter
sudo apt-get install ros-kinetic-amcl
sudo apt-get install ros-kinetic-frontier-exploration
sudo apt-get install ros-kinetic-hector-slam

echo "source ~/rikirobot/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo usermod -aG dialout $USER

echo "ROS Packages Installed Successfully"
