FROM ubuntu:latest
MAINTAINER Vitalik Suslin <vitalik@suslin.online>
COPY . /app
WORKDIR /app
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install flask
ENTRYPOINT [«python3»]
CMD ["main.py"]