yamlreader /source/data/*.yaml > /source/all_vars_merged.yaml

if [ -f /source/all_vars_merged.yaml ]
then
  jinja2 --strict --format=yaml /source/templates/telegraf-template.j2 /source/all_vars_merged.yaml > /source/telegraf.conf
else
  jinja2 --strict /source/templates/telegraf-template.j2 > /source/telegraf.conf
fi
/usr/bin/telegraf --config /source/telegraf.conf
