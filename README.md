# centos7-xrdp
## Rodando o Centos 7 com XRDP

docker build -f Dockerfile -t xrdp:latest .
docker run -p 3389:3389 xrdp:latest 
docker run -v /root/centos7-xrdp/home/:/home/  -p 3389:3389 xrdp:latest
