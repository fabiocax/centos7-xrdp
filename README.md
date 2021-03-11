# centos7-xrdp

docker build -f Dockerfile -t xrdp:latest .
docker run -p 3389:3389 xrdp:latest 
