
# docker build -t  mailbyms/metricbeat-redis-mysql:7.10.2 .

# base image
FROM elastic/metricbeat:7.10.2

#MAINTAINER
MAINTAINER MIKE

RUN /usr/share/metricbeat/metricbeat modules enable redis mysql \
 && /usr/share/metricbeat/metricbeat modules disable system
