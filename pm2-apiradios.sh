#!/bin/sh

npm run prestart

pm2 status | grep apiradio && pm2 delete apiradio
PORT=6022 pm2 start .  -i 0  --name "apiradio"  --output="/dev/null" --log-date-format="YYYY-MM-DD HH:mm Z"
pm2 save