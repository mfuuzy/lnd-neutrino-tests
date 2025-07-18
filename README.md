# 说明
测试 LND 配置 neutrino 模式的联通情况。

# 启动
## 启动LND
```
docker compose up -d
```

## 初始化
第一次会自动初始化，并解锁 Wallet 
```
docker compose exec lnd bash /scripts/start.sh
```
如果容器自动重启了，需要再执行该命令解锁 Wallet。