#! /bin/sh

./_make.sh

echo ">>> run './spiled'"
#sudo nice --19 ./spiled -r -D 10 > data.txt 
#sudo ./spiled -r -D 10 > data.txt 
#sudo ./spiled -D 10 > data.txt 
sudo ./spiled 
