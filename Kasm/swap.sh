sudo dd if=/dev/zero bs=1M count=4096 of=/mnt/4GiB.swap

sudo chmod 600 /mnt/4GiB.swap

sudo mkswap /mnt/4GiB.swap

sudo swapon /mnt/4GiB.swap

echo '/mnt/4GiB.swap swap swap defaults 0 0' | sudo tee -a /etc/fstab

cd /tmp

