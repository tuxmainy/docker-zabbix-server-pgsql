FROM zabbix/zabbix-server-pgsql:ubuntu-5.0-latest

USER root
RUN set -eux && \
	apt-get -y update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install python3 python3-requests && \
	ln -s /usr/bin/python3 /usr/bin/python && \
	apt-get -y autoremove && \
	apt-get -y clean && \
	rm -rf /var/lib/apt/lists/*

USER 1997
