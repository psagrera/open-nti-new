DOCKER_FILE_FLUENTD = docker-compose-fluentd.yml
DOCKER_FILE_TELEGRAF = docker-compose-telegraf.yml
DOCKER_FILE_LOGSTASH = docker-compose-logstash.yml

################### FLUENTD ###########################

start-fluentd:
	@echo "Use docker compose file: $(DOCKER_FILE_FLUENTD)"
		docker-compose -f $(DOCKER_FILE_FLUENTD) up -d

stop-fluentd:
	@echo "Use docker compose file: $(DOCKER_FILE_FLUENTD)"
		docker-compose -f $(DOCKER_FILE_FLUENTD) down

build-fluentd:
	@echo "Use docker compose file: $(DOCKER_FILE_FLUENTD)"
		docker-compose -f $(DOCKER_FILE_FLUENTD) build

restart-fluentd-jti-native:
	@echo "Use docker compose file: $(DOCKER_FILE_FLUENTD)"
		docker-compose -f $(DOCKER_FILE_FLUENTD) restart jti_udp_native

restart-fluentd-jti-oc:
	@echo "Use docker compose file: $(DOCKER_FILE_FLUENTD)"
		docker-compose -f $(DOCKER_FILE_FLUENTD) restart jti_openconfig

restart-influxdb-fluentd:
	@echo "Use docker compose file: $(DOCKER_FILE_FLUENTD)"
		docker-compose -f $(DOCKER_FILE_FLUENTD) restart influxdb

restart-grafana-fluentd:
	@echo "Use docker compose file: $(DOCKER_FILE_FLUENTD)"
		docker-compose -f $(DOCKER_FILE_FLUENTD) restart grafana

restart-chronograf-fluentd:
	@echo "Use docker compose file: $(DOCKER_FILE_FLUENTD)"
		docker-compose -f $(DOCKER_FILE_FLUENTD) restart chronograf

restart-kapacitor-fluentd:
	@echo "Use docker compose file: $(DOCKER_FILE_FLUENTD)"
		docker-compose -f $(DOCKER_FILE_FLUENTD) restart kapacitor

restart-kafka-fluentd:
	@echo "Use docker compose file: $(DOCKER_FILE_FLUENTD)"
		docker-compose -f $(DOCKER_FILE_FLUENTD) restart kafka
		docker-compose -f $(DOCKER_FILE_FLUENTD) restart zookeeper

#################### END FLUENTD ##########################

#################### TELEGRAF #############################

start-telegraf:
	@echo "Use docker compose file: $(DOCKER_FILE_TELEGRAF)"
		docker-compose -f $(DOCKER_FILE_TELEGRAF) up -d

stop-telegraf:
	@echo "Use docker compose file: $(DOCKER_FILE_TELEGRAF)"
		docker-compose -f $(DOCKER_FILE_TELEGRAF) down

build-telegraf:
	@echo "Use docker compose file: $(DOCKER_FILE_TELEGRAF)"
		docker-compose -f $(DOCKER_FILE_TELEGRAF) build

restart-telegraf-jti-native:
	@echo "Use docker compose file: $(DOCKER_FILE_TELEGRAF)"
		docker-compose -f $(DOCKER_FILE_TELEGRAF) restart jti_udp_native

restart-telegraf-jti-oc:
	@echo "Use docker compose file: $(DOCKER_FILE_TELEGRAF)"
		docker-compose -f $(DOCKER_FILE_TELEGRAF) restart jti_openconfig

restart-influxdb-telegraf:
	@echo "Use docker compose file: $(DOCKER_FILE_TELEGRAF)"
		docker-compose -f $(DOCKER_FILE_TELEGRAF) restart influxdb

restart-grafana-telegraf:
	@echo "Use docker compose file: $(DOCKER_FILE_TELEGRAF)"
		docker-compose -f $(DOCKER_FILE_TELEGRAF) restart grafana

restart-chronograf-telegraf:
	@echo "Use docker compose file: $(DOCKER_FILE_TELEGRAF)"
		docker-compose -f $(DOCKER_FILE_TELEGRAF) restart chronograf

restart-kapacitor-telegraf:
	@echo "Use docker compose file: $(DOCKER_FILE_TELEGRAF)"
		docker-compose -f $(DOCKER_FILE_TELEGRAF) restart kapacitor

restart-kafka-telegraf:
	@echo "Use docker compose file: $(DOCKER_FILE_TELEGRAF)"
		docker-compose -f $(DOCKER_FILE_TELEGRAF) restart kafka
		docker-compose -f $(DOCKER_FILE_TELEGRAF) restart zookeeper

#################### END TELEGRAF ##########################

#################### LOGSTASH #############################

start-logstash:
	@echo "Use docker compose file: $(DOCKER_FILE_LOGSTASH)"
		docker-compose -f $(DOCKER_FILE_LOGSTASH) up -d

stop-logstash:
	@echo "Use docker compose file: $(DOCKER_FILE_LOGSTASH)"
		docker-compose -f $(DOCKER_FILE_LOGSTASH) down

build-logstash:
	@echo "Use docker compose file: $(DOCKER_FILE_LOGSTASH)"
		docker-compose -f $(DOCKER_FILE_LOGSTASH) build

restart-logstash-jti-native:
	@echo "Use docker compose file: $(DOCKER_FILE_LOGSTASH)"
		docker-compose -f $(DOCKER_FILE_LOGSTASH) restart jti_udp_native

restart-logstash-jti-oc:
	@echo "Use docker compose file: $(DOCKER_FILE_LOGSTASH)"
		docker-compose -f $(DOCKER_FILE_LOGSTASH) restart jti_openconfig

restart-influxdb-logstash:
	@echo "Use docker compose file: $(DOCKER_FILE_LOGSTASH)"
		docker-compose -f $(DOCKER_FILE_LOGSTASH) restart influxdb

restart-grafana-logstash:
	@echo "Use docker compose file: $(DOCKER_FILE_LOGSTASH)"
		docker-compose -f $(DOCKER_FILE_LOGSTASH) restart grafana

restart-chronograf-logstash:
	@echo "Use docker compose file: $(DOCKER_FILE_LOGSTASH)"
		docker-compose -f $(DOCKER_FILE_LOGSTASH) restart chronograf

restart-kapacitor-logstash:
	@echo "Use docker compose file: $(DOCKER_FILE_LOGSTASH)"
		docker-compose -f $(DOCKER_FILE_LOGSTASH) restart kapacitor

restart-kafka-logstash:
	@echo "Use docker compose file: $(DOCKER_FILE_LOGSTASH)"
		docker-compose -f $(DOCKER_FILE_LOGSTASH) restart kafka
		docker-compose -f $(DOCKER_FILE_LOGSTASH) restart zookeeper

#################### END LOGSTASH ##########################

