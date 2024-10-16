FROM debian:buster

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y gnucash idutch task-dutch wdutch locales tree dbus-x11

# Set the locale
RUN sed -i '/nl_NL.UTF-8/s/^# //g;/en_EN.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen

CMD [ "/bin/bash" ]
