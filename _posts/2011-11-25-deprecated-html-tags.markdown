---
author: AlexForey
comments: true
date: 2011-11-25 22:29:02+00:00
layout: post
slug: deprecated-html-tags
title: Deprecated HTML Tags
wordpress_id: 237
categories:
- Programming
- Rants
- Stuff
---

> _Separating content and styling is very powerful_

Something I feel moderately strongly about is the use of tags which are specifically to do with presentation. I am therefore having a go at:

`<i>`, `<b>` and `<u>`

I will refer to these tags as the tags of doom, and I feel they are from an era when the web was made up of raw data. Paragraphs and headers. And lists. And tables. But not CSS.

The thing I love about CSS is that you can completely change the look of  a page without changing any of the markup. Take a look at the [CSS Zen Garden](http://www.csszengarden.com/). Look how completely the page changes when you change the stylesheet on the right (or possibly left) column. The tags of doom are part of the markup, and therefore when changing the stylesheet, these elements of the design would stay. Which I hate.

In a new web, where websites contain so much more than content, I feel these tags have no place. You may ask why I am not having a go at the `<h1>` etc and `<p>`. Well that is because they are still central to the design of every page. Search engines use them to figure out what kind of page it's looking at. They cannot be replaced. But the tags of doom have been replaced by CSS.

Goodbye.

UPDATE:

I forgot the `<center>` tag. I hate that too. It can be replaced by `margin: 0 auto;` in CSS.
