#its for guys who are on dual boot with winblows and forget to shut down winblows properly 
#this script mount it in user home Dir in windows folder as readonly ( blame it on winblows )
if [ ! -d "windows" ]; then
 cd $HOME 
 mkdir windows
fi
# now selecting it the partition 
# tested with windows 10 dual boot
windows_part=$(sudo fdisk -l | grep "Microsoft basic data" | cut -d" " -f1)   
# sudo mount -t ntfs-3g -o ro /dev/sdaX /windows  
sudo mount -t ntfs-3g -o ro $windows_part $HOME/windows
