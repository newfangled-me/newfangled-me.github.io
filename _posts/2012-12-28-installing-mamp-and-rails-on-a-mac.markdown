---
author: AlexForey
comments: true
date: 2012-12-28 11:40:05+00:00
layout: post
slug: installing-mamp-and-rails-on-a-mac
title: Installing MAMP and Rails on a Mac
wordpress_id: 619
---

Now that I have a Mac laptop, I thought that I'd go about setting everything up that I'd need to code in my favourite programming languages - PHP and Rails.

This post is not for the faint of heart, so continue at your own risk.


## 1. Install MAMP


This is the easy part. Download MAMP from [here](http://www.mamp.info/en/downloads/index.html) and install it like you would with any other application. Simple.

This will install Apache, MySQL and PHP. If you went for MAMP Pro, like I did, it's really simple to add new projects. Just go into the control panel, click on the hosts tab, and add a new one with a document root of wherever.


## 2. Install XCode


In order to continue, you're going to need to install XCode. You can get it for free from the Mac App Store.

Once you've got the program installed, you're also going to need to install XCode command line tools. Do that by going opening XCode, then going to Preferences.

Then go to the Downloads tab, and within that the Components tab. Find the "Command Line Tools" entry, and click install.

Here's what it should look like:


[![Command Line Tools](http://newfangled.me/wp-content/uploads/2012/12/Screen-Shot-2012-12-28-at-00.27.32-300x220.png)](http://newfangled.me/wp-content/uploads/2012/12/Screen-Shot-2012-12-28-at-00.27.32.png)





## 2.5. Install Homebrew


If you don't have [Homebrew](http://mxcl.github.com/homebrew/) already installed, you really should do. That's why I'm not putting it as a full step. It's a simple package manager for OS X, like aptitude for Linux.

Just run:

    
    <code id="selectable">ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
    </code>


And you're done.


## 3. Install Ruby


Although OS X already comes with Ruby, it's usually not up-to-date. To fix this, we're going to use [RVM](https://rvm.io/) to install a new version over the old one. This will mean that we will not upset any of the core functionality of OS X (or something).

So go into Terminal and run:

    
    \curl -L https://get.rvm.io | bash -s stable --ruby


This will install RVM and the latest version of Ruby (in my case 1.9.3).


## 4. Update gem


To make sure everything from now on goes smoothly, you'll want to update the gem package manager. To do this, paste this into the terminal:

    
    sudo gem update --system




## 5. Install Rails


Because Rails is only a gem, installing it is extremely simple. Just run:

    
    sudo gem install rails


This will also install a bunch of other gems that are dependencies of Rails.


## 6. Install MySQL


You're probably wondering why I'm installing MySQL, even though we installed it earlier with MAMP. The reason is that the mysql2 gem that is needed for Rails to talk to MySQL will not install without this version present.

    
    brew install mysql


Should get you up and running.


## 7. Install mysql2 gem


Now that you have a "proper" installation of MySQL, you can go ahead and install the mysql2 gem.

    
    sudo gem install mysql2




## 8. Switch back to the old MySQL install


Now that you've got the gem installed it's safe to switch your console back to using the MAMP MySQL server. Simply

    
    sudo nano /etc/paths


And add this line to the top of the document

    
    /Applications/MAMP/Library/bin


And restart the terminal. Now, running the `mysql` command will point to the MAMP installation, which is the one you want to use.

And you're done!


## Creating a Rails App


When you want to create a new Rails app, `cd` to the place where you want to put your projects. In my case it was `~/Sites`. Then run

    
    rails new app_name -d mysql


And the last thing you'll want to do is go into `config/database.yml` and change the file by replacing the sockets with

    
    /Applications/MAMP/tmp/mysql/mysql.sock


Finally, create the databases needed by your app manually, because Rails won't do it for you. You can use the phpMyAdmin build into MAMP to do this, but I prefer [Sequel Pro](http://www.sequelpro.com/), which is free and awesome, and a native Mac App.

Test out your new Rails app by `cd`ing to your app's root, then running

    
    rails s


And (hopefully) all should be well. If it isn't, feel free to leave your problems in the comments and I'll see if I can help.
