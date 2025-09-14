#!/bin/bash
LOGFILE=$HOME/mining-boot.log

echo "[$(date)] Memulai mining loop..." >> $LOGFILE
termux-wake-lock

while true; do
    echo "[$(date)] Menjalankan Verus Miner..." >> $LOGFILE
    /data/data/com.termux/files/home/verus-termux/ccminer/start.sh >> $LOGFILE 2>&1
    echo "[$(date)] Miner crash/stop, restart dalam 10 detik..." >> $LOGFILE
    sleep 10
done

# Beri izin eksekusi
chmod +x ~/.termux/boot/mining-boot.sh
