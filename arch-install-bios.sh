ln -sf /usr/share/localtime/Australia/Perth >> /etc/localtime
echo "Set timezone to Australia/Perth."
hwclock --systohc
echo "Synced hardware clock."
echo "en_AU.UTF-8 UTF-8" >> /etc/locale.gen
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 
echo "Set locales."
locale-gen
echo "Generated locales."
echo "LANG=en_AU.UTF-8" >> /etc/locale.conf
echo "Set language."
clear
{
read -p "Set hostname:" REPLY;
echo ${REPLY} >> /etc/hostname;
echo "Set hostname to ${REPLY}.";
}
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
useradd user -p "password"
echo "Added dumnmy user."
git clone https://aur.archlinux.org/yay.git
chown user:user ./yay
echo "Changed ownership of yay repository to dummy user."
echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers 
echo "Gave dummy user sudo capabilities."
cd ./yay
echo "Moved into yay directory."
sudo -u user makepkg -si 
sudo -u user yay -S --noconfirm zsh emptty nerd-fonts-fira-code ttf-material-design-icons-extended ttf-font-awesome neofetch nano rofi dunst polybar picom ranger bonsai
clear
{
read -p "Set username: " REPLY;
useradd -m ${REPLY};
echo "Created user ${REPLY}.";
passwd ${REPLY};
echo "${REPLY} ALL=(ALL) ALL" >> /etc/sudoers;
echo "Gave ${REPLY} sudo priveleges.";
sudo -u ${REPLY} cd ~; git clone https://github.com/cosmicraccoon/thinky-nature-dots.git; cd thinky-nature-dots; nano ./i3/config sudo cp -r * ~/.config;
}
echo "Applied configuration."
systemctl enable NetworkManager emptty 
passwd
exit
