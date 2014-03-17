---
layout: post
title: Sun Java 6 on Ubuntu 10.04 10.10 and later
categories:
- java
- linux
tags:
- java
- linux
- ubuntu
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  _wp_old_slug: ''
  simplecatch-sidebarlayout: ''
---
<em><strong>Post updated 2012 Mar 30</strong></em>: Java 7 is available, check out new instructions for&nbsp;<a title="Oracle Java 7 on Ubuntu 11.10 12.04" href="http://codeaweso.me/2012/03/oracle-java-7-on-ubuntu-11-10-12-04/">Oracle Java 7 on Ubuntu 11.10 12.04</a>.

<em>Post updated 2011 Jan 19: Given the opportunity to install 10.10, I have added <a href="#1010">different instructions for Ubuntu 10.10</a> (Maverick Meerkat).</em>

Much to my surprise, but probably not those of the Open Source Ruling Class, <a href="https://wiki.ubuntu.com/LucidLynx/ReleaseNotes#Sun%20Java%20moved%20to%20the%20Partner%20repository">Sun's Java 6 has been removed from the Ubuntu Multiverse</a>. Apparently the Ubuntu folks have started putting some weight behind their recommendations for switching to the "OpenJDK." Fortunately, the official, "proprietary" Java is still available through another Ubuntu repository.
<h2 id="1010">Ubuntu 10.10</h2>
To install Sun's Java 6 JDK on Ubuntu 10.10, add the <a href="https://launchpad.net/~sun-java-community-team/+archive/sun-java6">Sun Java6 Community PPA</a> and install:
<pre>add-apt-repository ppa:sun-java-community-team/sun-java6
apt-get update
apt-get install sun-java6-jdk
update-java-alternatives -s java-6-sun</pre>
<h2>Ubuntu 10.04</h2>
To make Sun's Java 6 JDK available on Ubuntu 10.04 add the new repository like so:
<pre>add-apt-repository "deb http://archive.canonical.com/ lucid partner"
aptitude update
aptitude install sun-java6-jdk
update-java-alternatives -s java-6-sun</pre>
