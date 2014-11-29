#!/bin/bash

fswebcam -r 640x480 --jpeg 85 -D 1 /usr/lib/KAuth/attacker.jpg && festival --tts /usr/lib/KAuth/lib/loginfail    && pkill -9 -u `whoami`
