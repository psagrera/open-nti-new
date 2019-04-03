FROM psagrera/telegraf:1.5


RUN apk update
RUN apk add py-pip openssh curl git make build-base libffi-dev libxml2-dev libxslt-dev openssl-dev python-dev
RUN pip install --upgrade pip
RUN pip install \
		jinja2-cli[yaml] \
		PyYAML \
		cffi \
		influxdb  \
		xmltodict \
		pexpect \
		lxml \
		pytest \
		mock \
		yamlreader \
		junos-eznc==2.2.0 \
		enum
WORKDIR /source

ADD start.sh /source/start.sh

#ADD telegraf.conf /var/tmp/telegraf.conf

RUN chmod +x /source/start.sh

RUN mkdir logs && touch logs/telegraf_udp.log

CMD ["/source/start.sh"]
