#!/bin/bash
if pidof espeak > 0; then # is espeak running?
	killall espeak # stops espeak
else
	xsel | espeak --stdin # pipes selected text to espeak
fi
