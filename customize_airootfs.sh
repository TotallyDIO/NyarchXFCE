#!/bin/bash
# Enable services
systemctl enable bluetooth
systemctl enable grub-btrfsd

# Fix calamares policy
rm -rf /usr/share/polkit-1/actions/com.github.calamares.calamares.policy
mv /usr/share/polkit-1/actions/com.github.calamares.calamares.polic /usr/share/polkit-1/actions/com.github.calamares.calamares.policy
# Install Flatpaks
flatpak mask "org.freedesktop.Platform.GL.nvidia*"
flatpak install -y org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark
flatpak --remove mask "org.freedesktop.Platform.GL.nvidia*"

# Apply Nyarch Copy XFCE
wget https://github.com/TotallyDIO/NyarcherAccessories/raw/refs/heads/main/NyarchCopies/NyarchCopyXFCE.tar.gz && tar -xvf NyarchCopyXFCE.tar.gz && cd NyarchCopyXFCE && bash ./apply_airoot.sh

chmod +x /etc/xdg/autostart/autostart.sh
