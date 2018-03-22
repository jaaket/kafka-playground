FROM maven:3.3.9-jdk-8

RUN adduser maven
USER maven
WORKDIR /home/maven

RUN git clone https://github.com/confluentinc/kafka-connect-elasticsearch.git && \
    cd kafka-connect-elasticsearch && \
    git checkout v3.3.1 && \
    mvn compile && \
    mvn package

VOLUME /build
CMD cp kafka-connect-elasticsearch/target/kafka-connect-elasticsearch-3.3.1-package/share/java/kafka-connect-elasticsearch/* /build