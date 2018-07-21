#!/bin/bash
# this is the smallest and most useful script I have ever written
killall espeak
xsel | espeak --stdin
killall espeak
xsel -c