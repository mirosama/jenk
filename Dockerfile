FROM jenkins
COPY plugins.txt /usr/share/jenkins/ref
COPY /jobs/ci /var/jenkins_home/jobs/ci
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
