FROM ubuntu:14.04
MAINTAINER ziplus4 <ziplus4@gmail.com>

RUN apt-get update && apt-get install -y dnsmasq dnsutils && apt-get clean

RUN echo "addn-hosts=/etc/althosts" >> /etc/dnsmasq.conf
RUN echo "user=root" >> /etc/dnsmasq.conf

EXPOSE 53

CMD ["/usr/sbin/dnsmasq","-d"]
