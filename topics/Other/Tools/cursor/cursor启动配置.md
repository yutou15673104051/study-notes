
# cursor中配置项目重启
    {
      "type": "java",
      "name": "启动 Spring Boot",
      // 使用调试控制台启动，避免 PowerShell 终端复用导致重启失败；日志输出到调试控制台
      "console": "internalConsole",
      // 手动热替换：改代码保存后，点调试工具栏 ⚡ 或命令面板「Hot Code Replace」
      "hotCodeReplace": "manual",
      "internalConsoleOptions": "neverOpen",
      "vmArgs": "-Dspring.profiles.active=dev -Xms512M -Xmx2048M -Djps.track.ap.dependencies=false -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -Dstdout.encoding=UTF-8 -Dstderr.encoding=UTF-8"
    }

还有启用手动热替换并把它加到调试流程里

开启 forceBuildBeforeLaunch: true F5 前由 JLS 做增量编译，不要每次启动前都执行mvn compile

参考这种做法来设计项目启动的配置