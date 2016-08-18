# Kalibase Linux Container

Simple Kali container based on the [official Kali docker image](https://hub.docker.com/r/kalilinux/kali-linux-docker) plus a basic collection of tools.

It provides the default configuration for metasploit-framework, cache search is automatically started in background at runtime

Docker hub: https://hub.docker.com/r/c4nc/kalibase

Size: ~ 2.5 GB

###Usage:

######Launch metasploit console *
`:~# docker run [--name YouContainerName] -ti  c4nc/kalibase[:latest|vX.X]`

\* Metasploit will be updated before starting and the search cache will be initializated in background

######Spawning an interactive shell
`:~# docker run [--name YouContainerName] -ti c4nc/kalibase[:latest|vX.X] /bin/bash`

NB: To start metasploit with all the initializations from an interactive shell, you can use `:~# msf_init.sh`

### Tools:

#### Information Gathering
- dnstools (dig etc)
- dnsenum
- dnsmap
- nmap
- masscan
- theharvester

#### MITM / Sniffer
- bettercap
- mitmproxy
- sslstrip

#### Exploit / Hack
- metasploit-framework
- exploitdb
- sqlmap
- commix
- shellnoob
- webshells
- weevely
- wordlists
- hydra
- joomscan
- SET

#### Misc
- cryptcat
- wireshark
- vim
- git
