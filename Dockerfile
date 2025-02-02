FROM centos:8
ENV container docker
#ENV http_proxy http://172.17.0.1:3128
#RUN echo "include_only=.jp" >> /etc/yum/pluginconf.d/fastestmirror.conf
RUN yum update -y
#RUN yum groupinstall -y "Minimal Install"
RUN yum install -y epel-release
RUN yum groupinstall -y "Xfce"
#RUN yum groupinstall -y "Development Tools"
RUN yum install -y R firefox  xrdp tigervnc-server ssh-server sudo supervisor langpack-pt_BR  --skip-broken   
#RUN yum -y reinstall glibc-common
RUN localedef -v -c -i pt_BR -f UTF-8 pt_BR.UTF-8; echo "";
RUN yum remove -y NetworkManager ctags
ADD setup-libreoffice.sh /
RUN /bin/bash -xe /setup-libreoffice.sh
ADD setupcontainer.sh /
RUN /bin/bash -xe  /setupcontainer.sh
ADD entrypoint.sh /
ADD home.tar.gz / 
EXPOSE 3389
VOLUME /home
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
