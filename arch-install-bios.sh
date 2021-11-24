hwclock --systohc
echo "en_AU.UTF-8 UTF-8" >> /etc/locale.gen
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 
locale-gen
echo "LANG=en_AU.UTF-8" >> /etc/locale.conf
echo "archbtw" >> /etc/hostname
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
useradd user
passwd user hwclock --systohc
echo "en_AU.UTF-8 UTF-8" >> /etc/locale.gen
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 
locale-gen
echo "LANG=en_AU.UTF-8" >> /etc/locale.conf
echo "archbtw" >> /etc/hostname
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
useradd user
passwd user 
git clone https://aur.archlinux.org/yay.git
chown user:user ./yay
echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers 
cd /yay
sudo -u user makepkg -si 
yay -S --noconfirm zsh emptty nerd-fonts-fira-code ttf-material-design-icons-extended ttf-font-awesome neofetch nano rofi dunst polybar picom ranger bonsai
clear
{
echo -n “Set username: ”;
read;
useradd -m ${REPLY};
passwd ${REPLY};
echo “${REPLY} ALL=(ALL) ALL” >> /etc/sudoers
sudo -u ${REPLY} cd ~; git clone https://github.com/cosmicraccoon/thinky-nature-dots.git; cd thinky-nature-dots; nano ./i3/config sudo cp -r * ~/.config
}
systemctl enable NetworkManager emptty 
pass

git clone https://aur.archlinux.org/yay.git
chown user:user ./yay
echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers 
cd /yay
sudo -u user makepkg -si 
yay -S --noconfirm zsh emptty nerd-fonts-fira-code ttf-material-design-icons-extended ttf-font-awesome neofetch nano rofi dunst polybar picom ranger bonsai
clear
{
echo -n “Set username: ”;
read;
useradd -m ${REPLY};
passwd ${REPLY};
echo “${REPLY} ALL=(ALL) ALL” >> /etc/sudoers
sudo -u ${REPLY} cd ~; git clone https://github.com/cosmicraccoon/thinky-nature-dots.git; cd thinky-nature-dots; nano ./i3/config sudo cp -r * ~/.config
}
systemctl enable NetworkManager emptty 
passwd
exit
