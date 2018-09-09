```
# was perviously using xsel -c 


# detect if espeak is currently running
# detect if what espeak is currently speaking is the same as the value of xsel

# if espeak is currently running 
# & the value of what espeak is speaking is 
# equal to the current value of xsel
	# stop espeak
# else
	# run xsel | espeak --stdin
```

track the current state of espeak
	write state to espeakState.txt