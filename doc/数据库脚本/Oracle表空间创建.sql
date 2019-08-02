--﻿第零步:连接数据库  
--进入sqlplus  
--命令： sqlplus /nolog
--连接:  connect sys/sys的密码@数据库实例名 as sysdba; 
--第一步：创建表空间
create tablespace HYBJ datafile 'D:\app\Administrator\oradata\hybj\hybj_0.dbf' 
size 500m 
autoextend on 
next 500m maxsize 30720m 
extent management local; 

--第二步：创建临时表空间
create temporary tablespace HYBJTEMP tempfile 'D:\app\Administrator\oradata\hybj\hybj_temp.dbf ' size 50m autoextend on next 50m maxsize 4000m extent management local;

--第三步：创建用户，并赋表空间
create user hybj identified by hybj
default tablespace HYBJ
temporary tablespace HYBJTEMP;

--第四步：授权用户为dba;
grant dba to hybj;

--第五步：执行导入导出
































