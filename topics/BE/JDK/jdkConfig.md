
# 增加项目中指定jdk版本的配置

{
  ## maven编译指向的jdk版本也要配置
  "java.import.maven.java.home": "D:\\Asoftware\\work\\JDK\\JDK8",
  "maven.terminal.customEnv": [
    {
      "environmentVariable": "JAVA_HOME",
      "value": "D:\\Asoftware\\work\\JDK\\JDK8"
    }
  ],
  maven.terminal.useJavaHome: false — 避免 Maven 扩展强制用系统 JDK21
  maven.terminal.customEnv + terminal.integrated.env.windows — 本仓库终端/Maven 使用 JDK8
  java.jdt.ls.java.home / java.import.maven.java.home — Java 语言服务使用 JDK8
  java.debug.settings.forceBuildBeforeLaunch: false — 跳过会失败的 JDT 预编译（Lombok + JDK21 问题）
  maven编译打包想要正常运行, 还需要cursor针对项目单独解决

  ## 运行时jdk版本
  "java.jdt.ls.java.home": "D:\\Asoftware\\work\\JDK\\JDK8",
  "java.configuration.runtimes": [
    {
      "name": "JavaSE-1.8",
      "path": "D:\\Asoftware\\work\\JDK\\JDK8",
      "default": true
    }
  ]
}