#!/bin/bash
BOOTDIR=$HOME/.termux/boot
mkdir -p $BOOTDIR

cp $HOME/verus-termux/ccminer/mining-boot.sh $BOOTDIR/
chmod +x $BOOTDIR/mining-boot.sh

echo "[*] Auto-boot sudah diset. Reboot HP untuk mulai mining otomatis."
