
### Environment
* MYSQL_ROOT_PASSWORD
* MYSQL_DATABASE
* MYSQL_USER, MYSQL_PASSWORD
* MYSQL_ALLOW_EMPTY_PASSWORD
* MYSQL_RANDOM_ROOT_PASSWORD
* MYSQL_ONETIME_PASSWORD

### 主从
doc https://dev.mysql.com/doc/refman/5.7/en/replication-howto-masterstatus.html



#### 主 

配置mysql.cnf 

```

[mysqld]

server-id=1

```

```

show master status;

```

        File: mysql-bin.000001

        Position: 765



#### 从

配置mysql.cnf

```

[mysqld]

server-id=2

```

备份

```

mysql -uroot -h 主 -p  database >back.sql;

#登陆从库

source back.sql;

```



```

stop slave;

reset slave;

reset master;

```

关键 

把 show master status\G `File`和`Position`对号入座

```

CHANGE MASTER TO  

     MASTER_HOST='master_host_name',

     MASTER_USER='主用户名',

     MASTER_PASSWORD='主密码',

     MASTER_LOG_FILE='主status File',

     MASTER_LOG_POS=主status Position;

```

开启从库

```

start slave;

```

检查状态

```

show slave status\G

```

>Slave_IO_Running: Yes

Slave_SQL_Running: Yes



