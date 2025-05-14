#!/bin/bash

bwrap --ro-bind /usr /usr --ro-bind /lib /lib --ro-bind /lib64 /lib64 --ro-bind /bin /bin --ro-bind /sbin /sbin --ro-bind /etc/machine-id /etc/machine-id --ro-bind /var/lib/dbus/machine-id /var/lib/dbus/machine-id --bind /run/user/1000/bus /run/user/1000/bus --setenv DBUS_SESSION_BUS_ADDRESS unix:path=/run/user/1000/bus --ro-bind /home/sha0/soft/Telegram /Telegram --bind /home/sha0/jail /home/sha0 --setenv HOME /home/sha0 --chdir /home/sha0 --dev /dev --proc /proc --tmpfs /tmp /Telegram/Telegram
