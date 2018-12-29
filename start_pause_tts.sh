#!/bin/bash
SPEED=300 # Default speed is 175
VOLUME=100 # Default Volume is 100

if pidof espeak > 0; then # is espeak running? # does this cover edge cases?
	killall espeak # stops espeak
else
	xsel | espeak --stdin -a $VOLUME -s $SPEED # pipes selected text to espeak # how to make stateful?
fi
