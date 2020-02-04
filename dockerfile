FROM centos:5

# RUN ping google.com
# RUN yum update
# RUN yum install git

# RUN git clone https://github.com/Zhindonm/thp

RUN mkdir -p /var/log/thpot 
RUN chwon nobody:nobody /var/log/thpot
RUN chmod 700 /var/log/thpot
ADD logs /var/log/thpot

WORKDIR /usr/local/thp

# RUN ./thp/iptables.rules
# RUN /etc/rc.d/init.d/portmap start
 

