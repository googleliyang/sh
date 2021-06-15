folder=h5_backs

cd "$(dirname "$0")"

mkdir -p ./$folder

tar -czf ./$folder/h5-back-`date +%Y%m%d`.tar.gz ./h5/*

echo $(date) backup successfully

# add crontab
# crontab -e
# 00 24 * * 1-6 /root/crontab/back.sh >> /www/server/cron/h5_back.log 2>&1

# list crontabs
# crontab -l
