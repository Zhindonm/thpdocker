# Script that will run inside the container to start thp
# 
#!/bin/bash
echo "Initialized start script"
echo "Loading iptables configuration: ./iptables.rules"
./iptables.rules
iptables-save
echo ""
echo "Initializing portmap service: service portmap start"
service portmap start
echo ""
echo "Install the fake service translations: pmap_set < fakerpc"
pmap_set < fakerpc
echo ""
echo "Initializing xinetd service: service xinetd start"
service xinetd start
echo "Start script DONE"

sysctl net.ipv4.conf.all.forwarding=1
iptables -P FORWARD ACCEPT