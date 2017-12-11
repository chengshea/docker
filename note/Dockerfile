FROM mongo:3.5.12

#设置一个时区的环境变量
ENV TZ "Asia/Shanghai"
#虚拟终端
ENV TERM xterm

ENV LEANOTE_VERSION 2.5

RUN set -x \
        && sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list \
        && apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \
        && wget "https://github.com/leanote/leanote/archive/$LEANOTE_VERSION.tar.gz" -O leanote.tar.gz \
        && apt-get purge -y --auto-remove ca-certificates wget \
        && tar -zxf leanote.tar.gz && mv leanote-$LEANOTE_VERSION  leanote  \
        && cd leanote  \
        &&  { \
                echo 'dbpath=/data/db'; \
                echo 'port=27017'; \
                echo 'logpath=/data/mongo.log'; \
                echo 'logappend=true'; \
                echo 'fork=true'; \
             } > mongod.conf      \
        && mongod -f  mongod.conf \
        && mongorestore -h localhost -d leanote --dir mongodb_backup/leanote_install_data/    \
        && rm -rf  mongodb_backup leanote.tar.gz 
RUN set -x \
        && apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \
        && wget "https://www.golangtc.com/static/go/1.9/go1.9.linux-amd64.tar.gz" -O go.tar.gz \
        && tar zxvf go.tar.gz -C /opt &&  mkdir -p /opt/gopackage \
        && {\
             echo "export GOROOT=/opt/go"; \ 
             echo "export GOPATH=/opt/gopackage";  \
             echo "export PATH=$PATH:$GOROOT/bin:$GOPATH/bin"; \
             } >> /etc/profile  
RUN set -x \
        #/bin/sh: 1: source: not found
        &&  echo "export PATH=/opt/go/bin:/opt/gopackage/bin:$PATH" >> /etc/profile \
        && . /etc/profile && cat /etc/profile \
        && go version  && cp -R /leanote/bin/src /opt/gopackage \
        &&  cd /opt/gopackage &&  go install github.com/revel/cmd/revel
ENTRYPOINT ["mongod"]

EXPOSE 9000

CMD ["bash","bin/run-linux-amd64.sh"]