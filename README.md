# 酒店预订管理系统启动说明

## 项目说明

本项目为酒店预订管理系统，后端使用 Spring Boot，数据库使用 MySQL。项目已经内置打包好的静态前台页面，日常演示只需要启动后端即可。

项目结构：

```text
HotelManagementSystem
├─ back                  后端 Spring Boot 项目
├─ front                 Vue 后台管理端源码，可选，不是演示必需
└─ README.md             启动说明
```

## 环境要求

- JDK 1.8

- Maven 3.x

- MySQL 8.x

  

默认服务地址：

```text
http://localhost:8080/springbootb1g8z
```

## 页面入口

前台入口，员工和用户从这里登录：

```text
http://localhost:8080/springbootb1g8z/front/index.html
```

管理员后台入口：

```text
http://localhost:8080/springbootb1g8z/admin-lite.html
```



## 默认账号

管理员：

```text
入口：http://localhost:8080/springbootb1g8z/admin-lite.html
用户名：admin
密码：admin
```

员工：

```text
入口：http://localhost:8080/springbootb1g8z/front/index.html
用户名：YG2024001
密码：123456
角色：员工
```

用户：

```text
入口：http://localhost:8080/springbootb1g8z/front/index.html
用户名：chenyu
密码：123456
角色：用户
```

