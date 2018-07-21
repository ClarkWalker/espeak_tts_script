#!/bin/bash
# this is the smallest amount of code I have ever written that is this useful!
killall espeak
xsel -c | espeak --stdin
