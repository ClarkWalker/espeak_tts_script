#!/bin/bash
# this detects weather espeak is running 
if pidof espeak > 0
then
	# this stops (interrupts) the currently running thread if there is one
	killall espeak
else
	# xsel returns the slected text and pipes it into espeak standerd in
	xsel | espeak --stdin
fi
