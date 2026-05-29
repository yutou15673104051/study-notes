
# cursor中配置项目重启
    {
      // 方式 A：重启更稳定（输出在调试控制台）
      "type": "java",
      "name": "启动 Spring Boot",
      "request": "launch",
      "mainClass": "com.sbwork.hy.HrmApplication",
      "projectName": "hy-hrm",
      "console": "internalConsole",
      "internalConsoleOptions": "neverOpen",
      "vmArgs": "-Dspring.profiles.active=dev -Xms512M -Xmx2048M -Djps.track.ap.dependencies=false -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -Dstdout.encoding=UTF-8 -Dstderr.encoding=UTF-8"
    }
参考这种做法来设计重启的功能 

改用调试控制台启动，绕开 PowerShell 终端复用问题，重启更稳定

还有启用手动热替换并把它加到调试流程里