# centos8-xrdp
## Rodando o Centos 8 com XRDP

docker build -f Dockerfile -t xrdp:latest .

docker run -p 3389:3389 xrdp:latest 

rdesktop 127.0.0.1 -u user -p user
