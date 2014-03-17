---
layout: post
title: Java garbage collection logging
categories:
- java
tags:
- garbagecollection
- java
- performance
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
<p style="border: thin dashed;"><em>This article is four years old! The world of Java garbage collection has changed a bit. Please keep that in mind when reading. You may also wish to watch a talk on <a href="http://www.infoq.com/presentations/Visualizing-Java-GC">garbage collection by Ben Evans</a></em> at DevNexus 2013.</p>

Java's built-in garbage collection logging provides a quick, easy, and <em>free</em> way to profile or troubleshoot your Java application.&nbsp; It can help you understand your application in terms of:
<ul>
	<li>memory usage (object count and size)</li>
	<li>heap size (initial and over time)</li>
	<li>GC metrics (frequency, pause time, and amount freed)</li>
</ul>
So, now you can answer questions like "how much memory is my app using," "how much time is being spent doing garbage collection," and "how big is the heap over time." For help analyzing and visualizing a GC log file, be sure to check out <a title="GCViewer, garbage collection and heap analysis tool" href="http://codeaweso.me/2009/01/gcviewer-garbage-collection-and-heap-analysis/">GCViewer, a garbage collection and heap analysis tool</a>.

GC logging is enabled using JVM arguments; below are the arguments I use. <!--more-->(Note: the log file specified as <em>file</em> is reset each time the VM starts.)

<code>-verbose:gc -Xloggc:<em>file</em></code>

<p style="border: thin dashed;">Dan Evans, in his <a href="http://www.infoq.com/presentations/Visualizing-Java-GC">garbage collection talk at DevNexus 2013</a>, recommends the following GC flags in addition to the above.

<code>-XX:+PrintGCDetails -XX:+PrintTenuringDistribution</code></p>

Here's an example GC log file which shows three GC events including one full GC.
<pre>[GC 19062K-&gt;7172K(60800K), 0.0087190 secs]
[GC 9346K-&gt;7525K(60800K), 0.0052810 secs]
[Full GC 7525K-&gt;7477K(60800K), 0.0615190 secs]</pre>
In the first event, garbage collection takes just under nine thousandths of a second to collect 11,890K memory used by objects (19,062K to 7,172K) while the heap is 60,800K.&nbsp; The last event is a full GC lasting just over six hundredths of a second to free up 48K with no change in the heap.

Data like this can be invaluable in saving one's sanity or ending arguments! For further details on garbage collection, see Oracle's&nbsp;<a title="article on GC Portal" href="http://www.oracle.com/technetwork/articles/javase/gcportal-136937.html">GC Portal</a> and <a title="doc on GC tuning" href="http://www.oracle.com/technetwork/java/javase/gc-tuning-6-140523.html">Virtual Machine Garbage Collection Tuning</a> documentation.
