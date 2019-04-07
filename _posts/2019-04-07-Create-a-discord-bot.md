---
layout: post
title: Discord bot workshop
author: Sam Nolan
categories: [Workshop]
---

How to make a discord bot. Tuesday the 9th's workshop
<!-- more -->


## Discord bots and Node.js
-----

Hey everyone!

Today we'll be looking into the wonderful world if discord and chat bots! We'll
be using node.js to code our own discord bots to play with.

Let's get started!

### Getting the software
First we'll need to download and install [NodeJS](https://nodejs.org/en/). NodeJS is a program
that runs Javascript without a browser. It's a really popular platform for developers.

Second, you'll need a discord account. If you don't have one and think that you
could somehow get through this tutorial without one, think again and [sign up for an account](https://discordapp.com/).

Once you have these two things, we're pretty much ready to go!

### Register your bot with discord
Most applications that provide developer services require you to register your
app. This makes sure that if you are abusing your privilages as a developer, your
application can be blacklisted. The T&Cs for a discord developer are [here](https://discordapp.com/developers/docs/legal),
but basically be respectful, keep private data private, and don't send automated
messages from your own user account.

Go to the [discord developer portal](https://discordapp.com/developers/) and click
"New Application". Give it a name make sure the name is unique enough as it will
be the name of your bot.

Click "Bot" in the sidebar and then "add Bot"

You don't need to tick any of the bot permissions, as you can assign it permissions
on the server. If you want you can give it a profile picture.

Copy the token that's hidden by pressing the copy button.

### Invite the bot to the server
To invite the bot to the server, OAuth2 then scroll down to the scopes section,
check the "bot" scope and a url will appear in the textbox below. Go to that url
and you then invite the bot to any server that you can invite people to.

### Get the sample code from github
Now we can get some code to run our bot! How bots work is that your computer 
registers a connection with discord, and then your bot comes online. Any requests
are sent to your code and then your code can do whatever they wish when they get
the message.

The code for a simple sample is [here](https://github.com/Hazelfire/DiscordBotSample)
Click "Clone and Download" then "download zip" to bring it down to your computer,
or clone it properly if you know your git.

### Run the bot
Once you've got the code, unzip the files somewhere and go into the folder via
a terminal. Check if you have node installed by running 

```bash
npm --version
```

If it displays the version, your node is ready to go!

now run

```bash
npm install
```

This will download all of the projects dependencies for it to run. After that's
done, we'll need to set the bot's token that you copied before. To do this,
open bot.js and put your token into the file close to the top.

After that's done, run the following command and see your bot come to life
on your server!

```bash
npm run start
```

### Tinker with your bot
Well that wasn't too bad. To look into how you can do other things with node
and discord, check out the discord.js docs: "https://discord.js.org/#/" and
ask around for some NodeJS advice. The syntax is very similar to Java though.

If your bot is mature enough, ask for it to become a member of the programming
club discord!
