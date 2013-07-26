---
author: AlexForey
comments: true
date: 2012-12-30 01:08:09+00:00
layout: post
slug: bookmarks-to-books
title: Making Books from Pinboard or Markpond Bookmarks
wordpress_id: 629
categories:
- DIY
- Programming
---

After learning Ruby, I recently re-discovered Tom Armitage's [pinboard-bookmachine](http://github.com/infovore/pinboard-bookmachine). This is a how-to on making books from your bookmarks, separated by year. I've always liked physical things - I used to love and still do my LEGO and K'NEX collections, and there's nothing better than being able to touch a thing and say "I made that".

And one of the problems of only reading online content is that you can't look at a physical bookshelf and say "look at all the things I've read". Well, until around 10 months ago you couldn't.

However, 10 months ago when I found out about this, I hadn't the faintest idea how I would get this working. I'd never even installed Ruby before. So I'm trying to write the guide that I needed 10 months ago - here it is.

I'm going to assume you've already got Ruby up and running, and if not, follow a decent guide for [Windows](http://ruby.about.com/od/beginningruby/ss/Installing-A-Ruby-Development-Environment-On-Windows.htm), [OS X](http://ruby.about.com/od/rubyversionmanager/ss/Installing-Ruby-On-Snow-Leopard-With-Rvm.htm), or [Linux](http://ruby.about.com/od/rubyversionmanager/ss/installrvmlinux.htm) and you should be set.


## Download


You're going to need to download the code from the GitHub Repo somehow - whether you just download a ZIP of the repo, or you fork and clone it is up to you.

Either use the original [pinboard-bookmachine](https://github.com/infovore/pinboard-bookmachine) by Tom, or [markpond-bookmachine](https://github.com/alfo/markpond-bookmachine) by me. My version will still work with Pinboard, but it includes some [Markpond-specific changes](https://github.com/alfo/markpond-bookmachine/commit/59cdb99718bafb64a798c6ffd8546e87106b6651), like [changing QR codes](https://github.com/alfo/markpond-bookmachine/blob/59cdb99718bafb64a798c6ffd8546e87106b6651/models.rb#L40-44) to be the archived URL instead of the normal URL if the bookmark has been archived, and [processing](https://github.com/alfo/markpond-bookmachine/blob/master/lib/tasks/bookmachine.rake#L-34) and [displaying](https://github.com/alfo/markpond-bookmachine/blob/master/views/year.haml#L-49) the via field on Markpond bookmarks. There's also [one crucial fix](https://github.com/alfo/markpond-bookmachine/commit/ea8df0e15d1d63a45a26413667e2bcd563916601) that decodes HTML entities properly after they are encoded for the XML export, which stops you from getting random &rsquo; strings everywhere.

Choose the one that applies the most to you. Chances are it's pinboard-bookmachine.


## Install Dependencies


If you don't have bundler, then go ahead and [install it](http://gembundler.com/). If you're not sure if you do or not, chances are you don't, so install it anyway.

Open up a terminal window, and navigate to the root of your project. For me, it is `~/Code/pinboard-bookmachine`.

Then, run:

    
    bundle install


If you have any errors, Google them, but everything should go fine.


## Create Database


Using the same terminal window, run

    
    rake db:migrate


And you should notice that a file called development.db appears in your folder.


## Fill Database


Now you need to go and get your bookmarks. If you're using Markpond, log in and go to

    
    https://markpond.com/core/actions/export?format=pinboard


And if you're using Pinboard, go to

    
    https://api.pinboard.in/v1/posts/all


And copy the contents. If you're doing this in a browser, you're going to want to right-click and view source to make sure you get only the XML. Copy all of it to your clipboard.

Then, make a folder called `data`, and in that, make a file called `pinboard_all.xml`. Paste your bookmarks into that file.

In the same terminal window that you used earlier, simply run

    
    rake


And you'll see a load of text flying by as your bookmarks are imported into the database.


## Preview your book


In the terminal window, run:

    
    rackup


Then go to `http://localhost:9292` and click on the years to see what will be printed. Take note of the first year listed.


## Customise it


You'll have noticed that the names and details are still Tom Armitage's, so you'll want to change them. To do so, go into `views/year.haml` and edit the details.

To change the volumes number to be correct, go into `models.rb` and change 2004 on line 5 to the first year of your bookmarks.


## Make the PDFs


If you're satisfied with everything, go back into terminal and run

    
    rake publish:all


to publish all of the years, or

    
    rake publish:year YEAR=1999


to publish just your bookmarks from 1999 (for example).


## Make the Book


I'm using Lulu, like Tom did, because I can't find anywhere else online that has an interface that I understand. You'll have to do the next bit for each book, because I can't find a way to batch-create them. All you need to do is make an account, then go [here](http://www.lulu.com/publish/books/?cid=nav_bks) and click 'Start Publishing'.

From there, you'll want to select 'Make a Paperback Book', give it a working title, and select 'Standard' paper and 'U.S. Trade' size (6" x 9").

Then upload the first PDF that you made (note the progress bar doesn't work - don't worry, your book is being uploaded. The page will refresh a couple of times, and click next until you get to the cover design page.

You can either use their wizard, but I'd prefer to make my own. If you do as well, click the 'Advanced One-Piece Cover' above the Flash widget. Then, if you have Photoshop, [download this template](http://newfangled.me/wp-content/uploads/2012/12/cover.psd) and edit it according to the dimensions they tell you, and change the text, otherwise you can make your own.

Save that Photoshop document out as a `.png` and upload it.

I only started collecting bookmarks in August 2012, so my book is only 203 pages long. In the format I've mentioned above, this edition will cost me £4.60 + shipping.

This, on balance, seems extremely reasonable, especially with a savvy use of coupon codes.

{% image markpond-book.jpg %}

So there you go. Hopefully a guide that even the programming-illiterate can follow. As always, if you have any questions feel free to post them in the comments.
