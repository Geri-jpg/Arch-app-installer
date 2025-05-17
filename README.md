# 🧩 Arch App Installer

A simple graphical tool for quickly installing your favorite apps on a fresh Arch Linux system — using only the official `pacman` repository.

✅ Works entirely with `bash` + `yad`
✅ No AUR, no Flatpak, no Snap
✅ Pick what you want with checkboxes
✅ One-click installation

---

## 🎯 Features

* Clean and beginner-friendly interface
* Over 30 popular applications to choose from
* Safe: skips invalid packages
* Easily expandable (just edit one list)
* No root permissions required until install time

---

## 📦 Included Apps (Examples)

**Browsers**

* Brave, Chromium, Firefox, Tor

**Gaming**

* Steam, Lutris, Heroic, RetroArch, Minecraft

**Multimedia**

* OBS Studio, VLC, MPV, Kdenlive, Audacity

**Productivity**

* LibreOffice, OnlyOffice, Okular, GNOME Calendar

**Development**

* VS Code, Python, Node.js, Docker, Geany

**Communication**

* Discord, Telegram, Thunderbird, Element, Signal

**System Tools**

* Timeshift, GParted, Btop, BleachBit, Neofetch

> View the full list in the script file.

---

## 🚀 How to Use

1. **Install YAD** (if not already installed):

   ```bash
   sudo pacman -S yad
   ```

2. **Clone the repository**:

   ```bash
   git clone https://github.com/Geri-jpg/arch-app-installer.git
   cd arch-app-installer
   ```

3. **Run the installer**:

   ```bash
   chmod +x arch-app-installer.sh
   sudo ./arch-app-installer.sh
   ```

---

## 📁 File Overview

| File                    | Description                               |
| ----------------------- | ----------------------------------------- |
| `arch-app-installer.sh` | Main script with GUI and app logic        |
| `README.md`             | Project documentation (you’re reading it) |
| *(optional)* `.desktop` | Launcher entry if added later             |

---

## 💡 Plans / TODO

* [ ] Category grouping in the UI
* [ ] Optional AUR/Flatpak support
* [ ] Dark mode or custom themes
* [ ] Flatpak-only mode switch
* [ ] `.desktop` launcher (for system menu)

---

## 🙌 Credits

Inspired by tools like:

* [Chris Titus Tech Windows Utility](https://github.com/ChrisTitusTech/winutil)

---
