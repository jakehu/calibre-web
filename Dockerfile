FROM linuxserver/calibre-web:0.6.20

RUN \
  # https://mirrors.ustc.edu.cn/help/ubuntu.html
  echo "更换本地源" && \
  sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
  sed -i 's/ports.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
  sed -i 's@//.*archive.ubuntu.com@//mirrors.aliyun.com@g' /etc/apt/sources.list && \
  apt-get update