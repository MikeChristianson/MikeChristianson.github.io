---
layout: post
title: Ant on Ubuntu without GCJ
categories:
- ant
- eclipse
tags:
- ant
- gcj
- java
- ubuntu
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  _wp_old_slug: ant-on-ubuntu
  simplecatch-sidebarlayout: ''
---
<a href="/mike/blog/wp-content/uploads/2009/01/ant_logo_large.gif"><img class="alignleft size-medium wp-image-88" title="Ant logo" src="/mike/blog/wp-content/uploads/2009/01/ant_logo_large.gif" alt="" width="190" height="120" /></a>You may be surprised to learn <a title="Ant website" href="http://ant.apache.org/">Ant</a> requires GCJ when installed through Synaptic or <tt>apt</tt> on Ubuntu.  GCJ is <a title="GCJ homepage" href="http://gcc.gnu.org/java/">GNU's Java compiler</a>.  When you're using Sun's JDK and compiler, GCJ can get in the way -- at worst it creates conflicts; at best it causes confusion.

Here's how I installed Ant on Ubuntu without GCJ.<!--more-->  <em>Be sure to check out (easier) alternatives suggested in the <a href="#comments">comments, below</a></em>.
<ol>
	<li>Download the current <tt>.tar.bz2</tt> distribution of Ant from <a title="Ant mirror" href="http://www.ibiblio.org/pub/mirrors/apache/ant/binaries/">http://www.ibiblio.org/pub/mirrors/apache/ant/binaries/</a>.</li>
	<li>Unpack archive using <tt>tar</tt>.</li>
<pre lang="bash">tar -xjvf apache-ant-*-bin.tar.bz2</pre>
	<li>Move the unpacked directory to <tt>/usr/local/ant</tt>.</li>
	<li>Change that directory's owner to <tt>root</tt>.</li>
<pre lang="bash">chown -R root:root /usr/local/ant</pre>
	<li>Add the following lines to <tt>/etc/bash.bashrc</tt>.</li>
<pre lang="bash">export ANT_HOME=/usr/local/ant
export PATH=${PATH}:${ANT_HOME}/bin</pre></ol>
From a new shell, run <tt>ant</tt>.  You should see the following:
<pre>Buildfile: build.xml does not exist!
Build failed</pre>
Yes, it's a failure message.  But it means Ant is working as expected.  :)
