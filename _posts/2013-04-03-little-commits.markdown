---
author: AlexForey
comments: true
date: 2013-04-03 22:02:37+00:00
layout: post
slug: little-commits
title: little-commits
wordpress_id: 699
categories:
- Programming
---

While rewriting Markpond, I thought it would be pretty cool if there was some way to track my progress through my roadmap of post-it notes. And so I took inspiration from one of the projects at the [Little Printer Hack Day 2](http://bergcloud.com/2013/03/05/berg-cloud-hack-day-number-two/), [GitHub Yesterday](http://www.flickr.com/photos/alicebartlett/8528501770/in/pool-littleprinter) by [Martyn Loughran](https://github.com/mloughran) and I looked into how I could make something using the Little Printer's direct print API.

And I found out that GitHub has a thing called [WebHook URLs](https://help.github.com/articles/post-receive-hooks), which posts a dump of data every time someone pushes to a repository. So I made a little Sinatra app, reusing a bunch of code from [something I did](https://github.com/alfo/littledropper) on the hack day.

In short, it receives a bunch of info from GitHub, formats it nicely, and then sends off another post request to BERGCloud to get it printed.

Once I had got this working locally, I pushed it up to Heroku and set it up as a service so that anybody can use it. You can find instructions [here](http://little-commits.herokuapp.com).

And so, every time I finish a little bit of the new Markpond, I get a printout and put it up on my roadmap.

{% image little-commits.jpg %}

You can view the source of [little-commits](https://github.com/alfo/little-commits) on GitHub. It's really simple, but I think it's quite useful.
