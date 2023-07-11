#!/bin/bash

cd 
cd bot

cp /root/bot/database/champions.json /root/backup/
cp /root/bot/database/last_gay.json /root/backup/
cp /root/bot/database/prev_month.json /root/backup/
cp /root/bot/database/prev_time.json /root/backup/
cp /root/bot/database/stat.json /root/backup/

git stash
git pull
git stash clear

mv /root/backup/champions.json /root/bot/database/
mv /root/backup/last_gay.json /root/bot/database/
mv /root/backup/prev_month.json /root/bot/database/
mv /root/backup/prev_time.json /root/bot/database/
mv /root/backup/stat.json /root/bot/database/

rm -r /root/backup/

bot-restart
bot-status
