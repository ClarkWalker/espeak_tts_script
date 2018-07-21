#!/bin/bash
# this is the smallest and most useful script I have ever written
killall espeak
function state {
	xsel -c
}
state | espeak --stdin
