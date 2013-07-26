---
author: AlexForey
comments: true
date: 2012-09-29 10:00:31+00:00
layout: post
slug: little-printing
title: Little Printing
wordpress_id: 521
categories:
- Programming
- Web
tags:
- little printer
---

On Wednesday, I went to the first of [BERG](http://berglondon.com)'s Little Printer [After School](http://bergcloud.com/2012/09/27/school-report/) Clubs, or as Alice put it:

{% tweet https://twitter.com/alicebartlett/status/251003461125165056 %}

It was great fun, and I got to meet some interesting people in person, like [Alex Muller](https://twitter.com/alexmuller), [Devin Hunt](http://www.hailpixel.com/),  and a few others. In short, I talked to lots of people, wrote lots of code, and ate too much pizza. I could get used to that.

But the title of this post is Little Printing, so I guess that's what I intended to write about.

Designing for the Little Printer is harder than you think - because it is a mix of mediums. You are designing for print, so it's print design - but you have to use the code of web design to achieve it. So that's one factor of designing your publication.

That, along with content, is enough to make a publication. But to make a _good _publication, you have to think about where the reader will be reading your publication, and hence what access to other things they have.

There's no point making a publication that is designed for the morning, but required scissors because you will most likely be reading it on the tube - where you won't have access to them.

There's no point making a publication that is designed for the morning, but required access to the internet because you might also be reading it on the tube, where there is no WiFi or 3G.

I think you get where I'm going here.

You have to think about the environment your reader will be in, as well as what content might be useful to them, where to get it, and designing and creating assets for the whole thing.

So, bearing this in mind, I have created no less than two publications.

The first of which is for [Markpond](http://markpond.com), my bookmarking website. You can choose to print out either your two most recent bookmarks, or two random bookmarks from your history. I think the latter is much more fun, as you can look back in time and find out what you were reading, and your results will be different every time. You also have the choice of including today's popular bookmark, although I still need to do some work on the algorithm that chooses that.

Here's what that one looks like on screen (@ 100% zoom):

{% image little-markpond-1.png %}

And now in reality:

{% image little-markpond-2.jpg %}

You'll notice the QR codes. People seem to have collected this hatred of them - but I still quite like them. I don't like it when they're using in stupid ways by advertising agencies, but I do like the idea of being able to encode a digital link into a real life object, and being able to convert it back to digital whenever I want to. It saves you the time and effort of having to type the URL back into your tiny smartphone.

One of the things that struck me was just how _little _the Little Printer prints. That sounds obvious, but when you view the same publication on a screen it is at least twice the width and height of its real-life counterpart. And hence your font-sizing is all wrong, the spacing is uneven, and it just looks a bit off.

And that's the point of these Little Printer After School Clubs - to be able to see your publication in real life before anyone else does. The most accurate you can get online is by using BERG's [Rapid Prototyper](http://remote.bergcloud.com/developers/tools/), but even then the fonts aren't quite right.

So anyway my second publication was _On This Day (in History)_, and is basically just what it says. It can either pull from the BBC's On This Day Feed (which used to work, but now doesn't. I'm fixing it), or the Wikipedia one. The BBC feed is more old-current affairs, and the Wikipedia one is more historical events (battles, that sort of thing). So you can choose what you like.

It's on [GitHub](https://github.com/alfo/onthisday), so if you want you can have a poke around, and see how I structure my publications in PHP. The publication for Markpond is structured in almost exactly the same way, except that it also has to dive right into the core function files of Markpond to go and get bookmarks, generate QR codes, etc.

I can't wait to see what other people do with the Little Printer, an I'm really excited for it's release some time in November. Hopefully both my publications will be on the starting line-up when Little Printers start arriving in homes. I guess the only problem is that I can't afford one (yet), so let's just sit tight and see what the Raspberry Pi Summer Coding Competition Judges think of Markpond.
