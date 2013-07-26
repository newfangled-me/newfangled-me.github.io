---
author: AlexForey
comments: true
date: 2013-04-24 21:16:46+00:00
layout: post
slug: markpond-why
title: 'Markpond: Why'
wordpress_id: 705
tags:
- markpond
---

As some of you may know, I made [Markpond](https://markpond.com), a bookmarking website. I'm not going to lie, it's similar to Pinboard. But I made Markpond as a challenge for myself.

I'm 15. I've "got my whole life ahead of me". So I figured why not make something that I use on a daily basis. That way, if something irritates me, I'll be motivated to fix it. And if it fails, it doesn't matter.

Markpond is not a startup. I'm not intending to make _that much _money from it. I made it in the spirit of hacking - because I was motivated to make something that worked, and be able to point to it and say "I made that".

It's not a free service because I spent _a lot of _time on it. The basic account if £5/year, and the archival account is £10/year. That's not _that much_. It's actually quite cheap. And best of all - you get a three-day free trial (in that you're only charged on the third day of use), and so if you want to cancel your account before then, you can do so without incurring any loss.

Well, you're probably going to ask what Markpond does differently from all the services out there at the moment. Well, the answer is - not _that _much. But it might do in the future. Right now, the only major difference is the [Little Printer publication](http://remote.bergcloud.com/publications/11), which is quite cool.

Despite being a hacker, and a geek, I do like looking at pretty things. And if I'm going to use a site every single day, I'd like it to look nice. And I think I've done that without having an impact of the speed and overall responsiveness of the site. The front page of Markpond gets 89% from Google PageSpeed, compared to 84% for Pinboard and 70% for Kippt.

I'm not saying that PageSpeed is the only measure of how fast a site is, but Markpond's good score is also a direct result of gzip compression coupled with Rails's asset pipeline and using SVGs instead of normal images.

The speed of Markpond isn't just limited to the front-end though. The average server response time for a full profile page is around about 100ms, which is pretty damn good considering Markpond is run from a single Mac Mini.

So - what am I saying here? Well, mostly that I don't see why you can't have a site that looks good while simultaneously being on average only 30ms slower than the current status quo. Some people will like the fact that Pinboard has a geeky interface with no images and the default font. But personally, I don't - not for a site that I visit every day.

As so that, coupled with the project being a personal challenge, inspired me to create Markpond. I'm not looking for huge success - Markpond isn't my full-time job - I'm still in school doing my GCSEs. But if there are similarly-minded people out there, I can't see any harm in providing a service for them. So I have.
