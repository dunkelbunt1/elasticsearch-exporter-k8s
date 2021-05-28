#!/bin/sh

export ELASTICSEARCH_PASSWORD="$(cat /usr/share/elasticsearch-exporter/config/env/elastic_password)"


set -e
/bin/elasticsearch_exporter \
  --es.uri="https://${ELASTICSEARCH_USER}:${ELASTICSEARCH_PASSWORD}@${ELASTICSEARCH_URL}" \
  --es.all \
  --es.ca=${ELASTICSEARCH_CA_FILE} \
  --es.client-private-key=${ELASTICSEARCH_PK_FILE} \
  --es.client-cert=${ELASTICSEARCH_CRT_FILE} \
  --es.indices \
  --es.indices_settings \
  --es.timeout=10s
