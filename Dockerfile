FROM CASSANDRA

RUM echo "Docker image started"
RUN apt-get update

COPY ./cassandra.yaml /etc/cassandra/

RUN echo "Cusert Cluster name : ${CASSANDRA_CLUSTER_NAME}"
RUN echo "Cusert broadcast address : ${CASSANDRA_BROADCAST_ADDRESS}"
RUN echo "Cusert seeds : ${CASSANDRA_SEEDS}"
RUN echo "Cusert snitch : ${CASSANDRA_ENDPOINT_SNITCH}"
RUN echo "Cusert rpc address : ${CASSANDRA_RPC_ADDRESS}"

CMD service cassandra restart

