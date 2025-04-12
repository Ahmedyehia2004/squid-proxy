FROM ubuntu:latest
RUN apt-get update && apt-get install -y squid
COPY squid.conf /etc/squid/squid.conf
EXPOSE 3128
CMD ["squid", "-N"]
