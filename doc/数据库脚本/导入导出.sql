--定义目录
create or replace directory dump_hybj as 'D:\';
--导出
expdp hybj/hybj directory=DATA_PUMP_DIR dumpfile=hybj.dmp schema=hybj
--导入
impdp hybj/hybj directory=DATA_PUMP_DIR dumpfile=hybj.dmp remap_schema=hybj:hybj