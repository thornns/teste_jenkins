FROM jenkins/jenkins

USER root

# Instalar Ansible

RUN apt-get update && apt-get install python3 -y
RUN apt install python3.*-distutils -y
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN curl -O https://bootstrap.pypa.io/pip/get-pip.py
RUN python3 get-pip.py
RUN python3 -m pip install ansible --upgrade

# Instalar Docker
RUN apt-get update && \
apt-get -y install apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common && \
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable" && \
apt-get update && \
apt-get -y install docker-ce

# Docker Compose
RUN curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose

RUN usermod -aG docker jenkins
USER jenkins
