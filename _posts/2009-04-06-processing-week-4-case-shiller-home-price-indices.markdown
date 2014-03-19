---
layout: post
title: 'Processing, week 4: Case-Shiller Home Price Indices'
categories:
- career
- processing
tags:
- application
- case-shiller
- graph
- processing
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
<p style="border: thin dashed;">See <a href="/mike/blog/2009/05/processing-case-shiller-home-price-index/">my post of May 26, 2009</a> for a more up-to-date Case-Shiller Home Price Index</a> graph.</p>

<a href="/mike/blog/wp-content/uploads/2009/04/screenshot-sketch_apr04a.png"><img src="/mike/blog/wp-content/uploads/2009/04/screenshot-sketch_apr04a-150x100.png" alt="screenshot-sketch_apr04a" title="screenshot-sketch_apr04a" width="150" height="100" class="alignright size-thumbnail wp-image-319" /></a>I must admit, I've been extremely lazy about reading <a href="http://www.amazon.com/Visualizing-Data-Ben-Fry/dp/0596514557/?tag=wiltblog-20">Visualizing Data</a> or even updating this blog... but, this post should make up for it.

Earlier this week I skimmed a WSJ <a href="http://blogs.wsj.com/economics/2009/03/31/a-look-at-case-shiller-numbers-by-metro-area-7/">blog</a> and <a href="http://online.wsj.com/article/SB123850357559373519.html">article</a> on the Case-Shiller Home Price Index and thought to myself "time for a graph!"

For the uninitiated, <a href="http://www2.standardandpoors.com/portal/site/sp/en/us/page.topic/indices_csmahp/2,3,4,0,0,0,0,0,0,0,0,0,0,0,0,0.html">Case-Shiller tracks home prices</a> in 20 metro areas.  As WSJ states, "[the index has] a base value of 100 in January 2000.  So a current index value of 150 translates to a 50% appreciation rate since January 2000 for a typical home located within the metro market."

This program graphs the history of each city's home price index.  <!--more-->Not satisfied with just a plain-old graph, I added some aesthetic and functional features.  The 20-city composite is shown for reference.  Moving the mouse over the graph will highlight and display the index for a given point in time.  Clicking the mouse will advance to another city.  

<applet code="sketch_apr04a.class" archive="/mike/blog/wp-content/uploads/2009/04/sketch_apr04a.jar" width="600" height="400">Oops, your browser does not have a Java Plug-in. <a title="Download Java Plug-in" href="http://java.sun.com/products/plugin/downloads/index.html">Get the latest Java Plug-in here.</a> Or, if you have Java but can't use the Plug-in, feel free to download the <a href="/mike/blog/wp-content/uploads/2009/04/sketch_apr04a.jar">program as an executable jar</a>.  Here's a screen shot of what you're missing.
<a href="/mike/blog/wp-content/uploads/2009/04/sketch_apr04a.jar"><img class="aligncenter size-full wp-image-319" title="screenshot-sketch_apr04a" src="/mike/blog/wp-content/uploads/2009/04/screenshot-sketch_apr04a.png" alt="screenshot-sketch_apr04a" width="600" height="400" /></a></applet>

The graph's data comes from a static CSV which I slightly hand-modified from <a href="http://www2.standardandpoors.com/portal/site/sp/en/us/page.topic/indices_csmahp/2,3,4,0,0,0,0,0,0,0,0,0,0,0,0,0.html">the original XLS spreadsheet</a>.

It's interesting the number of little things I find missing or bothersome.  For example, I'd like to use `<a href="http://processing.org/reference/curveVertex_.html">curveVertex()</a>` instead of `<a href="http://processing.org/reference/vertex_.html">vertex()</a>` for a smoother line curve, but by nature it doesn't display the first and last data points.  Fortunately there are enough data points and few large jumps/drops so the graph does not appear jagged.  I could go on...

Taking a break from the book and making something useful has been fun.
