## 准备
### 安装
git  https://github.com/garabik/grc
需要自己编译
或
下载 http://ftp.cn.debian.org/debian/pool/main/g/grc/grc_1.11.1-1_all.deb

依赖python3,你以安装python3  `sudo dpkg -i grc_1.11.1-1_all.deb`
不想安装python3
```
提取 data.tar 解压
修改/usr/bin/目录下2个文件python解释器
默认python3
#! /usr/bin/python3
修改
#! /usr/bin/python
```

### 配置
配置grc
``` 
echo -e "#grc\nexport PATH=$PATH:/opt/grc/usr/bin">>~/.bashrc
source ~/.bashrc
```
>grc -v

把 `.grcat` 和 `.my.cnf` 放到 ～/（家目录）

### 开始使用

```
 mysql -uroot -p
```

![pic](http://ojtd6k176.bkt.clouddn.com/2017%E5%B9%B410%E6%9C%8827%E6%97%A5%20-%2014%E6%97%B633%E5%88%8639%E7%A7%92.png)
