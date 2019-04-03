#!/bin/sh
if [ -f /var/tmp/data/vars.yaml ]
then
	jinja2 --strict --format=yaml /var/tmp/templates/*-template.j2 /var/tmp/data/vars.yaml > /var/tmp/logstash-jti.conf
else
	jinja2 --strict /var/tmp/templates/*-template.j2 /var/tmp/data/vars.yaml > /var/tmp/logstash-jti.conf
fi

logstash -f /var/tmp/logstash-jti.conf
