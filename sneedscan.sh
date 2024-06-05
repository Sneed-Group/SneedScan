echo SneedScan - a Sneed Group Tool.
sudo freshclam

echo Scanning downloads....
sudo clamscan -r -i --scan-pe=yes \
--scan-elf=yes \
--scan-ole2=yes \
--scan-pdf=yes \
--scan-xmldocs=yes \
--scan-archive=yes \
--scan-swf=yes \
--scan-html=yes \
--scan-hwp3=no \
--alert-macros=yes \
--max-files=10000 \
--max-recursion=24 \
--max-dir-recursion=10 \
--remove /home/*/Downloads

echo Scanning documents....
sudo clamscan -r -i --scan-pe=yes \
--scan-elf=yes \
--scan-ole2=yes \
--scan-pdf=yes \
--scan-xmldocs=yes \
--scan-archive=no \
--scan-swf=no \
--scan-html=yes \
--scan-hwp3=no \
--alert-macros=yes \
--max-files=10000 \
--max-recursion=6 \
--max-dir-recursion=4 \
--remove /home/*/Documents

echo Scanning homes....
sudo clamscan -i --scan-pe=yes \
--scan-elf=yes \
--scan-ole2=yes \
--scan-pdf=yes \
--scan-xmldocs=yes \
--scan-archive=yes \
--scan-swf=no \
--scan-html=no \
--scan-hwp3=no \
--alert-macros=yes \
--max-files=10000 \
--max-recursion=12 \
--remove /home/*

echo Scanning /tmp....
sudo clamscan -i -r --scan-pe=yes \
--scan-elf=yes \
--scan-ole2=yes \
--scan-pdf=yes \
--scan-xmldocs=yes \
--scan-archive=yes \
--scan-swf=no \
--scan-html=no \
--scan-hwp3=no \
--alert-macros=yes \
--max-files=10000 \
--max-recursion=12 \
--remove /tmp/


echo Scanning /var/tmp....
sudo clamscan -i -r --scan-pe=yes \
--scan-elf=yes \
--scan-ole2=yes \
--scan-pdf=yes \
--scan-xmldocs=yes \
--scan-archive=yes \
--scan-swf=no \
--scan-html=no \
--scan-hwp3=no \
--alert-macros=yes \
--max-files=10000 \
--max-recursion=12 \
--remove /var/tmp/


echo Scanning web servers....
sudo clamscan -i -r --scan-pe=yes \
--scan-elf=yes \
--scan-ole2=yes \
--scan-pdf=yes \
--scan-xmldocs=yes \
--scan-archive=yes \
--scan-swf=no \
--scan-html=no \
--scan-hwp3=no \
--alert-macros=yes \
--max-files=10000 \
--max-recursion=12 \
--remove /var/www

echo Scanning user binaries....
clamscan --scan-elf=yes \
--scan-ole2=no \
--scan-pdf=no \
--scan-xmldocs=no \
--scan-archive=no \
--scan-swf=no \
--scan-html=no \
--scan-hwp3=no \
--alert-macros=yes \
--max-files=10000 \
--max-recursion=12 \
--max-dir-recursion=3 \
--remove /usr/bin

echo Scanning system binaries. (WILL NOT AUTOREMOVE THESE)
clamscan --scan-elf=yes \
--scan-ole2=no \
--scan-pdf=no \
--scan-xmldocs=no \
--scan-archive=no \
--scan-swf=no \
--scan-html=no \
--scan-hwp3=no \
--alert-macros=yes \
--max-files=10000 \
--max-recursion=12 \
--max-dir-recursion=3 \
/bin
