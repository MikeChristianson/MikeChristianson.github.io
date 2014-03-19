---
layout: post
title: Processing, week 3
categories:
- processing
tags:
- processing
- programming
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
It's been a week and a half since my <a href="/2009/02/processing-week-2/">Processing, week 2 post</a> and I'm still not done with chapter four, "Time Series."  Oh, well.

I've been noticing that my Processing programs use a lot of CPU -- about 35% on my dual-core, 2 GHz machine.  And that's for a program which just displays static data, like the one below.<!--more-->
<p style="border: thin dashed;">Update: thanks to a helpful suggestion, I was able to decrease CPU usage significantly.  To find out how, read the <a href="#comments">comments section</a>.</p>
<applet code="sketch_mar09a.class" archive="/mike/blog/wp-content/uploads/2009/03/sketch_mar09a.jar" width="600" height="400">
Oops, your browser does not have a Java Plug-in. <a href="http://java.sun.com/products/plugin/downloads/index.html" title="Download Java Plug-in">Get the latest Java Plug-in here.</a> Or, if you have Java but can't use the Plug-in, feel free to download the <a href="/mike/blog/wp-content/uploads/2009/03/sketch_mar09a.jar">program as an executable jar</a>.
</applet>

This program, from <a href="http://www.amazon.com/Visualizing-Data-Ben-Fry/dp/0596514557/?tag=wiltblog-20">Visualizing Data</a>, plots some US beverage consumption stats over a period of time.  Clicking anywhere within the app switches the subject beverage.

Unless I'm missing something, the excessive CPU usage is due to constant re-draw.  The book puts all drawing code within the `<a href="http://processing.org/reference/draw_.html">draw()</a>` method which is called repeatedly, up to 60 times per second (by default).  Setting the `<a href="http://processing.org/reference/frameRate_.html">frameRate()</a>` to 30 fps improves the matter, but only marginally.

As I was putting in the reference link for `draw()`, I noticed the documentation indicates its continuous execution can be disabled with `<a href="http://processing.org/reference/noLoop_.html">noLoop()</a>`.  That's great, but has the side effect of disabling key or mouse events.

For now I'm willing to overlook this CPU usage "problem" but I hope the book addresses it soon.  
