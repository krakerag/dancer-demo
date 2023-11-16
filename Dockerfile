FROM ubuntu:latest
RUN apt-get update                      && \
    apt-get upgrade -y                  && \
    apt-get install -y less wget        && \
    apt-get install -y build-essential  && \
    apt-get install -y libdancer-perl
COPY . /opt
WORKDIR /opt
ENTRYPOINT [ "perl", "app.pl" ]