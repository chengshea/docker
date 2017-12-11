### gosu v1.10  

from  debian  amd64

获取
```
export GNUPGHOME="$(mktemp -d)"  && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
```
验证
```
gpg --batch --verify gosu.asc gosu 
```
>
gpg: 于 2016年09月29日 星期四 06时22分56秒 CST 创建的签名，使用 RSA，钥匙号 BF357DD4
gpg: 完好的签名，来自于“Tianon Gravi <tianon@tianon.xyz>”
gpg:               亦即“Tianon Gravi <tianon@debian.org>”
gpg:               亦即“Tianon Gravi <tianon@dockerproject.org>”
gpg:               亦即“Andrew Page (tianon) <andrew@infosiftr.com>”
gpg:               亦即“Andrew Page (tianon) <andrew@vitalroute.com>”
gpg:               亦即“Andrew Page (Tianon Gravi) <admwiggin@gmail.com>”
gpg:               亦即“Tianon Gravi (Andrew Page) <tianon@infosiftr.com>”
gpg: 警告：这把密钥未经受信任的签名认证！
gpg:       没有证据表明这个签名属于它所声称的持有者。
主钥指纹： B42F 6819 007F 00F8 8E36  4FD4 036A 9C25 BF35 7DD4
