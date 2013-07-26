---
author: AlexForey
comments: true
date: 2012-11-04 13:14:21+00:00
layout: post
slug: broken-rpi
title: Quite enough Raspberry Pi for One Day
wordpress_id: 556
categories:
- Programming
- Rants
---

As you may know I started a website that runs from two Raspberry Pis. Today, it is my sad duty to tell you that it now only runs from one Raspberry Pi.

Why? Because while shifting around some ethernet cables under my desk, I accidentally pulled one that was attached to Hercule, my main Raspberry Pi with the entirety of Markpond on it. It hit against the inside of my Lego case, and snapped the SD card slot and splintered my SD card. Both of these, it is fair to say, pissed me off a great deal.

In an effort to keep Markpond up and running, I quickly took the slightly broken SD card and taped it into Sherlock, which luckily could boot from it successfully. I then (very) carefully put it in an iMac and made a `dd` backup of it, which took 4 hours, because it was a 16GB card. Finally I put it back into Sherlock, booted it, and changed the DCHP reservations on my router so that what was Sherlock is now Hercule.

So now I have one functioning Raspberry Pi and one broken one.

I've tried basically everything to try to get the (now) Sherlock to boot (superglue, tape, the lot), but all I get is that one red light. But the other problem is that I do remember that this one used to have problems booting even when it did have a fully functioning SD card reader.

And that's a problem with the Raspberry Pi itself. There _is no standard_, or there wasn't any when I bought them. So I don't know if it's the power supply that isn't supplying the needed 5v and 700mA, or that the card is physically broken, or the SD reader that's physically broken, or the OS on the card that it can't boot from.

And much of the help online is speculation - "I've never had this problem but if I did this is what I'd try". It's all very well giving advice, but not very helpful if you have that problem. Stackexchange launched a [Raspberry Pi](http://raspberrypi.stackexchange.com/) site to try and combat this problem, but questions such as [these](http://raspberrypi.stackexchange.com/questions/3476/how-to-return-a-faulty-device) come along far too often.

But it's more than just my personal problems with this - everyone is going to have problems like these sooner or later. The Guardian [reported](http://www.guardian.co.uk/technology/2012/nov/04/raspberry-pi-programming-jam-cern?CMP=twt_gu) that:

> People are enthusiatic about it mostly because they hope its price, size, software and sturdiness (you can shove it in your pocket without damaging it, supposedly) will make it appeal to kids, and thus lead children into computer programming.


But it's simply **not** robust enough for schools yet. If half a millimetre of broken plastic can render an entire unit worthless, how is it going to fare in the hands of over-enthusiastic 8-year-olds, or under-enthusiastic teenagers?

And another thing that people (adults, in particular) don't seem to understand:

{% tweet https://twitter.com/alexforey/status/265052314665107456 %}

And so, you can't simply "lead children into computer programming", like you can't force someone to do a sport they don't like. They'll build up resentment that they have to do it, and because it doesn't appeal to them, they won't give it a chance and they'll hate it.

And one more intrinsic problem with the Raspberry Pi - it's moving faster than Apple products. And by that I mean every week or so there's a new OS update, and every few months a new piece of hardware comes out.

{% tweet https://twitter.com/antimega/status/247978032625750016 %}

There _is no documentation, there is no standard _because updates come out faster than people can keep up with them, faster than people can write documentation for them.

Please, stop [adding more RAM](http://www.raspberrypi.org/archives/2180), and, if you must make a new version of the board, design it better. Have you ever tried to hold something square with sharp corners and wires sticking out of all four sides of it, let alone put it on a desk without having cables pulling it off the desk? Yes, it would add to the expense, but why can't you just move all the cables _to one side?_ Why can't to design it so the SD card doesn't stick out the back of it, waiting to be dropped on or broken?

And, I guess the last thing is, the GUI sucks. More than sucks, it's uninviting, slow, buggy and just generally awful. And that's why I only run my Raspberry Pis as servers. Because, if you can get them to boot, they're robust and awesome as being servers.

But, in being good as servers, and bad at GUI, you've defeated the point of the Raspberry Pi as being a good tool for education and a good computer to learn to code on, because you either can't afford or don't want to spend the money on a laptop/desktop.

Because, in order to use the Raspberry Pi as a server, you have to have _clients_. Clients to do the code writing on, clients to connect to the web server, clients to connect to the media server. As you may or may not know, I wrote the code for Markpond on my laptop, and then used SFTP to shuttle it onto the Raspberry Pis, where it could be executed.

You couldn't do that if you didn't have a laptop/desktop/other computer which you had access to. And that other computer, no matter how old or broken, will still be a better coding experience than coding on a Raspberry Pi.

In conclusion, I would much, much rather pay £10 extra for a well-designed and robust board, with a metal SD slot and nicely aligned ports, than have a tiny piece of fragile plastic that renders the entire unit useless if broken.

What do I want? A standard. Because there is so much untested. That's not to say that the Raspberry Pi doesn't have a great community surrounding it, it does - but it has an inexperienced community. It's almost impossible to be an expert in the Raspberry Pi. I want a definitive list of SD cards that _do _work, a definitive list of power supplies that _do _work, a well-built board and well-designed board, but most of all, a board with up-to-date, easy to understand for people less experienced than me, and well-written documentation. Something, that at the moment, the Raspberry Pi is sadly lacking.
