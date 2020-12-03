FROM alpine:latest

COPY bin/set_mariadb_data_perms.sh /usr/local/bin/

RUN apk update && \
	apk add bash

RUN chmod +x /usr/local/bin/set_mariadb_data_perms.sh

CMD [ "/usr/local/bin/set_mariadb_data_perms.sh" ]

