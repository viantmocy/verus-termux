cd ~/verus-termux
cat > install.sh << 'EOF'
#!/bin/bash
# VerusCoin Miner Installer for Termux ARM64
# Repo: viantmocy/verus-termux

echo "[*] Update & install dependencies..."
pkg update -y && pkg upgrade -y
pkg install -y git wget proot unzip curl nano libjansson termux-tools

echo "[*] Buat folder ccminer..."
mkdir -p ~/ccminer
cd ~/ccminer

echo "[*] Unduh file-file dari repo GitHub..."
# Unduh binary ccminer
wget https://raw.githubusercontent.com/viantmocy/verus-termux/main/ccminer/ccminer -O ccminer
# Unduh konfigurasi
wget https://raw.githubusercontent.com/viantmocy/verus-termux/main/ccminer/config.json -O config.json
# Unduh start script
wget https://raw.githubusercontent.com/viantmocy/verus-termux/main/ccminer/start.sh -O start.sh

echo "[*] Set permission executable..."
chmod +x ccminer start.sh

echo "[*] Setup auto-boot..."
cd ~/verus-termux
bash termux-boot-setup.sh

echo "[*] Install selesai!"
echo "Silakan edit wallet di ~/ccminer/config.json lalu reboot HP."
echo "Contoh edit: nano ~/ccminer/config.json"
EOF

chmod +x install.sh