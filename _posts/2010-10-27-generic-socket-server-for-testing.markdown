---
layout: post
title: Generic socket server for testing
categories:
- commandline
- cygwin
- linux
tags:
- commandline
- socat
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  _wp_old_slug: ''
  simplecatch-sidebarlayout: ''
---
Here's a useful one-liner for running a generic socket server. I came up with this <a href="http://www.dest-unreach.org/socat/">socat</a>-based alternative to writing my own for testing client output. It listens on port <tt>4096</tt>, accepts TCP/IP connections, and prints input received to <tt>stdout</tt>.
<pre>socat TCP-L:4096,fork -</pre>
<tt><a href="http://www.dest-unreach.org/socat/">Socat</a></tt> is quite powerful, be sure to read more about what it can do.

<strong>2011-July-08</strong>: My coworker has a great post showing how <tt>socat</tt> can <a href="http://dollopofdesi.blogspot.com/2011/07/routing-serial-data-to-socket.html">pipe data from a serial port to a socket</a>!