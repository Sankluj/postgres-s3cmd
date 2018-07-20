FROM postgres:10.4
MAINTAINER Matthieu Kluj <matthieu.kluj@gmail.com>

RUN apt-get update \
    && apt-get install -y \
      python \
      python-pip \
      cron \
      s3cmd \
    && rm -rf /var/lib/apt/lists/*
