FROM cassandra:latest

RUN echo "Docker image started"
RUN apt-get update

COPY ./cassandra.yaml /etc/cassandra/
RUN rm -r /var/lib/cassandra/

CMD ["cassandra","-f"]
