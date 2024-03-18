#!/usr/bin/env sh

# Function to increment value by 5

# brightness control script for external monitors :)

ScrDir=`dirname "$(realpath "$0")"`
source $ScrDir/globalcontrol.sh

function set_brightness {
    ddcutil setvcp 10 $1
}

# Function to get brightness info
function get_brightness_info {
    ddcutil getvcp 10
}


# Function to parse brightness info

function get_brightness {
    info=$(get_brightness_info)
    current=$(echo "$info" | grep -oP 'current value =\s*\K\d+')
    max=$(echo "$info" | grep -oP 'max value =\s*\K\d+')
    echo "$current"
}

function send_notification {
    output=$(ddcutil detect | grep DRM)
    value=$(echo "$output" | awk -F 'DRM connector: ' '{print $2}')
    angle="$(((($(get_brightness) + 2) / 5) * 5))"
    ico="~/.config/dunst/icons/vol/vol-${angle}.svg"
    bar=$(seq -s "." $(($(get_brightness) / 15)) | sed 's/[0-9]//g')
    notify-send -a "t2" -r 91190 -t 800 -i "${ico}" "${brightness}${bar}" "${value} set to $(get_brightness)"
}



increment() {
    current_value=$(($current_value + 5))
    if [ $current_value -gt 100 ]; then
        echo "Cannot increment further, already at maximum limit (100)."
        exit 1
    fi
}

# Function to decrement value by 5
decrement() {
    current_value=$(($current_value - 5))
    if [ $current_value -lt 10 ]; then
        echo "Cannot decrement further, already at minimum limit (5)."
        exit 1
    fi
}

# Main script
if [ $# -ne 1 ]; then
    echo "Usage: $0 [i|d]"
    exit 1
fi

current_value=$(get_brightness)

case $1 in
    i)
        increment
        send_notification
        tput rev; echo " setting brightness to $current_value "; tput sgr0
        bash -c "modprobe i2c-dev; ddcutil setvcp 10 $current_value"

        ;;
    d)
        decrement
        send_notification
        tput rev; echo " setting brightness to $current_value "; tput sgr0
        bash -c "modprobe i2c-dev; ddcutil setvcp 10 $current_value"
        send_notification
        ;;
    *)
        echo "Invalid argument. Please use 'i' to increase or 'd' to decrease."
        exit 1
        ;;
esac
