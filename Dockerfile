FROM dockerfile/java:oracle-java7
MAINTAINER Ian McCracken <ian.mccracken@gmail.com>

# Make it nicer in the container
ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

# Install the datastax repo
RUN curl -s https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.2.tar.gz | tar -C /usr/local -xz
RUN ln -s /usr/local/elasticsearch-1.4.2 /usr/local/elasticsearch