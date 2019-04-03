FROM influxdb:1.6.4


#####################
### Configuration ###
#####################

RUN mkdir /docker-entrypoint-initdb.d/
COPY  ./config/influxdb.sh /docker-entrypoint-initdb.d/influxdb.sh
RUN  chmod +x /docker-entrypoint-initdb.d/influxdb.sh
# Expose ports

EXPOSE 8086 8089
