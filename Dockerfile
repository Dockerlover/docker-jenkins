# 基础镜像
FROM docker-java:openjdk-7-jre
# 维护人员
MAINTAINER  liuhong1.happy@163.com
# 添加环境变量
ENV USER_NAME admin
ENV SERVICE_ID jenkins
ENV JENKINS_HOME /jenkins
ADD http://mirrors.jenkins-ci.org/war/1.625/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
# 暴露80端口
EXPOSE 8080
# 配置supervisord
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# 运行supervisord
CMD ["/usr/bin/supervisord"]
