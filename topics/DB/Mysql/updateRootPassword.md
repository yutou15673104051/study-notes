# 重置mysql数据库root账号密码

services.msc 打开服务管理器, 关闭mysql服务

sc query state= all | findstr /i "mysql" 查找mysql服务名

sc qc "mysql服务名" 查看 MySQL 服务的详细信息

在输出的 BINARY_PATH_NAME 行中，你会看到类似 "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqld.exe" --defaults-file="C:\ProgramData\MySQL\MySQL Server 8.0\my.ini"

--defaults-file 指向的配置文件路径

方案1: 修改配置文件(稳定可靠), 方案2: 特定指令连接(便捷不稳定)

用记事本打开 my.ini，查找 datadir= 这一行，例如：datadir="C:/ProgramData/MySQL/MySQL Server 8.0/Data"

打开管理员cmd进入mysqlbin文件目录 cd /d D:\Asoftware\work\Tools\PG\mysql\bin

运行mysqld --console --skip-grant-tables --shared-memory --console --datadir="C:/ProgramData/MySQL/MySQL Server 8.0/Data"

另外打开一个管理员cmd进入bin文件

执行mysql -u root

FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'yutou0528';

EXIT;

关闭cmd窗口, 修复配置文件, 重启服务, 执行mysql -u root -p检查新密码是否生效
