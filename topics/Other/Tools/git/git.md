# git操作技巧

1. 创建新项目的时候, 在github创建代码仓库之后会有提示告诉如何将项目代码与git版本控制关联上

2. git本地文件跟踪配置
   git忽略文件
   git update-index --skip-worktree hy-hrm/src/main/resources/application-dev.yml hy-hrm/src/main/resources/application.yml
   git重新跟踪文件
   git update-index --no-skip-worktree src/app/main/login/main-login.component.html

3. 查看当前git仓库地址
   git remote -v
