# Kalibase Docker

>Infosec  container based on the [official Kali docker image](https://hub.docker.com/r/kalilinux/kali-linux-docker).
Use it as a full shell kali's environment (for a complete list of installed tools check the "Tools" section below) or
launch it as a Metasploit container: in this way it manage all te necessesary init phases (db + search cache).

> Docker hub: https://hub.docker.com/r/c4nc/kalibase

>Size: ~ 2.3 GB

### Usage:

###### Kali interactive shell mode
`:~# docker run [--name YouContainerName] -it c4nc/kalibase[:latest|vX.X]`
\*Hint: you can even launch metasploit within the shell with all the initialization using `:~# msfstart [-u]`


###### Metasploit console mode
`:~# docker run [--name YouContainerName] -it  c4nc/kalibase[:latest|x.x.x] msfstart [-u]`

 msfstart -u | update msf and rebuild the search cache before launch the console


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
