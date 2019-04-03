FROM logstash:5.6-alpine


COPY ./gemfiles/logstash-codec-juniper-udp-native-sensors-0.1.0.gem /var/tmp
COPY ./gemfiles/logstash-input-openconfig-0.1.0-java.gem /var/tmp
ADD start.sh /var/tmp/start.sh
RUN apk add ruby 
RUN apk add git
RUN logstash-plugin install logstash-codec-netflow
RUN logstash-plugin install logstash-output-influxdb
RUN logstash-plugin install /var/tmp/logstash-codec-juniper-udp-native-sensors-0.1.0.gem
RUN logstash-plugin install /var/tmp/logstash-input-openconfig-0.1.0-java.gem
RUN apk add  py-pip \
    && pip install \
        jinja2-cli[yaml] \
        PyYAML 
RUN chmod +x /var/tmp/start.sh
CMD ["/var/tmp/start.sh"]
