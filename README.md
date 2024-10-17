

# Bodhi后端文件系统

SWE5006项目：Bodhi后端微服务——文件系统

<!-- PROJECT SHIELDS -->


<!-- PROJECT LOGO -->
<br />

<p align="center">
  <a href="https://github.com/jojowink/Bodhi-files_system">
    <img src="readme_images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Bodhi后端文件系统</h3>
  <p align="center">
    Bodhi项目后端微服务——文件系统
    <br />
    <a href="https://github.com/jojowink/Bodhi-files_system"><strong>探索本项目的文档 »</strong></a>
    <br />
    <br />
    <a href="https://github.com/jojowink/Bodhi-files_system">查看Demo</a>
    ·
    <a href="https://github.com/jojowink/Bodhi-files_system/issues">报告Bug</a>
    ·
    <a href="https://github.com/jojowink/Bodhi-files_system/issues">提出新特性</a>
  </p>



 本篇README.md面向开发者
 
## 目录

- [上手指南](#上手指南)
  - [开发前的配置要求](#开发前的配置要求)
  - [安装步骤](#安装步骤)
- [文件目录说明](#文件目录说明)
- [开发的架构](#开发的架构)
- [部署](#部署)
- [使用到的框架](#使用到的框架)
- [贡献者](#贡献者)
  - [如何参与开源项目](#如何参与开源项目)
- [版本控制](#版本控制)
- [作者](#作者)
- [鸣谢](#鸣谢)

### 上手指南

修改自己的数据库地址和账户密码



###### 开发前的配置要求

1. Java 17
2. Springboot 2.7.15
3. Mybatis 2.2.0
4. Mysql 8.0.29
5. Knife4j-openapi2 4.5.0
6. Mybatis-plus 3.4.1

###### **安装步骤**

1. 本地运行sql脚本，在application.yml修改自己的数据库名字和账户密码
2. clone仓库后，直接点击运行BodhiFilesSystemApplication即可

```sh
git clone https://github.com/jojowink/Bodhi-files_system.git
```

### 文件目录说明
eg:

```
├─sql脚本
├─src
│  ├─main
│  │  ├─java
│  │  │  └─com
│  │  │      └─nus
│  │  │          └─zkk
│  │  │              └─bodhifiles_system
│  │  │                  ├─controller       控制层，接口位置
│  │  │                  ├─entity           实体，存储了数据库实体
│  │  │                  │  └─dto           数据传输对象
│  │  │                  ├─mapper           映射层
│  │  │                  ├─service          服务层，定义了主要的服务
│  │  │                  │  └─impl          服务实现类
│  │  │                  └─utils            存储了所用到的其他工具
│  │  └─resources
│  │      ├─mapping                         mapper的映射xml文件
│  │      ├─static                          静态资源
│  │      └─templates                       前端界面
│  └─test                                   测试
│      └─java
│          └─com
│              └─nus
│                  └─zkk
│                      └─bodhifiles_system
                         



```





### 开发的架构 

微服务+Springboot为该项目的架构。

### 部署

暂无

### 使用到的框架

- Springboot 2.7.15
- Mybatis
- Mybatis-plus
- lombok
- Knife4j
- Hutool

### 贡献者

请阅读**CONTRIBUTING.md** 查阅为该项目做出贡献的开发者。

#### 如何参与开源项目

贡献使开源社区成为一个学习、激励和创造的绝佳场所。你所作的任何贡献都是**非常感谢**的。


1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



### 版本控制

该项目使用Git进行版本管理。您可以在repository参看当前可用版本。

### 作者

jojo

 *您也可以在贡献者名单中参看所有参与该项目的开发者。*

### 版权说明

该项目签署了MIT 授权许可，详情请参阅 [LICENSE.txt](https://github.com/shaojintian/Best_README_template/blob/master/LICENSE.txt)

### 鸣谢


- [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
- [Img Shields](https://shields.io)
- [Choose an Open Source License](https://choosealicense.com)
- [GitHub Pages](https://pages.github.com)




