FROM cassandra:latest

RUN echo "Docker image started"
RUN apt-get update

COPY ./cassandra.yaml /tmp/cassandra/

CMD ["cassandra","-f"]
