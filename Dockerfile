FROM igez/nginx-php7.0-fpm

MAINTAINER Robby Prima Suherlan <robbiejobs@gmail.com>

ADD ./conf/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Startup script
ADD ./bootstrap.sh /bootstrap.sh
RUN chmod +x /bootstrap.sh

ENTRYPOINT ["/bootstrap.sh"]
