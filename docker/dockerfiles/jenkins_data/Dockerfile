FROM debian:jessie
RUN useradd -d "/var/jenkins_home" -u 1000 -m -s /bin/bash jenkins
RUN mkdir -p /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
# VOLUME ["/var/log/jenkins", "/var/jenkins_home"]
USER jenkins
# CMD ["echo", ""]
CMD ["tail", "-f", "/dev/null"]