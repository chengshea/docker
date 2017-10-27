doc https://github.com/logstash/logstash-logback-encoder

### logback.xml
```
<?xml version="1.0" encoding="UTF-8"?>
<configuration>
  <appender name="stash" class="net.logstash.logback.appender.LogstashTcpSocketAppender">
      <destination>127.0.0.1:4560</destination>

      <!-- encoder is required -->
      <encoder class="net.logstash.logback.encoder.LogstashEncoder" />
  </appender>

  <root level="DEBUG">
      <appender-ref ref="stash" />
  </root>
</configuration>
```

### logstash
```
input {
  tcp {
    host => "127.0.0.1" 
    port => 4560     
    mode => "server"
    tags => ["login"]
    codec => json_lines
  }

}


output {
 stdout{codec =>rubydebug}
  elasticsearch {
   hosts => ["localhost:9200"]    
    index => "logstash-login-log-%{+YYYY.MM.dd}"
    flush_size => 500

  }
}
```
![pic](http://ojtd6k176.bkt.clouddn.com/logstash-21-09.png)