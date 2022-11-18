# rikirobot tutorial
## 01 change mirros and install ros
更换系统源
```
wget http://fishros.com/install -O fishros && . fishros
```
一键安装ROS
```
wget http://fishros.com/install -O fishros && . fishros
```


## 02 git rep and catkin_make
安装git
```
sudo apt-get install git
```

下载源码

```
git clone https://github.com/haohaoalt/rikirobot.git
```
更改文件权限
```
cd /home/rikirobot/rules
chmod 777 -R ~/catkin_ws/src/ 
chmod +x installpackage.sh
```
安装依赖
```
cd rikirobot/rules
./installpackage.sh
cd ..
```

为了防止树莓派编译卡死,更改部分系统参数确保编译成功

第一步：确保系统中有足够的空间来用做swap交换空间，我准备在一个独立的文件系统中添加一个swap交换文件，在/opt/image中添加2G的swap交换文件
```
sudo mkdir image
sudo touch swap
```
 第二步：添加交换文件并设置其大小为2G，使用如下命令
```
sudo dd if=/dev/zero of=/opt/image/swap bs=1024 count=2048000
```
 过段时间就返回如下结果：
 ```
2048000+0 records in
2048000+0 records out
2097152000 bytes (2.1 GB, 2.0 GiB) copied, 242.095 s, 8.7 MB/s
```
第三步：创建（设置）交换空间，使用命令mkswap
```
sudo mkswap /opt/image/swap
```
Setting up swapspace version 1, size = 2 GiB (2097147904 bytes)

第四步：检查现有的交换空间大小，使用命令free
```
free -m
              total        used        free      shared  buff/cache   available
Mem:            925         185          28          14         711         660
Swap:             0           0           0
```
或者检查meminfo文件
```
grep SwapTotal  /proc/meminfo
```
第五步：启动新增加的2G的交换空间，使用命令swapon
```
sudo swapon /opt/image/swap
```
第六步:确认新增加的2G交换空间已经生效，使用命令free
```
free -m
             total        used        free      shared  buff/cache   available
Mem:            925         328          56          32         541         502
Swap:          1999           0        1999
```
或者检查meminfo文件
```
grep SwapTotal  /proc/meminfo
```
第七步：修改/etc/fstab文件，使得新加的2G交换空间在系统重新启动后自动生效
```cpp
sudo gedit /etc/fstab
/*
在打开文件最后一行添加 
/opt/image/swap   /swap   swap  defaults 0  0
*/
```
将树莓派端系统时间改为现在的时间，否则编译可能出错。
注意：这一步树莓派必须是联网的，否则编译会出错(联网后时间一般会自动校准)，
树莓派没有电池，断电后无法保存时间。树莓派默认安装了NTP(Network Time Protocol)服务来获取互联网上ntp服务器提供的时间。
```js
sudo apt-get install ntp  //安装ntp服务
sudo service ntp restart  //重启ntp服务
```
打开新的终端
```js
cd /home/rikirobot/catkin_ws
catkin_make -j1
```

```
git push -u
git add .

git commit -m "add fishros"
git config --global user.email "haohaoalt@163.com"
git config --global user.name "haopi3"
git commit -m "add fishros"
git status
git push

git init
git add .
git commit -m "init rikirobot"
git remote add origin https://github.com/haohaoalt/rikirobot.git
git push -u
git branch -M main
git push -u origin main
git status
git push
sudo raspi-config
ifconfig
sudo apt-get install ssh
sudo apt install x11vnc


sudo apt-get install libspnav-dev
sudo dpkg --configure -a
```











