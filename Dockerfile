FROM ubuntu:latest

RUN echo "Installation started"
RUN apt-get update && apt-get upgrade -y && apt-get install curl gnupg openjdk-8-jre -y
RUN echo "deb https://downloads.apache.org/cassandra/debian 311x main" | tee -a /etc/apt/sources.list.d/cassandra.sources.list
RUN curl https://downloads.apache.org/cassandra/KEYS | apt-key add -
RUN apt-get update && apt-get install cassandra -y
RUN echo "Installation Done"

RUN service cassandra stop
COPY ./cassandra.yaml /etc/cassandra/
RUN rm -r /var/lib/cassandra/data/ && service cassandra start

