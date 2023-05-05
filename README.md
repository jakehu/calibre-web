# calibre-web

### 运行
```shell
docker run -d \
  --name=calibre-web \
  -e PUID=0 \
  -e PGID=0 \
  -e TZ=Asia/Chongqing \
  -e DOCKER_MODS=linuxserver/mods:universal-calibre \
  -e OAUTHLIB_RELAX_TOKEN_SCOPE=1 \
  -e LANGUAGE=zh_CN.UTF-8
  -e LANG=zh_CN.UTF-8
  -p 8083:8083 \
  -v /volume1/docker/calibre-web:/config \
  -v /volume1/books:/books \
  --restart unless-stopped \
  jakehu/calibre-web:0.6.20
```

### GitHub加速
```shell
docker exec -it calibre-web bash

sed -i 's#https://github.com#https://ghproxy.com/https://github.com#g' /etc/s6-overlay/s6-rc.d/init-mod-universal-calibre-setup/run
```

### 空数据库
```
https://github.com/janeczku/calibre-web/blob/master/library/metadata.db
```

### 数据库位置
```
/books/metadata.db
```

### 参考
```
https://blog.mokeedev.com/2022/06/1124/
https://fugary.com/?s=calibre-web
```