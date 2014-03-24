---
layout: post
title: Oracle Java 7 on Ubuntu 11.10 12.04
categories:
- java
- linux
tags: []
status: publish
type: post
published: false
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
<a href="https://launchpad.net/~webupd8team/+archive/java"><img style="float: right; margin-left: 1em;" src="http://photos.smugmug.com/photos/i-96qDSQx/0/O/i-96qDSQx.gif" alt="" width="137" height="122" /></a>One of the most-visited entries on my blog is <a title="Sun Java 6 on Ubuntu 10.04 10.10 and later" href="/2010/07/sun-java-6-on-ubuntu-10-04-10-10-and-later/">Sun Java 6 on Ubuntu 10.04 10.10 and later</a>. Now that Java 7 is widely available, I thought it'd be nice to share the same instructions for Java 7.

To install Oracle Java 7 on Ubuntu 11.10, add the <a href="https://launchpad.net/~webupd8team/+archive/java">Oracle Java (JDK) 7 Installer PPA</a> and install:
{% highlight bash%}add-apt-repository ppa:webupd8team/java
apt-get update
apt-get install oracle-jdk7-installer{% endhighlight %}
