sudo cp clamscan.sh /usr/bin
sudo crontab -l > scancron
sudo echo "0 */6 * * * sneedscan.sh &" >> scancron
sudo crontab scancron
sudo rm scancron
echo "Done! SneedScan will now run every 6 hours. :-)"
