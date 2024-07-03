# clipSync
utils to sync clipboard across windows, linux, and iPad

### Usage:
1. Adjust the file path in the AHK script to point to your users documents folder(or anywhere else)
2. Run the autohotkey script to listen for clipboard updates and update the clipShare.txt file
3. Make the shortcut shown in shortcut.png to read the contents of the file over ssh
4. Add the shortcut to control center. Now you can copy text on windows and then press the button in control center to copy that to your iPad/iPhone

##### Copying from Windows to Linux through your iPad
This is kinda dumb, but with my workflow using iOS shortcuts to bodge connections between my devices is really conventient.
I do all my programming in the terminal on a Linux server I run that I connect to over SSH for vim goodnesss.
My favorite device for this is the iPad and my favorite SSH client app is called ShellFish
ShellFish includes a .shellfishrc file you can install to give integrations including calling iOS shortcuts from the terminal.

By adding this line to your .bashrc you can use the command `cpWin` to copy your windows system clipboard to your linux system clipboard(if you have xsel and your display working properly):
```
alias cpWin='runShortcut --x-callback cpWinClip | xsel -i && xsel -o'
```

And adding this line to your .bashrc give you `exWin` the ultimate command for the lazy! With this you can pull up a guide on your PC with a bunch of commands for setting stuff up on your server, and then after copying a command from the guide you can run exWin to instantly grab the clipboard and run the command on your server! This is probably dumb and you shouldn't just run random code you copied on the internet but I know I'll do it anyway and this makes that very fast:
```
alias exWin='runShortcut --x-callback cpWinClip | xsel -i ; eval $(xsel -o)'
```


I like how the shortcut is set up to try to output and copy the output if it can't find anywhere to output. With this setup you use the same shortcut both in the control center to copy to iPad and in the terminal to copy to the server. And copying to the server doesn't overwrite the iPad clipboard!!!
