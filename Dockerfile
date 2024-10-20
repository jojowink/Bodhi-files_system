# 使用官方 OpenJDK 作为基础镜像
FROM openjdk:17-slim

# 设置工作目录
WORKDIR /app

# 将项目的 jar 文件复制到容器中
COPY target/Bodhi-files_system-0.0.1-SNAPSHOT.jar /app/app.jar

# 暴露应用端口
EXPOSE 8080

# 运行 Spring Boot 应用
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
