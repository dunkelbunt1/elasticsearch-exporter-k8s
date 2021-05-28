FROM justwatch/elasticsearch_exporter:1.1.0
RUN mkdir -p /usr/share/elasticsearch-exporter/config/env
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["sh", "/docker-entrypoint.sh"]
