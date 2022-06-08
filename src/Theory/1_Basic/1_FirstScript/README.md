# 1_firstScript.sh
Okay, here is a standard hello world script. 
To run this script in your terminal, you can do:


Pretty simple, right? 
Note that the first thing we do is:

`#/!/bin/bash`

A comment is tagged by the "#" character, which makes the shell completely ignore a line *EXCEPT* when it's proceeded by the "!". This line tells which interpreter will be used for our script, independent of the interactive shell being used in our terminal. 

Soon after, we trigger the "echo" command.

`echo Hello World `

Now, here is the thing about *echo*: It can receive **multiple parameters**. So you can mistakenly think that we are passing just a string, but no, we are actually passing two strings as arguments. 
Then, echo puts by default a space between the arguments when it will display.
This is important. 
If we wish to pass just one string, we wrapp our parameters with quotation marks "" (usually), but you can also wrap it with ''

Try doing the same thing with other params like putting wildcards and stuff, so that you can get the idea:

> `echo 'Hello World'`

> `echo 'Hello' * "World'"`

> `echo "Hello * " World`