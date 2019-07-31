#!/bin/bash
SPEED=300 # Default speed is 175
VOLUME=100 # Default Volume is 100
PAUSE_STATE=$(<pause_state.txt)
PAUSED="paused"

espeak "$PAUSE_STATE"

if [ cat pause_state.txt == "$PAUSED" ]; then
    xsel | espeak --stdin -a $VOLUME -s $SPEED # pipes selected text to espeak
fi
# if pidof espeak > 0; then # is espeak running? # does this cover edge cases?

#     ESPEAK_PID=$(pidof espeak)
# 	  kill -STOP $ESPEAK_PID # stops espeak
# else
# 	xsel | espeak --stdin -a $VOLUME -s $SPEED # pipes selected text to espeak # how to make stateful?
# fi
