rikirobot@rikirobot:/opt$ sudo dd if=/dev/zero of=/opt/image/swap bs=1024 count=2048000
2048000+0 records in
2048000+0 records out
2097152000 bytes (2.1 GB, 2.0 GiB) copied, 172.24 s, 12.2 MB/s

rikirobot@rikirobot:/opt$ sudo mkswap /opt/image/swap
Setting up swapspace version 1, size = 2 GiB (2097147904 bytes)
no label, UUID=ae7cd3ce-62ef-49b0-831e-3447b5091bcd

rikirobot@rikirobot:/opt$ free -m
              total        used        free      shared  buff/cache   available
Mem:            925         538          70          75         316         245
Swap:             0           0           0


rikirobot@rikirobot:/opt$ sudo swapon /opt/image/swap
swapon: /opt/image/swap: insecure permissions 0644, 0600 suggested.

