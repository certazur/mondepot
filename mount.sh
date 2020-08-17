#!/bin/sh

sudo mkdir /mnt//home/moi/dd
if [ ! -d "/etc/smbcredentials" ]; 
then
sudo mkdir /etc/smbcredentials
fi
if [ ! -f "/etc/smbcredentials/hub0st.cred" ]; 
then
    sudo bash -c 'echo "username=hub0st" >> /etc/smbcredentials/hub0st.cred'
    sudo bash -c 'echo "password=TMJYrIwgnRU6+5HnYXU31EeZ4cWN0zSjCjjwarHZH2k+yoXICiajic+3InUEn2a6JEIvX6yn1JmlveE+c86zpw==" >> /etc/smbcredentials/hub0st.cred'
fi
sudo chmod 600 /etc/smbcredentials/hub0st.cred

sudo bash -c 'echo "//hub0st.file.core.windows.net/share0 /mnt//home/moi/dd cifs nofail,vers=3.0,credentials=/etc/smbcredentials/hub0st.cred,dir_mode=0777,file_mode=0777,serverino" >> /etc/fstab'

sudo mount -t cifs //hub0st.file.core.windows.net/share0 /mnt//home/moi/dd -o vers=3.0,credentials=/etc/smbcredentials/hub0st.cred,dir_mode=0777,file_mode=0777,serverino
