---
layout: post
title: Remote debugging
categories:
- java
tags:
- debugging
- java
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  _wp_old_slug: java-remote-debugging
  simplecatch-sidebarlayout: ''
---
I never knew how good life could be -- at work, mind you -- until I spent some quality time with the Eclipse debugger.? My days of relying solely on <a title="Javadoc for System.out" href="http://java.sun.com/javase/6/docs/api/java/lang/System.html#out">`System.out.println()`</a> are long gone.? Print debugging is only useful if you can change the code.? Loggers like <a title="Log4j" href="http://logging.apache.org/log4j/1.2/index.html">Log4j</a> are only marginally better -- assuming the code uses it properly in the first place.

And things get more interesting when the code is running on a different or remote machine.? Luckily, Java has a great remote debugging facility. Here's an example of how I enable remote debugging using command-line arguments.

`-agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n`

In this example, the remote application will start and run normally while listening in the background for a debugger to connect on port 8000.? For further details on how to enable and configure remote debugging, see Sun's <a title="JPDA guide" href="http://java.sun.com/javase/6/docs/technotes/guides/jpda/conninv.html">JPDA Connection and Invocation</a> guide.
