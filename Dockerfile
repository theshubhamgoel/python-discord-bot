FROM ubuntu:20.04
LABEL GOEL <theshubhamgoel@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y
#RUN apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget -y
#RUN apt install software-properties-common -y
#RUN add-apt-repository ppa:deadsnakes/ppa -y

RUN apt install htop python3 python3-pip -y

#Verify required softwares
RUN python3 -V
RUN pip3 -V

COPY ./requirements.txt /root/workspace/requirements.txt
RUN python3 -m pip install -r /root/workspace/requirements.txt

COPY . /root/workspace/
WORKDIR "/root/workspace"

CMD tail -f /dev/null

#Here are some Docker image/container build and running commands
#docker build . --tag python-discord-bot:1.0
#docker rmi $(docker images -qa -f 'dangling=true')
# vi /usr/local/lib/python3.8/dist-packages/discord/client.py : 211 
# replace with connector = aiohttp.TCPConnector(verify_ssl=False)


