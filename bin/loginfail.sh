#!/bin/bash

fswebcam -r 640x480 --jpeg 85 -D 1 /usr/lib/KAuth/attacker.jpg && festival --tts /usr/lib/KAuth/lib/loginfail && bash /usr/bin/K-Auth-mail.sh   && pkill -9 -u `whoami`
