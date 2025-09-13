#!/bin/bash
# VerusCoin Miner Installer for Termux ARM64
# Repo: viantmocy/verus-termux

echo "[*] Update & install dependencies..."
pkg update -y && pkg upgrade -y
pkg install -y git wget unzip curl nano libjansson termux-tools

echo "[*] Pastikan folder ccminer ada..."
if [ ! -d "$HOME/verus-termux/ccminer" ]; then
    echo "!! Folder ccminer tidak ditemukan. Pastikan repo sudah di-clone."
    exit 1
fi

echo "[*] Set permission executable..."
chmod +x $HOME/verus-termux/ccminer/ccminer
chmod +x $HOME/verus-termux/ccminer/start.sh
chmod +x $HOME/verus-termux/mining-boot.sh
chmod +x $HOME/verus-termux/termux-boot-setup.sh

echo "[*] Setup auto-boot..."
bash $HOME/verus-termux/termux-boot-setup.sh

echo "[*] Install selesai!"
echo "Silakan edit wallet di $HOME/verus-termux/ccminer/config.json lalu reboot HP."
