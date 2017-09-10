### gosu

### bin_log 
>mysqld: File '/var/log/mysql/mysql-bin.index' not found (Errcode: 13 - Permission denied)
```
chown -R 999:999 bin_log
```

### Environment
* MYSQL_ROOT_PASSWORD
* MYSQL_DATABASE
* MYSQL_USER, MYSQL_PASSWORD
* MYSQL_ALLOW_EMPTY_PASSWORD
* MYSQL_RANDOM_ROOT_PASSWORD
* MYSQL_ONETIME_PASSWORD