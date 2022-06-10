# VARIABLES: [PART 1]
This is where the fun begins. 

Variables in shell can be a tad bit annoying, because there is a lot which can be said. 
**That's why I will try to divide this topic in two parts.** This is the first one.

# variables.sh 

The syntax for assignment in shell is the standard "=" operator, so you do:

> `name_of_var=VALUE`

But notice that you **should not put spaces around the assignment operador**. That's because, when shell sees the "=" while reading the first characters, he then understands that you are not typing a command, but instead you are creating a variable and then giving a value to it.

If by other hand, if you put spaces, like:

> :warning: `name_of_var = VALUE`

then you will get an error. That's because shell will think <name_of_var> is an command, and you are passing "=" and VALUE as parameters. 
**This makes a lot of sense**, *after all, how else could the interpreter run the command <name_of_var> and receive two arguments, if such command exists?*

After that, on the script `variables.sh` we echo the value of variable with:

> `echo $my_var`

Notice that for referring to an existing variable, you must use the "$" operator before the name of the variable.

## What about the value? What are the types allowed?
First, notice that you are putting the message between quotation marks in (""). That is because, unlike the echo command, **a variable can hold only one value**.

If you don't wrap the value in quotes in the case of strings, like:  

>`my_var=Hello World`

the shell will try to execute the command "WORLD" after giving the value "HELLO" to your variable. 

# var_types.sh:

Shell gives zero f**ks about the type. Syntax is equal for all of them. That's because he stores all values as strings internally, but has routines implemented behind the scenes which will expect numbers, for example, and will treat them as such.

That being said, if you try to add an string with a number, you will be punished with errors. 

Try in your terminal, the follow instructions:

>  `text="hello"`

>  `expr $text + 1`

You should get the output for the command "expr": non-integer argument. 

 > :bell: Note that the command "expr" for arithmetic operations is considered "archaich". You should use operatos like $((...)), or ((...)) for integer calculations. For floating, bc and awk are the most useful. Research about them.  

> Special characters should be scaped with things like '\'. I will talk about them in futher examples.

## How to read data from input?

To read inputs, use the read command.
Simple as that

Like: 
 ```
 #!/bin/bash

 read x
 echo "You typed: $x"
 ``` 

 The `read` command will wrap the value readed with quotes by default, so you can pass multiple strings with spaces, like your name and surname.

# scopes.sh and more theory

Ok, **this is the real stuff about variables, and probably what will make your life a living hell when creating scripts, if you do not understand.**

Variables don't have to be declared. If you try to echo an undeclared variable or use it, you can. The shell will read it as an empty string. No warnings. Nothing. So the following code:

```
my_var="Hello"
echo $myvar
```
will execute, and will echo nothing. This can cause lead to a lot of bugs, if you type the name of something wrong.

## Global scope and local scope

The other thing you should probably know is that the **whithin the current shell**, the **scope of the variable is global**. That means that the variable can be accessed at any point in the code.  

This will be very important to know when we learn about functions, or other blocks of code, and will wish to limit the acess of the function. 

But by now, just know that to make an variable local, and therefore bind her existence whithin a certain block of code, you should declare with the keyword `local`

i.e:

> local my_local_var=Hello


## The scope dynamic between shell scripts

If you already read what I wrote in the [basic theory](https://github.com/enzo-z/ShellScripts/tree/main/src/Theory/1_Basic), you should probably know by now what happens when we execute an shell script. 

So, when the new terminal spawns at the execution, we have two shells running. When it reaches the end of script, the shell is destroyed.

So, let's test some things. 

First, execute the script `scopes.sh`

You should get the output:

```
terminal_var is:
terminal_var is: changed the value
```

At your terminal, create an variable that will be inherited by your script. So:

>terminal_var=HELLO

That variable will be inherited by the script `scopes.sh`. Now, we need to "export" the variable from the shell running on our terminal, to be inherited by the shell used by the our script. We will do that with the command `export`, in our terminal. So try:

>export terminal_var

Now, when we execute the `scopes.sh`, we will have the output:

```
terminal_var is: HELLO
terminal_var is: changed the value
```

**But, what if you echo the terminal_var in your terminal again?** Well, you will still get the output "HELLO".

That's because the shell was destroyed, the variable for that enviroment was destroyed. If we need to receive the changes made my our script, we must use the `source` command. **What source does is that it executes the script in our terminal, in our interactive shell**, instead of running on a new one. So you use:

> `source ./scopes.sh`

That will run the script in your terminal, and then when you echo the variable with:

> echo $terminal_var

you will get the output: `changed the value`


Instead of writing `source` we can use the dot command (.) - which is the way we normally do.

So you would do: `. ./scopes.sh` 

This is how you make configuration changes to your shell. This is how your profile file works! Try inspecting it! If your current shell running in your terminal is bash, for example, the file will be `~/.bashrc` 

In the next lesson, we will discuss more things about variables.