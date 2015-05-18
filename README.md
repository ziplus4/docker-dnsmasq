# README #

dnsmasq Dockerfile.
[docker-dnsmasq](https://bitbucket.org/devries/docker-dnsmasq)를 참고하였습니다.

### 이미지 생성 ###

```
$ sudo docker build -t ${USER}/dnsmasq .
```

### 컨테이너 생성 ###
```
$ sudo docker run -d --name dnsmasq -p <IP ADDRESS>:53:53/udp \
-v /path/to/althosts:/etc/althosts ${USER}/dnsmasq
```
