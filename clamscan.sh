echo ClamScan - a Sneed Group Tool.
sudo freshclam
sudo clamscan -r -i --remove / --scan-pe=yes \
--scan-elf=yes \
--scan ole2=yes \
--scan-pdf=yes \
--scan-xmldocs=yes \
--scan-archive=yes \
--scan-swf=no \
--scan-html=no \
--scan-hwp3=no \
--alert-encrypted-archive=yes \
--alert-macros=yes \
--max-files=10000 \
--max-recursion=12 \
-max-dir-recursion=420
