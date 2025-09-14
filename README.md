# 💎 VerusCoin Mining di Android (Termux ARM64)

Halo sahabat penambang 👋  
Selamat datang di repo **viantmocy/verus-termux**!  

Repo ini dibuat untuk memudahkan setup **VerusCoin (VRSC)** di Android menggunakan **Termux** dan **Termux:Boot**, agar mining bisa berjalan otomatis setelah reboot.

---

## ⚡ Persiapan

Sebelum mulai, pastikan kamu sudah menginstall:  

- [Termux (F-Droid)](https://f-droid.org/en/packages/com.termux/)  
- [Termux:Boot (F-Droid)](https://f-droid.org/en/packages/com.termux.boot/)

> Catatan: Pastikan Androidmu kompatibel dengan ARM64. Tidak perlu root untuk setup ini.  

---

## 🚀 Cara Install

Buka Termux, lalu jalankan perintah berikut satu per satu:

```bash
## 🚀 Cara Install

Buka **Termux**, lalu jalankan perintah berikut satu per satu:

```bash
pkg update -y && pkg upgrade -y
pkg install git -y

git clone https://github.com/viantmocy/verus-termux.git
cd verus-termux/ccminer

chmod +x install.sh
./install.sh

# Setelah selesai, jalankan miner dengan:
./start.sh