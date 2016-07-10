# FROM debian:jessie
FROM python:2.7.12
MAINTAINER Guang Yang <garry.yangguang@gmail.com>
ENV REFRESHED_AT 2016-07-09

WORKDIR /home/dev
ENV HOME /home/dev

# Python Dependencies
ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

CMD ipython notebook --port 7778 --ip 0.0.0.0
