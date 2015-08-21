# docker-jenkins
Docker化Jenkins

## 镜像特点

- 2015/8/21 继承基础镜像docker-java

## 使用方法

- 获取代码并构建

        git clone https://github.com/Dockerlover/docker-jenkins.git
        cd docker-jenkins
        docker build -t docker-jenkins .

- 运行容器

        docker run -d -it --name jenkins -p 8080:8080 docker-apache
