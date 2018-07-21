#!/bin/bash
killall espeak # this stops (interrupts) the currently running thread if there is one 
xsel -c | espeak --stdin # xsel -c clears the value after returning it, the return is piped into espeak via standerd in
