<<<<<<< HEAD
FROM cassandra
=======
FROM cassandra:latest
>>>>>>> 6f07f604f3dc9d5b2c18b33e36014778d1453c3d

RUN echo "Docker image started"
RUN apt-get update

COPY ./cassandra.yaml /etc/cassandra/

CMD ["cassandra"]

