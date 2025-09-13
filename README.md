# 💎 VerusCoin Mining dengan Termux (ARM64)
Halo sahabat penambang 👋  
Selamat datang di repo **viantmocy/verus-termux**.  
Repo ini dibuat untuk memudahkan setup mining **VerusCoin (VRSC)** di Android menggunakan **Termux** dan **Termux:Boot** agar bisa berjalan otomatis setelah reboot.

---
## ⚡ Persiapan
**Install dahulu Termux dan Termux:Boot dari F-Droid**  
👉 [Termux di F-Droid](https://f-droid.org/en/packages/com.termux/)  
👉 [Termux:Boot di F-Droid](https://f-droid.org/en/packages/com.termux.boot/)

---
## 🚀 Cara Install
\`\`\`bash
pkg install git -y
git clone https://github.com/viantmocy/verus-termux.git
cd verus-termux
bash install.sh
\`\`\`

---
## 📝 Konfigurasi Wallet
Edit \`ccminer/config.json\`:
\`\`\`json
"user": "RYourWalletAddressHere.worker1"
\`\`\`

---
## 🔄 Auto Boot
\`termux-boot-setup.sh\` akan menyalin \`mining-boot.sh\` ke \`.termux/boot/\`.  
Setelah reboot, mining otomatis berjalan.

---
## 📂 Struktur Repo
\`\`\`
ccminer/           → binary ccminer + config + start.sh
install.sh         → installer
mining-boot.sh     → loop miner
termux-boot-setup.sh → setup auto boot
\`\`\`

---
## 📖 Log
\`\`\`bash
cat ~/mining-boot.log
\`\`\`

---
## ✨ Selamat menambang VRSC i ❤️ harini
