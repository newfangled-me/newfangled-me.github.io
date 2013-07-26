---
author: AlexForey
comments: true
date: 2013-03-10 15:50:59+00:00
layout: post
slug: paypal-isnt-doing-itself-any-favours-here
title: PayPal isn't doing itself any favours here
wordpress_id: 691
---

Right. Let's start out by going to their homepage.

[![Screen Shot 2013-03-10 at 15.35.25](http://newfangled.me/wp-content/uploads/2013/03/Screen-Shot-2013-03-10-at-15.35.25-1024x557.png)](http://newfangled.me/wp-content/uploads/2013/03/Screen-Shot-2013-03-10-at-15.35.25.png)



Looking nice enough. Finally, maybe they've fixed the awful site design from 2003 they had before. Oh wait. Let's try logging in.

[![Screen Shot 2013-03-10 at 15.35.52](http://newfangled.me/wp-content/uploads/2013/03/Screen-Shot-2013-03-10-at-15.35.52-1024x514.png)](http://newfangled.me/wp-content/uploads/2013/03/Screen-Shot-2013-03-10-at-15.35.52.png)Nope, I was wrong. It may look nice on the outside, but on the inside it's exactly the same as before.

How about the developer site?

[![Screen Shot 2013-03-10 at 15.43.11](http://newfangled.me/wp-content/uploads/2013/03/Screen-Shot-2013-03-10-at-15.43.11-1024x476.png)](http://newfangled.me/wp-content/uploads/2013/03/Screen-Shot-2013-03-10-at-15.43.11.png)Ooh look. Isn't that shiny. It says beta on it so it must be better. Let's try signing in.

[![Screen Shot 2013-03-10 at 15.36.45](http://newfangled.me/wp-content/uploads/2013/03/Screen-Shot-2013-03-10-at-15.36.45-1024x461.png)](http://newfangled.me/wp-content/uploads/2013/03/Screen-Shot-2013-03-10-at-15.36.45.png)Well that worked well enough. I even managed to create some Sandbox accounts after several bad request 401 failed attempts. Let's click on the Sandbox site link.

[![Screen Shot 2013-03-10 at 15.36.55](http://newfangled.me/wp-content/uploads/2013/03/Screen-Shot-2013-03-10-at-15.36.55-1024x251.png)](http://newfangled.me/wp-content/uploads/2013/03/Screen-Shot-2013-03-10-at-15.36.55.png)NOPE! It's gone. Completely. The UK one sometimes redirects to https://www.sandbox.paypal.co.uk, a domain that doesn't exist on any DNS tables. Other times, it's just 404ing. I even tried using a US proxy, and trying again to see if the US one was broken as well. Guess what? It was broken as well.

I'm at the point of redesigning Markpond where I'm choosing a payment platform. If I possibly could, I would be running in the opposite direction right now. PayPal, a huge multinational company, has broken its developer site completely. And it looks like it's been like that for the past few days. No service announcement, no public apology, just silently broken.

If I could, I would use [Stripe](https://stripe.com), which looks amazing. But, it's US and Canada only for the foreseeable future. There's also [Braintree](https://braintreepayments.com), which has a nice functioning sandbox, but as far as I can tell requires a social security number to get your payment processing online, which of course I don't have because I'm not a US citizen.

So it's back to PayPal again. And for now, all the code I'm writing can't be tested until I either put it in production and hope there aren't any errors, or until I set up a second actual PayPal account, send some money over to it, and then try buying something back with it through the site. Great.








