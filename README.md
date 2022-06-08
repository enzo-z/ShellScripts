# ShellScripts
Playing with shell

The purposes of this repository is to track my evolution of knowledge, while preparing some material so that I can teach others about shell scripting.

> :warning: **Target Audience**: This is not an "zero-to-hero" type of tutorial! 

It's not in my intentions to teach basic terminal usage, neither it is to go in-depth on the concepts here. Previous knowledge operating Unix-like systems is recommended for full understanding of what is going on. 
As for the more curious eyes, I highly recommend googling used terminologies, as well as going above and beyond, learning even further about the subject, as I am not even close to an shell expert. **I'm just trying to share some of the stuff I learned.**

## What is Shell Scripting?
Basically, a 'Shell Script' is a file which will be interpreted by a Shell Program. There are a lot of shell programs (sh, bash, zsh, tcsh...)
A shell script then is basically text written in a particular way (commands) that can be interpreted by a shell program aka. an shell. 

## What is Shell? 
When we talk about shell, usually we are talking about the Bourne Shell (sh). Bourne shell is a interactive command interpreter which is the default for many implementations of Unix-like systems. It was developed by Stephen Bourne, and launched in 1977 with the Version 7 of Unix. Shell not only is a command interpreter for terminal instructions, it is also a conceived as a scripting language. 

The interpreter of sh is located at /bin/sh along with many others, like *bash (Bourne Again Shell), which will be the interpreter used in this repository*. Bash was created to replace shell - as the name suggests - and is the default shell of many OS. 
There is also zsh, which is very popular.  

### DirectoryTree
 
```
project/
│   README.md    
│
└───src/
    │
    └───Theory/
    |   │  README.md
    |   │   
    |   └───1_Basic/
    |   |   |
    |   |   └───1_FirstScript/
    |   |   |   |   firstScript.sh
    |   |   |   |   README.md
    |   |   |
    |   |   └───2_Variables/ [TODO]
    |   |       |   variables.sh [TODO]
    |   |   
    |   |
    |   └───2_Intermediate/   
    |   |        
    |   |   
    |   |       
    |   └───3_Advanced/
    |
    |
    └───MyScripts/
```

