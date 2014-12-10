#!/bin/bash
wget -q --tries=10 --timeout=20 --spider http://google.com
if [[ $? -eq 0 ]]; then
        `echo "New attacker is detected" | mutt -a "/usr/lib/KAuth/attacker.jpg" -s "Message from K-Auth Security system" -- root@localhost`

else
        echo "Offline"
fi
