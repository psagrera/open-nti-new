#!/bin/sh
if [ -f /var/tmp/data/vars.yaml ]
then
	jinja2 --strict --format=yaml /var/tmp/templates/*-template.j2 /var/tmp/data/vars.yaml > /fluentd/etc/fluent.conf
else
	jinja2 --strict /var/tmp/templates/*-template.j2 /var/tmp/data/vars.yaml > /fluentd/etc/fluent.conf
fi

/usr/bin/ruby /usr/bin/fluentd -c /fluentd/etc/fluent.conf -p /fluentd/plugins
