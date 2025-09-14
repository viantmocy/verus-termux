cd ~/verus-termux
cat > install.sh << 'EOF'
#!/bin/bash
# VerusCoin Miner Installer for Termux ARM64
# Repo: viantmocy/verus-termux

# Warna
GREEN="\033[1;32m"
CYAN="\033[1;36m"
YELLOW="\033[1;33m"
RESET="\033[0m"

# Fungsi animasi titik
loading() {
    msg=$1
    echo -ne "${YELLOW}[*] $msg${RESET}"
    for i in {1..3}; do
        echo -n "."
        sleep 0.4
    done
    echo ""
}

# Banner TMOCY pakai titik
banner_tmocy() {
echo -e "${GREEN}"
echo "████████╗███╗   ███╗ ██████╗  ██████╗██╗   ██╗"
echo "╚══██╔══╝████╗ ████║██╔═══██╗██╔════╝██║   ██║"
echo "   ██║   ██╔████╔██║██║   ██║██║     ██║   ██║"
echo "   ██║   ██║╚██╔╝██║██║   ██║██║     ██║   ██║"
echo "   ██║   ██║ ╚═╝ ██║╚██████╔╝╚██████╗╚██████╔╝"
echo "   ╚═╝   ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═════╝ "
echo -e "${RESET}"
}

echo -e "${CYAN}"
echo "========================================="
echo "      VerusCoin Miner Installer"
echo "        by viantmocy/verus-termux"
echo "========================================="
echo -e "${RESET}"

loading "Update & install dependencies"
pkg update -y && pkg upgrade -y
pkg install -y git wget proot unzip curl nano libjansson termux-tools

loading "Membuat folder ccminer"
mkdir -p ~/ccminer
cd ~/ccminer

loading "Mengunduh file dari GitHub"
wget -q https://raw.githubusercontent.com/viantmocy/verus-termux/main/ccminer/ccminer -O ccminer
wget -q https://raw.githubusercontent.com/viantmocy/verus-termux/main/ccminer/config.json -O config.json
wget -q https://raw.githubusercontent.com/viantmocy/verus-termux/main/ccminer/start.sh -O start.sh

loading "Mengatur permission"
chmod +x ccminer start.sh

loading "Setup auto-boot"
cd ~/verus-termux
bash termux-boot-setup.sh

cd ~/verus-termux/ccminer

echo ""
banner_tmocy
echo -e "${GREEN}Install Selesai! 🎉${RESET}"
echo -e "${CYAN}Silakan edit wallet di file berikut:${RESET}"
echo -e "${YELLOW}nano ~/ccminer/config.json${RESET}"
echo ""
echo -e "${CYAN}Untuk mulai mining jalankan perintah:${RESET}"
echo -e "${GREEN}./start.sh${RESET}"
EOF

chmod +x install.sh
cd ~/verus-termux/ccminer