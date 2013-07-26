---
author: AlexForey
comments: true
date: 2011-12-04 09:35:17+00:00
layout: post
slug: itunes-fix
title: iTunes Store Blank on Windows 7 - Fix
wordpress_id: 252
categories:
- Fixes
- Stuff
---

[![](http://newfangled.me/wp-content/uploads/2011/12/iTunes101-300x300.png)](http://newfangled.me/wp-content/uploads/2011/12/iTunes1011.png)I usually don't post on this kind of thing, but I felt compelled as I spent about a month or so trying to fix this damn problem.

I will now explain exactly what this problem was for anybody who wants to know or find out how to fix it themselves (which, let's face it, you probably do because you're reading this article).

The problem is that my iTunes store turns out to be completely blank (just white) except for the top bar, which correctly shows me my email, but nothing else, like the credit I have on the account. The rest of my iTunes worked perfectly, except of course that iTunes takes ages to start up on anything that isn't stamped with that Apple logo of theirs.

Here's a screenshot for you to look at with your eyes:

[caption id="" align="alignnone" width="574" caption="iTunes no worky-worky... :("][![](http://pickture.me/uploads/photos/14/45.jpg)](http://pickture.me/photo?id=45)[/caption]

Alternatively, sometimes it did load some content, but not enough to make it look like anything especially special... or even functional. ANOTHER SCREENSHOT

[caption id="" align="alignnone" width="574" caption="WHY DO YOU HATE ME SO"][![](http://pickture.me/uploads/photos/14/62.jpg)](http://pickture.me/photo?id=62)[/caption]

My first thought that it was because I had previously "uninstalled" Internet Explorer. I say "uninstalled" because you actually can't uninstall it, you can only "disable it as a Windows Feature", but what the hell, it removes it from my list of programs so that's fine.

But no, I was wrong! Even after "reinstalling" that disgusting program, my iTunes store still doesn't work. So I "re-uninstalled" it.

I then uninstalled iTunes and Quicktime, and then re-installed iTunes and Quicktime, then made sure it was not blocked on any of my firewalls... usual stuff. This needed something special.

So... more Apple Discussions browsing... until.... I found this lovely person's response [here](https://discussions.apple.com/thread/3304371?start=0&tstart=0). And so I came up with two solutions. The first one worked for me, but it might not for everyone so I am also including a fallback technique.


### FIX 1. - Command Prompt


If ever in doubt, Command Prompt usually fixed it. Enough waffle. Make sure iTunes  is closed. Type this:

`netsh winsock reset`

Don't restart computer - you don't have to. Then open iTunes... and my iTunes store was as good as new.


### FIX 2. - Some Microsoft Patch Crap Thing


Didn't have to use it or anything, but just a link for people who are stuck still.

[LINKY-MC-LINKERSON](http://go.microsoft.com/?linkid=9662461)


### A Conclusion of Sorts


I had, obviously, contacted Apple support. THEY WERE UTTERLY USELESS. I had written in my original support email exactly what was wrong, and exactly what machine / OS I was using and exactly what I had  already done. They effectively sent me a list of things that I had already done, and then said they couldn't handle it and passed me onto the next guy in the chain. BORED. They offered me no solutions except uninstalling and re-installing iTunes. DAMN THEM. Quote time:

Actually, I don't have  a quote, because Apple say we're not allowed to publish their emails... I wonder what that says about how confident they are...

FIXED NOW. GOODBYE.
