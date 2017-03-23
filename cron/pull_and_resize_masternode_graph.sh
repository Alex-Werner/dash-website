#!/bin/bash

# pull hourly-updated http-only masternode count image
# resize, removing shadow
# place
# requires imagemagick 
# invoked */10 by cron

FILE=masternode_count.png

rm -f /tmp/$FILE

wget -q http://178.254.23.111/~pub/masternode_count.png -O /tmp/$FILE

convert /tmp/masternode_count.png -crop 813x525+6+6 /tmp/masternode_count-crop-813x525.png

cp -f /tmp/masternode_count-crop-813x525.png /home/ubuntu/broadcast/assets/img/masternode_count-crop-813x525.png
