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
You may be surprised to learn <a title="Ant website" href="http://ant.apache.org/">Ant</a> requires GCJ when installed through Synaptic or `apt` on Ubuntu.  GCJ is <a title="GCJ homepage" href="http://gcc.gnu.org/java/">GNU's Java compiler</a>.  When you're using Sun's JDK and compiler, GCJ can get in the way -- at worst it creates conflicts; at best it causes confusion.

Here's how I installed Ant on Ubuntu without GCJ.<!--more-->  <em>Be sure to check out (easier) alternatives suggested in the <a href="#comments">comments, below</a></em>.
<ol>
	<li>Download the current `.tar.bz2` distribution of Ant from <a title="Ant mirror" href="http://www.ibiblio.org/pub/mirrors/apache/ant/binaries/">http://www.ibiblio.org/pub/mirrors/apache/ant/binaries/</a>.</li>
	<li>Unpack archive using `tar`.</li>
{% highlight bash %}tar -xjvf apache-ant-*-bin.tar.bz2{% endhighlight %}
	<li>Move the unpacked directory to `/usr/local/ant`.</li>
	<li>Change that directory's owner to `root`.</li>
{% highlight bash %}chown -R root:root /usr/local/ant{% endhighlight %}
	<li>Add the following lines to `/etc/bash.bashrc`.</li>
{% highlight bash %}export ANT_HOME=/usr/local/ant
export PATH=${PATH}:${ANT_HOME}/bin{% endhighlight %}</ol>
From a new shell, run `ant`.  You should see the following:
`
Buildfile: build.xml does not exist!
Build failed
`
Yes, it's a failure message.  But it means Ant is working as expected.  :)
