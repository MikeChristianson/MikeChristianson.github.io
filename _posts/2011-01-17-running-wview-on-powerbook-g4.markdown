---
layout: post
title: Running wview on PowerBook G4
categories:
- linux
- weather
tags:
- linux
- powerpc
- ubuntu
- weather
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  _wp_old_slug: ''
  simplecatch-sidebarlayout: ''
---
<img alt="" src="http://www.smugmug.com/photos/1159232851_Y3P2N-Ti.jpg" title="Davis Vantage Vue" class="alignright" width="100" height="100" />Ever since I set up my <a href="http://vantagevue.com/">Davis Vantage Vue</a> weather station, I've used my Dell Inspiron <a href="http://www.dell.com/us/p/inspiron-mini1012/fs">Mini 1012</a> to get weather data from my console, into the computer, and out to the Internet.  This weekend I decided to see if I could dust off my old <a href="http://en.wikipedia.org/wiki/PowerBook_G4#Aluminum_PowerBook_G4">12" PowerBook G4</a> and use it for the same purpose.

<img alt="" src="http://www.smugmug.com/photos/1159226867_QA37y-Ti.jpg" title="12&quot; PowerBook G4" class="alignleft" width="100" height="91" />To complicate matters, I had recently removed OS X 10.4 and installed Ubuntu 10.10 on the PowerBook in an ill-fated attempt to give it new life.  The PowerBook was a great computer in its time but, these days, PowerPC is a dying, if not already dead, architecture.  <!--more-->Flash 10?  Not on PowerPC.  Google Chrome?  Nope.  

On the Mini, which ran Windows 7 Starter, I used <a href="http://home.comcast.net/~wuhu_software/">WUHU</a> for data acquisition and upload.  That program worked well, but obviously an x86 PC app just would not do the trick on Linux or a PowerPC.  Some searching led me to <a href="http://www.wviewweather.com">wview</a> which worked on Linux and was capable of running on something like a NSLU2 or plug computer.  It would either be perfect or a perfect mirage.

And then there was the issue of my USB-to-Serial adapter, for connecting the computer to the weather station console.  Who knew if that would work?  

So, there I was with a dead architecture, the wrong OS, a questionable USB adapter and... well, let's just say I wasn't very hopeful.  

<img alt="" src="http://www.wviewweather.com/wview.png" title="wview" class="alignright" width="100" height="100" />But... it worked!  Much to my surprise, I was able to get data from my weather station, using wview, through the USB adapter, into the PowerBook, and out to the world.  Here's how I did it:

<ol>
	<li>Installed <a href="https://wiki.ubuntu.com/PowerPC">Ubuntu 10.10 for PowerPC</a>.</li>
	<li>Tested the <a href="http://www.amazon.com/gp/product/B000067VB7?ie=UTF8&tag=wiltblog-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=B000067VB7">IOgear GUC232A USB-to-Serial Adapter</a> and it worked right out of the box.
<pre>
USB Serial support registered for pl2303
usb 3-1: pl2303 converter now attached to ttyUSB0
usbcore: registered new interface driver pl2303
pl2303: Prolific PL2303 USB to serial adaptor driver
</pre>
	<li>Followed <a href="http://www.wviewweather.com/release-notes/wview-Debian-Quick-Start.html">wview Debian Quick Start Guide</a>.  Downloaded and executed <code>wview-install-debian</code></a>, encountered first problem:
<pre>In file included from ../htmlgenerator/htmlStates.c:36:
./glchart.h:28: fatal error: gd.h: No such file or directory</pre>
</li>
	<li>Installed <code>libgd2</code>.  <pre lang="bash">apt-get install libgd2-noxpm-dev</pre></li>
	<li>Executed <code>wview-install-debian</code> again, encountered second problem:
<pre>
http.h: error: curl/curl.h: No such file or directory
</pre></li>
	<li>Installed <code>libcurl4</code>.  <pre lang="bash">apt-get install libcurl4-openssl-dev</pre></li>
	<li>Executed wview-install-debian again; encountered problem; re-ran as <pre lang="bash">wview-install-debian -f</pre></li>
	<li>From here out, I followed the <a href="http://www.wviewweather.com/release-notes/wview-User-Manual.html#Configuration">wview user manual for configuration</a>.</li>
</ol>

[caption id="" align="alignleft" width="300" caption="Check it out, it's a live, daily temperature graph.  For reals."]<a href="http://christiansons.net/mike/weather/"><img alt="" src="http://christiansons.net/mike/weather/tempdaycomp.png" title="live, daily temperature graph" width="300" height="180" /></a>[/caption]

Anyway, here's my weather page: <blockquote><a href="http://christiansons.net/mike/weather/"><strong>http://christiansons.net/mike/weather/</strong></a></blockquote>

It's nice to have brought life back to disused computer; it's nice to have my Mini back!

P.S. Not having tried <a href="http://www.wviewweather.com/release-notes/wview-Quick-Start-MacOSX.html">wview on OS X</a>, I can't compare the experience or difficulty.
