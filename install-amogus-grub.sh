git clone https://github.com/sueperb/tasty-grubs.git
cd tasty-grubs/themes
sudo mv amogus /boot/grub/themes
echo "GRUB-THEME=/boot/grub/themes/amogus/theme.txt" >> /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
