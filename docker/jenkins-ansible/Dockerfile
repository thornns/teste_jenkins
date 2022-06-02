FROM jenkins/jenkins

USER root

RUN apt-get update && apt-get install python3 -y
RUN apt install python3.*-distutils -y
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN curl -O https://bootstrap.pypa.io/pip/get-pip.py
RUN python3 get-pip.py
RUN python3 -m pip install ansible --upgrade

USER jenkins
