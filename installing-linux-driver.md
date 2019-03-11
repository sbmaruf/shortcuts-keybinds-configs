# Installing a NVIDIA Driver.

- Download linux driver from https://www.nvidia.com/Download/index.aspx?lang=en-us
- go to a TTY (`ctrl + alt + F1`)  and login.
- `vim /etc/modprobe.d/blacklist-nouveau.conf`
    `blacklist nouveau`
    `option nouveau modeset=0`
- sudo update-initramfs -u
- sudo reboot
- sudo service lightdm stop
- sudo ./NVIDIA******.run
- sudo reboot
