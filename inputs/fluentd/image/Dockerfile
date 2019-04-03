FROM fluent/fluentd:v0.12.43

WORKDIR /var/tmp

COPY ./gemfiles/fluent-plugin-grpc-oc-keyvalue-0.0.1.gem /var/tmp 
COPY ./gemfiles/fluent-plugin-udp-native-sensors-0.0.1.gem /var/tmp
COPY  plugins /fluentd/plugins 


ADD start.sh /var/tmp/start.sh

RUN apk add --update --virtual .build-deps \
        build-base ruby-dev python python-dev py-pip \
     && gem install \
        fluent-plugin-influxdb:0.3.3 \
        fluent-plugin-kafka \
        fluent-plugin-netflow:0.2.7 \
        yajl \
        ltsv \
        zookeeper \
        bigdecimal \
        /var/tmp/fluent-plugin-grpc-oc-keyvalue-0.0.1.gem  \
        /var/tmp/fluent-plugin-udp-native-sensors-0.0.1.gem 

RUN apk add  py-pip \
    && pip install \
        jinja2-cli[yaml] \
        PyYAML \
    && gem sources --clear-all \
    && apk del .build-deps \
    && rm -rf /var/cache/apk/* \
           /home/fluent/.gem/ruby/2.4.0/cache/*.gem

RUN chmod +x /var/tmp/start.sh
CMD ["/var/tmp/start.sh"]
