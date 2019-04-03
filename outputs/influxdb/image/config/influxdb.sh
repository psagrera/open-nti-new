#!/bin/bash
set -e

influx -execute "CREATE DATABASE juniper"
influx -execute "CREATE DATABASE jlogstash"
influx -execute "CREATE DATABASE jfluentd"
influx -execute "CREATE DATABASE snmp"
influx -execute "CREATE RETENTION POLICY four_weeks ON juniper DURATION 4w REPLICATION 1 DEFAULT"
influx -execute "CREATE RETENTION POLICY four_weeks ON jlogstash  DURATION 4w REPLICATION 1 DEFAULT"
influx -execute "CREATE RETENTION POLICY four_weeks ON jfluentd  DURATION 4w REPLICATION 1 DEFAULT"
influx -execute "CREATE RETENTION POLICY four_weeks ON snmp  DURATION 4w REPLICATION 1 DEFAULT"
