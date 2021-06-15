### add crontab

```
crontab -e

00 24 * * 1-6 /root/crontab/back.sh >> /www/server/cron/h5_back.log 2>&1

```

### list crontabs

```
crontab -l

```
