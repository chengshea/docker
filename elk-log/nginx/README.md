### nginx
json
```
  log_format logstash_json '{ "@timestamp": "$time_local", '
                         '"@fields": { '
                         '"ip": "$remote_addr", '
                         '"remote_user": "$remote_user", '
                         '"body_bytes_sent": "$body_bytes_sent", '
                         '"request_time": "$request_time", '
                         '"status": "$status", '
                         '"request": "$request", '
						 '"request_body": "$request_body", '
                         '"request_method": "$request_method", '
                         '"http_referrer": "$http_referer", '
                         '"body_bytes_sent":"$body_bytes_sent", '
                         '"http_x_forwarded_for": "$http_x_forwarded_for", '
                         '"http_user_agent": "$http_user_agent" } }';
```


### logstash

```
   geoip {
      source => "[@fields][ip]" 
      target => "geoip"
      database => "/ELK/logstash-2.4.1/ip/GeoLiteCity.dat"
      add_field => [ "[geoip][coordinates]", "%{[geoip][longitude]}" ]
      add_field => [ "[geoip][coordinates]", "%{[geoip][latitude]}" ]
    }
```