wget --no-check-certificate https://download.mikrotik.com/routeros/6.39.3/chr-6.39.3.img.zip -O chr.img.zip  && \
gunzip -c chr.img.zip > chr.img && \
dd if=chr.img of=/dev/sda bs=4M oflag=sync && \
echo u > /proc/sysrq-trigger && \
echo 1 > /proc/sys/kernel/sysrq && \
echo b > /proc/sysrq-trigger