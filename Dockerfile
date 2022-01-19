FROM ubuntu:latest
MAINTAINER Vitalik Suslin <vitalik@suslin.online>
COPY . /app
WORKDIR /app
RUN apt-get update
RUN apt-get install -y python
RUN pip install flask
CMD [«python», "app/main.py"]
