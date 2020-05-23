FROM ubuntu:latest

RUN echo "Installation started"
RUN apt-get update && apt-get upgrade -y && apt-get install curl gnupg -y
RUN echo "deb https://downloads.apache.org/cassandra/debian 311x main" | tee -a /etc/apt/sources.list.d/cassandra.sources.list
RUN echo "deb https://www.apache.org/cassandra/debian 311x main" | tee -a /etc/apt/sources.list.d/cassandra.sources.list
RUN cat /etc/apt/sources.list.d/cassandra.sources.list
RUN curl https://downloads.apache.org/cassandra/KEYS | apt-key add -
RUN apt-get update && apt-get install openjdk-8-jre cassandra -y
RUN echo "Installation Done"

RUN servie cassandra stop
COPY ./cassandra.yaml /etc/cassandra/
RUN rm -r /var/lib/cassandra/data/ && service cassandra start

