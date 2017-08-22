--﻿ 创建数据链
-- 注意: 数据链的创建时，创建的用户需有dba的权限.
create database link db_link_dky
connect to nc20160426 -- 需要连接的远程数据库的用户名
identified by nc20160426 -- 需要连接的远程数据库的用户密码
USING '(DESCRIPTION = 
(ADDRESS_LIST = (ADDRESS = (PROTOCOL=TCP)(HOST=192.168.1.200)(PORT=1521)))
(CONNECT_DATA=(SID=orcl)(SERVER=DEDICATED))
)'
































