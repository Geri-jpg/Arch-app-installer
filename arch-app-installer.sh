#!/bin/bash
set -e

# Function: check if a package is available in the repo
is_valid_package() {
  pacman -Si "$1" &>/dev/null
}

# Check if yad is installed
if ! command -v yad &> /dev/null; then
  echo "❌ 'yad' is not installed."
  echo "Please install it with: sudo pacman -S yad"
  exit 1
fi

# Define the list of installable apps
declare -a app_list=(
  brave-browser
  chromium
  firefox
  torbrowser-launcher
  steam
  lutris
  heroic-games-launcher
  retroarch
  minecraft-launcher
  timeshift
  btop
  gparted
  bleachbit
  neofetch
  obs-studio
  vlc
  mpv
  kdenlive
  audacity
  code
  geany
  python
  nodejs
  docker
  libreoffice-fresh
  okular
  evince
  gnome-calendar
  discord
  telegram-desktop
  thunderbird
  element-desktop
  signal-desktop
)

# Build yad input dynamically
yad_input=""
for app in "${app_list[@]}"; do
  yad_input+="FALSE $app "
done

# Show selection dialog
selected_apps=$(yad --list \
  --checklist \
  --title="🧩 Arch Software Installer" \
  --column="Install" --column="Program" \
  $yad_input \
  --width=600 --height=600 \
  --separator=" ")

# Exit if nothing selected
if [[ -z "$selected_apps" ]]; then
  echo "🚫 No applications selected. Aborting."
  exit 0
fi

# Install selected apps with validation
for app in $selected_apps; do
  if is_valid_package "$app"; then
    echo "📦 Installing: $app"
    sudo pacman -S --noconfirm "$app"
  else
    echo "⚠️ Warning: '$app' is not available in pacman. Skipping."
  fi
done

yad --info --text="✅ Installation completed!"

