本项目是基于 YII2.0高级模板的一个YII2 RBAC的基本的例子，是用yii2-admin插件的RBAC，下面的提供相关学习的网址，如果有什么不明白的可以自行参考下面的教程学习。
1.composer install
2.修改数据库用户密码是在common\config\main-local.php里面
3.导入数据库文件，在项目根目录下面的   yiiadvanced-rbac.sql
4.打下面的网址即可以看到相关页面和操作了。
路由界面  http://localhost/yiiadvanced/backend/web/admin/route
权限界面 http://localhost/yiiadvanced/backend/web/admin/permission/index
角色列表页面  http://localhost/yiiadvanced/backend/web/admin/role/index
分配页面，为当前用户分配刚刚添加的角色  http://localhost/yiiadvanced/backend/web/admin/assignment/index 
打开菜单列表页  http://localhost/yiiadvanced/backend/web/admin/menu/index
用户界面  http://localhost/yiiadvanced/backend/web/admin/user

--------------------------------------------------------------------------------



这是YII2标准版的一个RBAC权限控制的基本项目，没怎么整理过，参考了以下网站的的操作方法
yii2史上最简单式安装教程，没有之一  http://www.manks.top/yii2_install.html
yii2搭建完美后台并实现rbac权限控制实例教程  http://www.manks.top/yii2_frame_rbac_template.html
yii2权限控制rbac之详细操作步骤   http://www.manks.top/yii2_rbac_description.html
yii2权限控制rbac之菜单menu最详细教程  http://www.manks.top/yii2_rbac_menu.html
yii2权限控制rbac之rule详细讲解   http://www.manks.top/yii2_rbac_rule.html


导入数据库文件，在项目根目录下面的   yiiadvanced-rbac.sql


登录页
http://127.0.0.1/yiiadvanced/backend/web/site/login
用户密码分别是admin/123456    demo/123456

  
下面是操作网址

路由界面  http://localhost/yiiadvanced/backend/web/admin/route
权限界面 http://localhost/yiiadvanced/backend/web/admin/permission/index
角色列表页面  http://localhost/yiiadvanced/backend/web/admin/role/index
分配页面，为当前用户分配刚刚添加的角色  http://localhost/yiiadvanced/backend/web/admin/assignment/index 
打开菜单列表页  http://localhost/yiiadvanced/backend/web/admin/menu/index
用户界面  http://localhost/yiiadvanced/backend/web/admin/user


backend\config\main.php 下面的as access的allowActions添加无需添加权限控制的控制器 

yii2-admin的安装方法与地址 --Yii2-Admin是一套基于RBAC的权限管理扩展组件，通过简单的安装配置即可完成一整套的权限管理机制，非常方便！
可能有很多刚接触composer的同学看了github的yii2-admin的安装步骤不太明白，其实是要先安装一个yii2的标准版或者高级模板之后再安装yii2-admin

https://github.com/mdmsoft/yii2-admin

adminlte怎么引用到yii2  http://zhidao.baidu.com/link?url=T5FLVGUbdw7QUaWo_uE7VKp7KtRWIfJc4RPhx3-dxAtjPU7fN3u3xuS0dVYZ0pf8v4073CF5JVb70v87UyvS4va9yia2NB-kzOB_xGywmjW
yii2-admin 插件使用简要教程    http://wlzyan.blog.163.com/blog/static/46790992015101052627354/

权限管理（RBAC）扩展 yii2-admin http://www.yii-china.com/post/detail/162.html

