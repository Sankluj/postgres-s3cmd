FROM postgres:13.1
MAINTAINER Matthieu Kluj <matthieu.kluj@gmail.com>

RUN apt-get update \
    && apt-get install -y \
      python \
      python3-pip \
      cron \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install 's3cmd>=2.0.0'
