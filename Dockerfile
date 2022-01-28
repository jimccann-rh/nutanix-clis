FROM centos:7

COPY entrypoint.sh /
COPY ncli.zip /usr/local/bin/
COPY acli /usr/local/bin/
COPY mincli /usr/local/bin/
COPY requirements.txt /
COPY key.pem /usr/local/bin/

WORKDIR /usr/local/bin/

RUN yum groupinstall "Development Tools" -y
RUN yum install epel-release python-devel -y
RUN yum install unzip jq git procps which java-1.8.0-openjdk findutils python python-pip sshpass -y 

RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
RUN python get-pip.py
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

RUN unzip ncli.zip \
    && rm ncli.zip

RUN pip install -r /requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]

RUN chmod +x /entrypoint.sh
