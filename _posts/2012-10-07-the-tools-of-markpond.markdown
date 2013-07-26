---
author: AlexForey
comments: true
date: 2012-10-07 12:15:29+00:00
layout: post
slug: the-tools-of-markpond
title: The Tools of Markpond
wordpress_id: 536
categories:
- Programming
tags:
- markpond
---

Some people have expressed interest as to what software / hardware went into building [Markpond](http://markpond.com/), my bookmarking site. So, for those interested, here you go.


## Development Software


I wrote Markpond on [Sublime Text 2](http://sublimetext,com/2), which is an amazing IDE. I save the scripts to my Dropbox folder, which has a Git Repository in it. That way I can code a little bit and have it saved automagically into the cloud, and once I've finished a big section I commit the code to the repository, and push that repo to [BitBucket](http://bitbucket.org). So I always have a working copy of the files (synced according to time saved) in Dropbox, and a code history tracking changes over time in Bitbucket.

Once I've got a working version, I upload the files from my Dropbox over SFTP to the testing part of the live server with FileZilla, which sits behind a firewall and password protection, but connects to the same database host as the live version. That way I can test out new code additions in a working environment without affecting the live site at all.

And if I'm satisfied with how the code is working, I'll write a post and save it as a draft on Tumblr, which hosts the blog, upload the new code to the live server, test it out, and then publish the blog post.


## Server Software


Markpond runs from an Apache2 web server, with PHP, MySQL Server, MySQL Client, mod_rewrite, Pear and a few other packages installed. The SFTP server is the same as the default SSH server that comes with the Raspberry Pi. I have also installed phpMyAdmin, which is a back-end database admin panel. phpMyAdmin sits above the web root of Markpond, so there's no point digging around to see if you can find the URL of it. All of that's on the first Raspberry Pi.

The second one runs Apache2 with PHP, and a MySQL client. It's main function is to run PHP scripts via Cron Jobs in Rasp[De]bian. This can be broken down into several levels:



	
  1.  PHP Scripts to Archive and Mirror

	
  2. Database logging

	
  3. Archive Engine


Hence the PHP Scripts call the database logging scripts and also run wget which is the Linux program that actually does the archiving. It's all quite complicated and really I need a diagram to explain it, but as long as I understand it in my head everything should be fine.

The two Raspberry Pis share resources over Samba, the same program that allows computer-to-computer file sharing in Windows and Mac. Some of the scripting is shared across servers, as well as some of the asset files.


## Hardware


The hardware really is quite simple. There are two Raspberry Pis (Hercule and Sherlock), sitting on a larger network but next to each other on a switch, meaning the time for network traffic to move between the two is < 10 milliseconds. The switch itself is a regular TP-Link 10/100mbps one, and not gigabit because the most the ethernet adapters on the two Raspberry Pis support is 10/100.

The archives are stored on a 32GB memory stick that is auto-mounted on the Sherlock, and has a transfer rate of around 40mbps. When you visit an archived page, it is being served by Apache on Hercule, but using files shared by Samba on Sherlock. Again, a diagram is probably needed:

[caption id="attachment_538" align="aligncenter" width="750"][![](http://newfangled.me/wp-content/uploads/2012/10/Diagram.jpg)](http://newfangled.me/wp-content/uploads/2012/10/Diagram.jpg) The Network Diagram of Markpond[/caption]


## Network and DNS


The domain of Markpond points to Cloudflare's nameservers. Then using A records, it is pointed to the most recent IP of the servers. Each subdomain is a CNAME record set as an alias of markpond.com, and then I use Apache VirtualHosts to point you to the correct part of Markpond, with the exception of blog. and status., which are pointed at Tumblr.

Because BT doesn't give out static public IP addresses any more, I also have another cron PHP script that periodically checks the current IP address, checks it against what it was 5 minutes ago, and if it has changed it pings Cloudflare's API to update the main A record.



That was a bit of a techie post, but I'm only just getting started with Markpond. I actually am working on Mirroring for Readability and Instapaper - but if only they used anything except OAuth 1.x!
