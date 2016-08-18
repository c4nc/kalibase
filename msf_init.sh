#!/bin/bash
/etc/init.d/postgresql start # Start DB for cached searches
msfupdate #Update MSF
msfconsole -q -x "db_rebuild_cache;  exit" #Rebuild db search cache in background
msfconsole # Launch Metasploit framework 
