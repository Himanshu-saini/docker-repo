FROM cassandra:latest

RUN echo "Docker image started"
RUN apt-get update

CMD ["cassandra","-f"]

