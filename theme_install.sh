#!/bin/bash

wget -q https://github.com/dracula/gtk/archive/master.zip
unzip -q master.zip
rm master.zip

mkdir -p ~/.themes
mv gtk-master ~/.themes

gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"

# additional steps for gtk-4,0
cp -r ~/.themes/gtk-master/assets ~/.config
cp ~/.themes/gtk-master/gtk-4.0/gtk.css ~/.config/gtk-4.0
cp ~/.themes/gtk-master/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0

# icon install
wget -q https://github.com/dracula/gtk/files/5214870/Dracula.zip
unzip -q Dracula.zip  > /dev/null 2>&1
rm Dracula.zip

mkdir -p ~/.icons
mv Dracula ~/.icons

gsettings set org.gnome.desktop.interface icon-theme "Dracula"

# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# save session on logout DOESNT WORK!
# gsettings set org.gnome.SessionManager auto-save-session true

echo "reboot to apply changes"
