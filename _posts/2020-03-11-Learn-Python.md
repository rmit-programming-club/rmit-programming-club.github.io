---
layout: post
title: Learn how to Program in Python
author: Sam Nolan
categories: [Workshops]
---

This workshop will teach the basics of Python Programming, even for people who
have never touched programming!

<!-- more -->


## Learning how to Program in Python
-----

Python!

First of all, a disclaimer. The person who wrote this is a human, and there
may be technologies I am unaware of.

If you're here, you probably know what Python is, but before we go on:

### Is Python for you?
Python will not be for you if you want to do the following things:

- Build a website (Check out [HTML](https://www.w3schools.com/html/))
- Build a professional game (Check out [Game Maker](https://www.yoyogames.com/gamemaker) or [Unity](https://unity.com/))
- Build a Mobile Application (Check out [Android](https://developer.android.com/training/basics/firstapp) or [iOS](https://developer.apple.com/develop/) development)

Python will be for you if you want to:

- Try out Data Analytics (Check out [pandas](https://pandas.pydata.org/docs/) and [jupyter](https://jupyter.org/))
- Build a super intelligent AI to take over the world (Check out [tensorflow](https://www.tensorflow.org/))
- Build a professional web application (Check out [Django](https://www.djangoproject.com/))
- Build a simple game (Check out [PyGame](https://www.pygame.org/news))
- Build scripts to automate your life
- Learn the basics of programming to apply in some other language
- Prototype applications quickly
- Do better calculations
- Talk with those cool as nerds from the Programming Club

If python is for you, let's move on!

### Installing Python
Installing Python is pretty simple, just go to the 
[python website](https://www.python.org/downloads/) and it will tell you how 
it's done. Just get the newest version.

### Starting with Python
We'll be making a very simple text adventure in Python. We'll start with learning
how to print things, then how to get input from the user, then how to use that
input to respond to the user in more intelligent ways.

To start working with Python, open IDLE (which should be installed on your computer
after installing Python) and write the following into the text box and run it:

```python
print("Hello World")
```

Then run the script (Run -> Run Module).

This should print `Hello World` to the console. Congratulations! You have managed
to write your first script! If you don't understand it, don't worry, you'll get
the hang of it soon.

### Printing more things
To print more things, add more print statements! Find the nearest person, get their
name and their star sign. 

As I'm writing this, I have a friend in the row in front of me that I've just
met named Daniel. I did not get his start sign, but let's say his is Leo.

```python
print("Hello Daniel")
print("It's fantastic to meet a Leo!")
```

Run the script!

### Getting input
Now, as much fun as printing things is, we probably need to start listening to
the user. As it turns out, users do like being listened to.

We can get input from the user by using the `input` method:

```python
name = input("What is your name? ")
print("Hello " + name)
# This is a comment, I can write anything after this and it is ignored
# name and starsign are called "variables", and variables cannot have any spaces in their names
starsign = input("What is your star sign? ")
print("It's fantastic to meet a " + name + "!")
```

Run it!

### If statements
My star sign is Cancer, and I honestly think that users to my application who
have the cancer star sign should get special treatement.

we can do this with an if statement. Here's an example:

```python
starsign = input("What is your star sign? ")
if starsign == "Cancer":
    print("Oh! So am I!")
else:
    print("That's awesome! " + starsign + " is my equal second favourite star sign!")
```

Here's another example

```python
password = input("What's the password? ")

if password == "Sneaky Socks":
    print("Access Granted")
else:
    print("Access Denied")
```

### Let's get to it
Let's start building this text adventure!

```python


# This is an import statement, it allows me to create random numbers, you'll
# see it used later
import random

name = input("What is your name?")
quest = input("What is your quest?")
favcolor = input("What is your favourite color?")

"""
Another way to do comments is to just put 3 quotes to start and end the comment,
all this is ignored.

I'm going to do an adventure that was inspired by a fantastic Dungeon master 
named Jason Fox.

https://www.blackgate.com/2017/11/06/modular-fox-trot-plays-dungeons-dragons/
"""


print("This is the best dungeon I've created yet")
# The text between the quotes is called a "string". Anything between two " is
# considered a string, but what if you want a " in your string? You can then
# use \" instead, "Escaping" the quote
print("Ok. You are standing at the entrance to a cave. A sign reads \"Welcome to Jason Caverns.\"")

action = input ("What do you do?")
if action == "Enter the cave":
    print("Suddenly, there's an earthquake and the ceiling collapses! Your entire party is killed")

else:
    # Although this possibility is not enumerated, I can infer what Jason's intent is
    print("Suddenly, there's a tsunami and you are drowned! Your entire party is killed!") 

# This generates a random number between 1 and 100
print("Your bodies will remain undiscoved for (roll, roll)")
years = random.randint(1,100)
print(str(years) + " years!")

```

### Do it again!
We've got our first text adventure! There are a lot of things we can do here,
and if you're in the tutorial feel free to ask around for how to do things.

One important thing is looping, that is, doing things again and again until
some condition is satisfied.

```python
wearethere = input("Are we there yet?")

# Before we used == to check whether two things are equal
# != is the opposite, and checks whether it is not equal
# it reads, while wearethere does not equal "Yes"
while wearethere != "Yes":
    wearethere = input("Are we there yet?")

print("Yay! Can we go home now?")
```

Run it! This keeps asking whether we are there until you say "Yes".

### Go for it!

Other resources that might be useful for writing your text adventure:

I'll update this page with explanations of questions made in the tutorial

- [Python Strings](https://www.w3schools.com/python/python_strings.asp)
- [Official docs](https://docs.python.org/3/tutorial/)
- [Math](https://docs.python.org/3/tutorial/introduction.html#using-python-as-a-calculator)
- [Data Structures](https://docs.python.org/3/tutorial/datastructures.html)
