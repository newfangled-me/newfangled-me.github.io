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

[caption id="attachment_240" align="alignright" width="210" caption="Stuff that shouldn't exist in HTML5"][![HTML4](http://newfangled.me/wp-content/uploads/2011/11/HTML4_blog11-300x300.jpg)](http://newfangled.me/wp-content/uploads/2011/11/HTML4_blog111.jpg)[/caption]


> _Separating content and styling is very powerful_




Something I feel moderately strongly about is the use of tags which are specifically to do with presentation. I am therefore having a go at:




`<i>`, `<em>`, `<b>` and `<u>`




I will refer to these tags as the tags of doom, and I feel they are from an era when the web was made up of raw data. Paragraphs and headers. And lists. And tables. But not CSS.<!-- more -->




The thing I love about CSS is that you can completely change the look of  a page without changing any of the markup. Take a look at the [CSS Zen Garden](http://www.csszengarden.com/). Look how completely the page changes when you change the stylesheet on the right (or possibly left) column. The tags of doom are part of the markup, and therefore when changing the stylesheet, these elements of the design would stay. Which I hate.




In a new web, where websites contain so much more than content, I feel these tags have no place. You may ask why I am not having a go at the `<h1>` etc and `<p>`. Well that is because they are still central to the design of every page. Search engines use them to figure out what kind of page it's looking at. They cannot be replaced. But the tags of doom have been replaced by CSS.




In fact I could also say the same about `<table>`. Some would  say they also come from the era when the web was just for sharing data and statistics, and can be replaced by floating in CSS, but for some reason I am giving it a pardon. Mainly because it's the easiest way to line up multiple columns with equal specing etc.




Goodbye.




UPDATE:




I forgot the `<center>` tag. I hate that too. It can be replaced by `margin: 0 auto;` in CSS.
