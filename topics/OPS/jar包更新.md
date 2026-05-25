# {{ jar包更新 }}

1. 查询jar包中要替换的文件位置

2. 在当前jar包文件目录新建相同的路径并把要替换的文件放在目录下

3. 更新jar包
   更新jar包
   jar -uvf0 需要更新的jar包 具体需要更新的内容(切记第二点)

举例示范
更新qd-all-1.0-SNAPSHOT_20260525_15_webjar-exec.jar中的qd-system-1.0-SNAPSHOT.jar部分
jar -uvf0 qd-all-1.0-SNAPSHOT_20260525_15_webjar-exec.jar BOOT-INF/lib/qd-system-1.0-SNAPSHOT.jar
