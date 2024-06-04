sudo cp clamscan.sh /usr/bin
sudo crontab -l > scancron
sudo echo "0 */6 * * * clamscan.sh &" >> scancron
sudo crontab scancron
sudo rm scancron
echo "Done! ClamScan will now run every 6 hours. :-)"
