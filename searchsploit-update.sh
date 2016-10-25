echo "Updating SearchSploit... (Kali Linux)"
# move into the exploit db directory within Kali
cd /usr/share/exploitdb

echo "Removing old exploits..."
if [ -d platforms ]; then
  rm -rf platforms
fi

echo "Removing old files.csv..."
if [ -f files.csv ]; then
  rm files.csv
fi

echo "Downloading latest archive..."
wget https://github.com/offensive-security/exploit-database/archive/master.zip
wget https://raw.githubusercontent.com/offensive-security/exploit-database/master/files.csv

echo "Downloaded archive, proceeding to extract..."
unzip master.zip
mv exploit-database-master/platforms/ platforms/

echo "Removing archive..."
rm master.zip
rm -rf exploit-database-master

echo "All done!!"
