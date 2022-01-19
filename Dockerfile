FROM ubuntu:latest
MAINTAINER Vitalik Suslin <vitalik@suslin.online>
COPY . /app
WORKDIR /app
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get -y install python3-pip
RUN pip3 install flask
CMD [«python3», "app/main.py"]
