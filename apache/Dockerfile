FROM centos:7

RUN yum -y update && yum clean all
RUN yum -y install httpd httpd-devel gcc* make && yum clean all

# mod_jk conf files
ADD httpd-proxy.conf /etc/httpd/conf.d/

# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
