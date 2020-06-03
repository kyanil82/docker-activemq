FROM openjdk:8-jre-alpine

RUN wget -O activemq.tar.gz http://archive.apache.org/dist/activemq/5.15.12/apache-activemq-5.15.12-bin.tar.gz && \
    tar -xzf activemq.tar.gz && \
    chown 1001 -R /apache-activemq-5.15.12

EXPOSE 8161 8161

USER 1001

CMD ["apache-activemq-5.15.12/bin/activemq", "console"]
