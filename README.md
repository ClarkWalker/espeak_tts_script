# Purpose
This script reads back selected text when triggerd by a keyboard shortcut, like in OSX.
## Usage
* select some text to read
* hit your chosen keyboard shortcut
* listen to your text read back
* you can stop audio playback of the text by hitting the same shortcut a second time

## Dependencies
This script relies on the espeak and xsel packages.  
Espeak comes preinstalled on many linux distros.  
I am using this on Linux Mint 19 with the gnome 3 desktop environment running on the x window system.  
You can check if you have espeak installed with the following command
```
espeak hello
```
If your volume is up you should hear a robotic voice say "hello".  
If you don't have espeak installed you should be able to find it in your distros package manager.  
If you're on a Debian based system i.e. Debian, Ubuntu or Linux Mint etc...  
You should be able to install espeak with...
```
apt-get install espeak
```
Once you have it installed test it with `espeak hello` to varify it is working correctly.  
You probably don't have xsel installed by default and again you should be able to find it in your distros package manager.  
For Debian based systems you can try
```
apt-get install xsel
```
To test xsel try selecting any text anywhere and running `xsel` in the command line
you should see the text you selected printed to the command line.  Yup, that's what xsel does ;)

## Installation
1. Clone or otherwise download this repo somewhere into your home directory.  
2. cd into the directory and run `chmod +x tts.sh` to make the script executable.  
3. Now all you need to do is set a keyboard shortcut to run the *tts.sh* script.  
	* Settings will very between distros and desktops, but the process of adding a shortcut should be mostly the same.  For me (again I'm on Linux Mint 19 with the gnome 3 desktop environment running on the x window system), the process is.  

	1. Go to settings, 
	2. search for keyboard shortcuts, 
	3. scroll to the bottom and click add new shortcut,
	4. give it a name and pick a shortcut key combination
	5. give it the path to the file

**The important part is giving it the path to the tts.sh file**

for me that is `~/tts/tts.sh`
that's all you have to do is just give it the path to the file

Hope you like it :)
