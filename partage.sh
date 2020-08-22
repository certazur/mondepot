 
#!/bin/sh

sudo mkdir /mnt/part0
if [ ! -d "/etc/smbcredentials" ]; then
sudo mkdir /etc/smbcredentials
fi
if [ ! -f "/etc/smbcredentials/hub0st0.cred" ]; then
    sudo bash -c 'echo "username=hub0st0" >> /etc/smbcredentials/hub0st0.cred'
    sudo bash -c 'echo "password=0pgLa4rQEwoNDtkBNyPaEDIcZGIO2Vf1XTgNi8TahqKld0d+DRDoBGqWR1SFpNWSQvQCuziSnTyWN3fcNRp75w==" >> /etc/smbcredentials/hub0st0.cred'
fi
sudo chmod 600 /etc/smbcredentials/hub0st0.cred

sudo bash -c 'echo "//hub0st0.file.core.windows.net/part0 /mnt/part0 cifs nofail,vers=3.0,credentials=/etc/smbcredentials/hub0st0.cred,dir_mode=0777,file_mode=0777,serverino" >> /etc/fstab'
sudo mount -t cifs //hub0st0.file.core.windows.net/part0 /mnt/part0 -o vers=3.0,credentials=/etc/smbcredentials/hub0st0.cred,dir_mode=0777,file_mode=0777,serverino


