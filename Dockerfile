# 使用 Maven 官方镜像作为构建阶段
FROM maven:3.8.5-openjdk-17 AS build

# 设置工作目录
WORKDIR /build

# 将 Maven 项目的所有文件复制到容器中
COPY . .

# 使用 Maven 构建项目，跳过测试（可选）并生成 JAR 文件
RUN mvn clean package -DskipTests

# 使用 OpenJDK 作为基础镜像，减少最终镜像体积
FROM openjdk:17-slim

# 设置工作目录
WORKDIR /app

# 设置环境变量
ENV SPRING_PROFILES_ACTIVE=prod
ENV DATABASE_URL=jdbc:postgresql://a18724c4706444438a4ee795db222af7-118215569.ap-southeast-1.elb.amazonaws.com:5432/app
ENV DATABASE_USERNAME=bodhiint
ENV DATABASE_PASSWORD=bodhiint

# 从构建阶段复制生成的 JAR 文件到当前镜像
COPY --from=build /build/target/Bodhi-files_system-0.0.1-SNAPSHOT.jar /app/app.jar

# 暴露应用运行端口
EXPOSE 9377

# 运行 Spring Boot 应用
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

