FROM postgres:10.4
MAINTAINER Matthieu Kluj <matthieu.kluj@gmail.com>

RUN apt-get update \
    && apt-get install -y \
      python \
      python-pip \
      cron \
    && rm -rf /var/lib/apt/lists/*

RUN pip install 's3cmd>=2.0.0'
