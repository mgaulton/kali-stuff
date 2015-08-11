echo "Updating SearchSploit... (Kali Linux)"
# move into the exploit db directory within Kali
cd /usr/share/exploitdb

echo "Downloading latest archive..."
wget http://www.exploit-db.com/archive.tar.bz2

echo "Downloaded archive, proceeding to extract..."
tar -xjvf archive.tar.bz2

echo "Removing archive..."
rm -rf archive.tar.bz2

echo "All done!!"
