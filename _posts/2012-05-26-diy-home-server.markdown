---
author: AlexForey
comments: true
date: 2012-05-26 12:37:19+00:00
layout: post
slug: diy-home-server
title: Repurpose an Old Computer into a DIY Complete Home Server for Free
wordpress_id: 475
categories:
- DIY
- Fixes
- Programming
- Stuff
tags:
- diy
- home
- server
---

It's a while since I've had an utter geek-out, and I thought it's about time for another.

Some of you may know that I've had a motherboard [hanging on my bedroom wall ](http://instagr.am/p/jJMNd/)for a couple of months, but recently I realized this was a big mistake. It was perfectly functional! So I dug around in my wardrobe and eventually found the box that contained the other components from our family's old, gutted computer.

I roughly re-assembled it, with IDE cables going to 2x DVD Drives and the HDD, as well as supplying power to everything to the PSU.

Hesitantly, I connected the power supply. A message appeared on the screen saying the CPU Fan had failed, and it promptly shut itself down. I spent five or so minutes borrowing looking for the connector for the fan, and eventually found it. I reconnected the PSU and the monitor lit up - it (kinda) worked! It used to be an old Windows XP Box - this is what it looked like at this point:

{% image diy-server-1.jpg %}

I also got out the original casing, ripped out the bits I didn't need, and roughly assembled the guts back into the frame. Then it looked roughly like this (and please don't yell at me about cable management...)

{% image diy-server-2.jpg %}

So I went over to the iMac, burned a disk of Ubuntu 12.04 (not the server version, because I like GUIs and it's not like the server's going to have its work cut out), and slammed it into one of the DVD drives. I connected my old crappy PS2 Keyboard and mouse (the ones that don't need drivers), and moved that drive to first in the boot list in the BIOS.

Old hard drive formatted, and a shiny new install of Ubuntu. Then I went about installing everything I could possibly need to make this into a fully featured home server beast.

First and foremost I installed Apache, PHP, MySQL (pronounced My Squirrel), and PHPMyAdmin by following [this tutorial](http://www.howtoforge.com/ubuntu_lamp_for_newbies). Once I had done this, I performed a chmod to allow me to write to `/var/www` from other programs, which is the web home directory. There was only one problem - basic modules like cURL, that allow you to make HTTP requests right from your scripts, were not installed. After a bit of Google-ing I found that the terminal command is as simple as `sudo apt-get install php5-curl`. Ran that and now everything's going great.

Then I installed proftpd, a great FTP server, and along side that a GUI - the one you get in the Ubuntu Software Centre. I set up two FTP accounts, one to access my web home directory, and another to access my personal account - including my desktop and documents folders.

Then I went about turning it into a mini-NAS server. I connected a few large USB HDDs, and then followed [this tutorial](http://www.7tutorials.com/how-access-ubuntu-shared-folders-windows-7) about setting up SMB sharing to Windows and therefore the Mac computers on our network. Everything's going great.

Another thing - I installed forked-daapd, an iTunes music server, while following [this tutorial](http://www.mrericsir.com/blog/technology/setting-up-ubuntu-as-an-itunes-music-server/), and set its save location to another large USB HDD. Now whenever I open iTunes on any of the computers on my network, that Server shows up and I can drag and drop files into either an iTunes window, or a Finder view of the shared HDD. The clever thing about the second method is that forked-daapd will automatically transcode ogg and flac files into WAVs, which iTunes likes.

The final thing I did, to preparation for installing my server in the basement without a monitor, keyboard or mouse, was to install a remote desktop server for Ubuntu. I decided on xrdp because of the quick install, but I wouldn't recommend it as development has fallen behind, and so it does not work completely with the Remote Desktop Connection client in Windows 7. The most it can do is open terminal windows by using CTRL+ALT+T. In the near future I intend to replace this by using the default in-built VNC server in Ubuntu and installing TightVNC on Windows, or the equivalent on Mac.

The only problem is that BT does not offer Static IP Addresses. To get round that, I used [DNSDynamic](http://dnsdynamic.org). They provide an easy to use API for updating the IP address that your subdomain points to. And to that effect, I set up a Cron Job (with `crontab -e` to trigger a PHP script that sends the server's most recent IP address to DNSDynamic, every day at midnight. The code that goes in that section looks like this: `* * * * * /usr/bin/wget -O /dev/null http://localhost/path/to/php.php`.

Here's the code for that PHP file to update the dynamic servers:
    
	<?php
          $ip = file_get_contents("http://myip.dnsdynamic.org");<br>
          $username = "YOUR_USERNAME";<br>
          $password = "YOUR_PASSWORD";<br>
          $website = "YOUR_DOMAIN";<br>
      
          $request = file_get_contents("https://".$username.":".$password.<br>
             "@www.dnsdynamic.org/api/?hostname=".$website."&myip=".$ip);<br>
     ?>

Oh, and one last thing. I installed the OpenSSH Server, to allow me to perform command line operations from other computers. This is done simply by running `sudo apt-get install openssh-server openssh-client`, and you're ready to go.

The only things left to do were to install it in the basement, providing Internet to it over Ethernet via TP-Link power plugs; and forward ports 80 (for web), 21 (FTP), 22 (SSH) and 3389 (Remote Desktop) to the server from the router and I was done.

The final thing looks like this -

{% image diy-server-3.jpg %}

I'm not entirely sure what I'll end up doing with this machine, but I'm sure it will be awesome.
