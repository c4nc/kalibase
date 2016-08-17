# Name: kalibase
# Version: 0.0.1
# Desc: Kali image plus basic infosec tools
FROM kalilinux/kali-linux-docker:latest
MAINTAINER Luca Cancelliere "luca.canc@gmail.com"
RUN apt-get update -y && apt-get upgrade -y &&\
apt-get install -y metasploit-framework nmap dnsenum \
dnsmap exploitdb masscan theharvester wireshark sqlmap \
commix shellnoob set wordlists webshells weevely dnsutils \
vim git && \
apt-get autoremove && \
rm -rf /var/lib/apt/lists/*
CMD ["/bin/bash"]
