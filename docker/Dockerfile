From docker:latest

RUN mkdir -p  /var/run/sshd

RUN apk update && \
		apk add  --no-cache openssh-server

RUN useradd -rm -d /home/jenkins_user -s /bin/bash jenkins_user && \
		echo jenkins_user:4441 | chpasswd 

RUN mkdir /home/jenkins_user/.ssh && \
		chmod 700 /home/jenkins_user/.ssh

COPY id_rsa.pub /home/jenkins_user/.ssh/authorized_keys

RUN chown jenkins_user:jenkins_user -R /home/jenkins_user/.ssh && \
		chmod 600 /home/jenkins_user/.ssh/authorized_keys

CMD [ "/usr/sbin/sshd", "-D" ]
