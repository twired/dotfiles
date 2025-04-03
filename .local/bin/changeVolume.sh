#!/bin/bash
# changeVolume

# Arbitrary but unique message tag
msgTag="myvolume"

# Change the volume using dunst
volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int ($2 * 100)}' | sed 's/%//')
mute=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -o '\[MUTED\]')

# If muted or volume is 0, show mute notification
if [[ "$mute" == "[MUTED]" || "$volume" == "0" ]]; then
    # Show the sound muted notification
    dunstify -a "changeVolume" -u low -i audio-volume-muted -h string:x-dunst-stack-tag:$msgTag "Volume muted"
else
    # Show the volume notification
    dunstify -a "changeVolume" -u low -i audio-volume-high -h string:x-dunst-stack-tag:$msgTag \
    -h int:value:"$volume" "Volume: ${volume}%"
fi

# Play the volume change sound (only if the volume is not muted)
canberra-gtk-play -i audio-volume-change -d "changeVolume"
