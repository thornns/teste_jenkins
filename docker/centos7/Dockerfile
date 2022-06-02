FROM centos:7
RUN yum install openssh-server mysql -y
RUN curl -O https://bootstrap.pypa.io/pip/2.7/get-pip.py
RUN python get-pip.py
RUN pip install awscli --upgrade

RUN useradd -m -s /bin/bash remote_user
RUN echo "remote_user:1234" | chpasswd
RUN mkdir /home/remote_user/.ssh
RUN chmod 700 /home/remote_user/.ssh

COPY remote-key.pub /home/remote_user/.ssh/authorized_keys
RUN chown remote_user:remote_user -R /home/remote_user
RUN chmod 600 /home/remote_user/.ssh/authorized_keys

RUN /usr/sbin/sshd-keygen

CMD /usr/sbin/sshd -D
