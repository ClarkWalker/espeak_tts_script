#!/bin/bash
SPEED=350  # Default speed is 175
VOLUME=100 # Default Volume is 100

if pidof espeak > 0; then  # Check if espeak is running
    killall -s KILL espeak 
else
    #xsel | espeak --stdin -a $VOLUME -s $SPEED # this is the old line, for some reason the last letter is omitted this way
    espeak -a $VOLUME -s $SPEED ". $(xsel) ." # the dots prevent the first or last phonemes from being omitted
fi
