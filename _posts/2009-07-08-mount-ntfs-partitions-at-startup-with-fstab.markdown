---
layout: post
title: Mount NTFS partitions at startup with fstab
categories:
- linux
tags:
- fstab
- ntfs
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
Yesterday I helped a <a href="http://dollopofdesi.blogspot.com">coworker</a> figure out the best way to <a href="http://dollopofdesi.blogspot.com/2009/07/loading-windows-partition-at-bootup-in.html">have Linux mount an NTFS partition at startup</a>.  It was an interesting little problem because there are multiple solutions but only a single "correct" solution.

At first I questioned the need to do anything at all -- my computer apparently mounts my NTFS drive on its own but I couldn't remember how.  

Before I found the ultimate solution, one approach my coworker attemped was to have gnome execute a script at login which used the `mount` command.  This didn't work; he forgot to use `gksudo` and anyway the script never seemed to run.

Then I remembered <a href="https://help.ubuntu.com/community/Fstab">`fstab`</a> and the rest is history.  If you need to accomplish the same thing, be sure to read his <a href="http://dollopofdesi.blogspot.com/2009/07/loading-windows-partition-at-bootup-in.html">`fstab` blog post</a>.
