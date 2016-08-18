# Name: kalibase
# Version: 0.1.1
# Desc: Kali image plus basic infosec tools
FROM kalilinux/kali-linux-docker:latest
MAINTAINER Luca Cancelliere "luca.canc@gmail.com"
RUN apt-get update -y && apt-get upgrade -y && \
apt-get install -y metasploit-framework nmap dnsenum bettercap \
dnsmap exploitdb masscan theharvester wireshark sqlmap mitmproxy \
commix shellnoob set wordlists webshells weevely dnsutils sslstrip patator hydra joomscan \
vim git cryptcat && apt-get autoremove && rm -rf /var/lib/apt/lists/*
ADD ./msf_init.sh /usr/local/bin/msf_init.sh
#Start Posgress for init msf
RUN /etc/init.d/postgresql start
#Initialize msf4 DB
RUN ["msfdb", "init"]
# Starting script (Updates + DB + db cache)
CMD msf_init.sh
