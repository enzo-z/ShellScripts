# The very basics of Shell Scripting
Here I will try to cover what are the fundamentals for creating a shell script, as well as discussing basic notions which can come in handy.

# Starting with
To run scripts in your terminal, you can do:

`touch <name_of_file>.sh` to create the file

then 
`chmod +x ./<name_of_file>.sh` 
in the same directory as the file, to make the file executable by changing his modifier and giving him permission to be executed by your shell

Now you can run by simply typing: 

`./<name_of_file>.sh`

that will call the script and execute it!

> :warning: Each directory has an README.md with the explanation behind that script.

## How does Shell Scripting works?
Let's understand first how your terminal works, shall we?

### What happens when I open my Terminal?
**Your terminal is an interactive shell**. When the terminal starts, it searches for the default shell chosen by your OS. He then searches for the configuration file of that respective shell (usually is bash, so it searches for the `~/.bashrc` file), sets the configuration and then opens the configured shell to be used iteractively, allowing you to type commands that will be executed sequentially.  

When you type an command and press enter, what is actually doing is searching for the path of that command, that is setted on your enviroment variables ($PATH), and then executes it.

### So what is a shell script?
Simply put, an shell script will be just an automation of this process. Your script will be an text file, that can be called by terminal. When you call a script from your interactive shell (terminal), *a new shell is created* to run the script (the shell selected by the #! operator). Then, this new shell runs line-by-line, command-by-command, then reaches the end, and exits. When it exits, the enviroment is destroyed.

### In short
Your shell script can do the same things as your iteractive shell script (if you are using the same shell for both, as there are some commands that are not present in sh that are present in bash, or zsh and stuff like that.)

To see which shell you are using at your terminal, you can open your terminal and type:

>`echo $SHELL` for getting the enviroment variable defined for your shell
or 
> `ps -p $$`
for getting the process that is being executed