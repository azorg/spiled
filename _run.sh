#! /bin/sh

./_make.sh

echo ">>> run './spiled'"
#sudo nice --19 ./spiled -r -d 10 > data.txt 
#sudo ./spiled -r -d 10 > data.txt 
sudo ./spiled -d 10 > data.txt 
