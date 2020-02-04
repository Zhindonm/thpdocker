FROM centos:5

# Setup vault repos
RUN find /etc/yum.repos.d/ -type f -exec sed -i 's/#baseurl/baseurl/g' {} \;
RUN find /etc/yum.repos.d/ -type f -exec sed -i 's/mirrorlist/#mirrorlist/g' {} \;
RUN find /etc/yum.repos.d/ -type f -exec sed -i 's/mirror.centos.org\/centos\/$releasever/vault.centos.org\/5.0/g' {} \;
RUN find /etc/yum.repos.d/ -type f -exec sed -i 's/$basearch/x86_64/g' {} \;
RUN yum clean all
RUN yum update
# RUN yum install git

# Setup environment

RUN mkdir -p /var/log/thpot 
RUN chown nobody:nobody /var/log/thpot
RUN chmod 700 /var/log/thpot

# Copy local thp files to container

WORKDIR /usr/local/thp
ADD thp/ .
ADD logs /var/log/thpot
# RUN cp -r /usr/local/thp/xinetd.d /etc/xinetd.d


# RUN ./thp/iptables.rules
# RUN /etc/rc.d/init.d/portmap start
 

