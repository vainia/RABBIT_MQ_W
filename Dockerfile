FROM ubuntu:latest
LABEL maintainer="Ivan Napolskykh"
RUN apt-get update -y && apt-get install -y python3-pip python3-dev build-essential && rm -rfv /var/cache
RUN mkdir /RMQ_W
COPY ./requirements.txt /RMQ_W
WORKDIR /RMQ_W
RUN pip3 install --no-cache-dir -r requirements.txt
COPY ./*.py /RMQ_W/
CMD ["python3", "main.py"]
