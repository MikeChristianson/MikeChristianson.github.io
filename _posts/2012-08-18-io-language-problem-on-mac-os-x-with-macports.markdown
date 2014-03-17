---
layout: post
title: Io Language problem on Mac OS X with MacPorts
categories:
- mac
- programming
tags:
- io language
- mac
- programming
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
This week in <a title="Seven Languages in Seven Weeks reading group" href="http://codeaweso.me/2012/07/seven-languages-in-seven-weeks-reading-group/">Seven Languages in Seven Weeks</a> brings the <a href="http://iolanguage.com/">Io Language</a>. Installing the binaries is, of course, the first task in beginning to use the language. However, I'm not off to a roaring start just yet.

After installing the binaries using the <a href="http://iobin.suspended-chord.info/mac/iobin-mac-current.zip">Mac package installer</a>, I find that the <code>io</code> binary is not found.

<pre lang="text">
$ io
-bash: io: command not found
</pre><!--more-->

Let's try this…
<pre lang="text">
$ /usr/local/bin/io
bash: /usr/local/bin/io: Permission denied
</pre>

Hmmm… it is there, but I can't access it… let's look closer.
<pre lang="text">
$ ls -l /usr/local
total 0
drwx------ 17 macports wheel 578 Aug 18 11:08 bin
</pre>

Well, that explains it. For some reason, <a href="http://www.macports.org/">MacPorts</a> set up <code>/usr/local/bin/</code> with very restrictive permissions. And, apparently, I'm not the only one to run into this problem:

<ul>
	<li><a href="http://tips4all.net/macports-sets-permissions-incorrectly.html">http://tips4all.net/macports-sets-permissions-incorrectly.html</a></li>
	<li><a href="http://echelog.com/logs/browse/macports/1335477600">http://echelog.com/logs/browse/macports/1335477600</a> (search for [03:31:09])</li>
</ul>

Let's fix it with chmod.
<pre lang="bash">
chmod a+x /usr/local/bin/
</pre>

It works!
<pre lang="io">
$ io
Io 20110905
Io> 
</pre>
Thanks to <a href="http://iobin.suspended-chord.info/">Jake Peck</a>, creator of the Io binary installers, for his assistance in solving this little mystery.

Now, on to the fun stuff…
