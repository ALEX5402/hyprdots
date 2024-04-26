#! /bin/bash

killall -s SIGUSR1 swaylock && dunstctl set-paused false
bash swww-daemon
