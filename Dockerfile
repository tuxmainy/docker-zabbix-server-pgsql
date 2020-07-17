FROM zabbix/zabbix-server-pgsql:ubuntu-4.4.6

RUN set -eux && \
	apt-get -y update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install python3 python3-requests && \
	ln -s /usr/bin/python3 /usr/bin/python && \
	apt-get -y autoremove && \
	apt-get -y clean && \
	rm -rf /var/lib/apt/lists/*
