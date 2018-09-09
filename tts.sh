#!/bin/bash
xsel > ~/tts/state/xsel.txt
if pidof espeak > 0; then # is espeak running?
	killall espeak # stops espeak
else
	xsel > ~/tts/state/espeak.txt # sets state for espeak
	espeak -f ~/tts/state/espeak.txt # passes text to espeak
fi
