---
layout: post
title: GCViewer, garbage collection and heap analysis tool
categories:
- java
tags:
- garbagecollection
- gcviewer
- java
- tool
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  _wpas_skip_2141692: '1'
  _wpas_skip_2141647: '1'
  _wpas_skip_2141747: '1'
  simplecatch-sidebarlayout: ''
---
<p class="notice">Jörg Wüthrich <a href="https://github.com/chewiebug/GCViewer">forked GCViewer</a> in 2011 and has added support for Java 1.6 and 1.7 (including the new G1 collector). Tagtraum stopped improving its original version in 2008.</p>

<a href="https://github.com/chewiebug/GCViewer"><img src="http://www.smugmug.com/photos/i-MzC4FrR/0/S/i-MzC4FrR-S.png" width="400" height="296" style="float: right; margin-left: 2em;"/></a>

One month ago I wrote about the benefits of using <a title="Java garbage collection logging" href="/2008/12/java-garbage-collection-logging/">Java's built-in garbage collection logging</a>.&nbsp; With it, you can find answers to important important questions such as "how much memory is my app using" and "how much time is being spent doing garbage collection."

There is, of course, a hitch: for any non-trivial application or problem, you will be quickly buried by a mountainous log file.&nbsp; The longer your application runs, the larger the log file.&nbsp; It keeps growing, and growing, and...

What will you do?&nbsp; Write a second Java app, one that parses the log file -- attempt a homegrown analysis tool?&nbsp; No!&nbsp; Instead, I suggest you use <a href="https://github.com/chewiebug/GCViewer">GCViewer</a>, a free open-source tool for visualizing the <a title="Java garbage collection logging" href="/2008/12/java-garbage-collection-logging/">Java gc log file</a>.

<a href="https://github.com/chewiebug/GCViewer">GCViewer</a> helps you get a quick and comprehensive look at how your application is behaving.&nbsp; Things like total heap vs. heap used and full GC events become very apparent.&nbsp; Useful statistics such as time spent during GC are calculated for your convenience.

GCViewer is a fork by Jörg Wüthrich and is available under an <a href="http://www.gnu.org/licenses/lgpl.html">LGPL</a> license.
