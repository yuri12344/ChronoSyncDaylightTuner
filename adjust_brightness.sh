#!/bin/bash

# Get the current hour
current_hour=$(date +"%H")

# Define brightness levels for different times of the day
morning_brightness=50
day_brightness=50
evening_brightness=30
night_brightness=10

# Adjust brightness based on the current hour
if [ "$current_hour" -ge 6 -a "$current_hour" -lt 12 ]; then
    brightness=$morning_brightness
elif [ "$current_hour" -ge 12 -a "$current_hour" -lt 18 ]; then
    brightness=$day_brightness
elif [ "$current_hour" -ge 18 -a "$current_hour" -lt 22 ]; then
    brightness=$evening_brightness
else
    brightness=$night_brightness
fi

# Set the brightness (assuming display 1 is the target display)
sudo ddcutil -d 1 setvcp 10 $brightness

