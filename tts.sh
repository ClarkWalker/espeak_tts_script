#!/bin/bash
if pidof espeak > 0; then # is espeak running? # does this cover edge cases?
	killall espeak # stops espeak
else
	xsel | espeak --stdin # pipes selected text to espeak # how to make stateful?
fi
