FROM registry.eorlbruder.de/cron
MAINTAINER  David Magnus Henriques <eorlbruder@magnus-henriques.de>

ADD assets/fcrontab /etc/fcrontab
RUN fcrontab /etc/fcrontab

RUN mkdir /certs
RUN mkdir /acme

ADD assets/concat_acme.sh /concat_acme.sh

CMD ["supervisord", "-n"]
