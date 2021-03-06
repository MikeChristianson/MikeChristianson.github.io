---
layout: post
title: Better consoles for cygwin shells
categories:
- cygwin
tags:
- commandline
- cygwin
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
<em>2011-Nov-24</em>: Exciting news! <a href="http://cygwin.com/ml/cygwin-announce/2011-11/msg00043.html">mintty is now the default cygwin shell</a>.
<blockquote>…mintty has become part of the default installation, setup will
create desktop and start menu shortcuts called "Cygwin Terminal", which
point to mintty, starting your default shell as noted in /etc/passwd.</blockquote>
Let's face it, cygwin is neat but the console (or, terminal emulator, if you prefer) it launches is <em>lame</em>. I'm not referring to bash, but rather the normal -- and thus lame -- Windows command box. Things just don't feel right... some keys don't work as expected and forget about making the window wider. Fortunately, there is a better way!

Rather, I should say there are better way<em>s</em>: <a href="http://code.google.com/p/puttycyg/">puttycyg</a>,&nbsp;<a href="http://sourceforge.net/projects/console/">Console2</a>, and my personal favorite,&nbsp;<a href="http://cygwin.com/cgi-bin2/package-grep.cgi?grep=mintty">mintty</a>.

<a href="http://www.smugmug.com/photos/770506088_uoPhz-L.png"><img class="aligncenter" title="mintty screenshot" src="http://www.smugmug.com/photos/770506088_uoPhz-S.png" alt="" width="400" height="269" /></a>

<a href="http://code.google.com/p/puttycyg/">puttycyg</a> is a patched version of <a href="http://www.chiark.greenend.org.uk/~sgtatham/putty/">putty</a> with support for cygwin. <a href="http://cygwin.com/cgi-bin2/package-grep.cgi?grep=mintty">mintty</a> is ... well, yeah, it's based on putty, too.

If you use cygwin, you owe it to yourself to try one or all of them immediately. And by that I mean stop reading and start downloading. Now.
