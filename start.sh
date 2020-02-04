# Script that will run inside the container to start thp
# 
#!/bin/bash
./iptables.rules
/etc/rc.d/init.d/portmap start