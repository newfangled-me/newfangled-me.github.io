---
author: AlexForey
comments: true
date: 2012-04-03 21:34:12+00:00
layout: post
slug: knex-roller-coaster
title: K'NEX Roller Coaster
wordpress_id: 439
---

Just recently I returned to an old hobby of mine: building moving structures out of K'NEX, after realising how much they could be enhanced by a little knowledge of programming and the use of a microcontroller (in my case my Arduino Uno).

As I said, I used to do this on a regular basis, but somehow stopped because of exams and school becoming "more important", blah blah blah. But recently I moved up to a "high" school (as those of you who are Americans would call it), and in the first year the focus is more on finding out what you like to do and doing more of it, apparently.

And so, over the course of around 8 hours I build this awesome 'coaster. It's made from random assorted parts from an old ball machine from 2004 and a more recent roller coaster pack (the one that uses micro-k'nex, not the old variety), as well as some other ones that I can't remember exactly - perhaps some of a ferris wheel in there too.

And once I had build this, I made some basic traffic lights out of a breadboard and some LEDs, and made a gate to prevent cars from moving onto the chain lift before the other had gotten off, by taping some red rods to a servo. I then programmed this in a basic loop. Here's some pseudo code that follow along the lines of :

    
    <code> setup { </code>



    
    <code> start servo assign LED pins, etc.. </code>



    
    <code> State open and closed angles for servo</code>



    
    <code> Set the servo to be closed </code>



    
    <code>} </code>



    
    loop {



    
            Do the open the gate routine



    
            Wait a while



    
    }



    
    Gate routine {



    
            Turn on the traffic lights in order



    
            Open the servo, then close it quickly (only one roller on the car goes through)



    
            Wait not very much



    
            Open the servo again



    
            Turn off the traffic lights.



    
    }


Around this time I bought a Jessops flashgun (for a much discounted price, which I'm very pleased about), and I was experimenting with the whole idea of external flash, getting the exposure right, angles, shadows, etc. I even (at one point) used three flashes for the same shot at different times: the onboard one triggered by the camera, my old 300EZ triggering my new Jessops one via a master/slave protocol. Here's a Flickr Gallery of the results:

[fsg_gallery id="1"]

And then, as I usually do, I decided to make a video about it. I used my 600D, 50mm f/1.4 and some "arty" music. Some people have described it as "veh GCSE art." And so here it is:

[vimeo clip_id="39497272" title="1" byline="0" portrait="1" width="700px"]

And now on to my next project. But you'll have to wait to see what it is (although that might take a while, as it involves heavy uses of other people's APIs, most of which use oAuth. And I hate oAuth.)

See ya later bye.
