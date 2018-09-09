#!/bin/bash
if pidof espeak > 0; then # is espeak running?
	killall espeak # stops espeak
else
	xsel | espeak --stdin # passes text to espeak
fi
