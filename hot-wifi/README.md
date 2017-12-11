有线开启wifi热点

### 准备
* hostapd2.6 http://w1.fi/releases/hostapd-2.6.tar.gz
* create_ap  https://github.com/oblique/create_ap
*  dnsmasq


### hostapd

编译
```
cp   defconfig   .config
```
>vi  .config  
CONFIG_LIBNL32=y  #放开此行注释



编译错误
/src/drivers/driver_nl80211.c:17:31: fatal error: netlink/genl/genl.h:

方式一 
官网搜索 **netlink/genl/genl.h**
https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=contents&keywords=netlink/genl/genl.h

方式二
安装 apt-file
```
sudo  apt-get install apt-file
#更新 缓存
sudo apt-file update
```
搜索
```
sudo  apt-file search   netlink/genl/genl.h
```
安装缺失依赖 
编译安装

```
make 
sudo make install
```
>install -D hostapd /usr/local/bin//hostapd <br/>
install -D hostapd_cli /usr/local/bin//hostapd_cli

### create_ap
拉取
```
git clone https://github.com/oblique/create_ap
cd create_ap
make install
```
创建热点
```
sudo create_ap wlan0 eth0 cs@wifi
```
>PID: 7968  <br/>
Network Manager found, set ap0 as unmanaged device... DONE  <br/>
Creating a virtual WiFi interface... ap0 created.  <br/>
Sharing Internet using method: nat   <br/>
hostapd command-line interface: hostapd_cli -p /tmp/create_ap.wlan0.conf.MaJfJ5vH/hostapd_ctrl   <br/>
Configuration file: /tmp/create_ap.wlan0.conf.MaJfJ5vH/hostapd.conf  <br/>
Using interface ap0 with hwaddr 70:1c:e7:32:51:c3 and ssid "cs@debian"  <br/>
ap0: interface state UNINITIALIZED->ENABLED <br/>
ap0: AP-ENABLED   <br/>
WARN: Low entropy detected. We recommend you to install `haveged'

### 脚本控制
开启
start-wifi.desktop 

关闭
stop-wifi.desktop