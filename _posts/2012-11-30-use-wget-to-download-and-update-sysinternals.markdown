---
layout: post
title: Use wget to download and update Sysinternals
categories:
- commandline
- cygwin
- windows
tags:
- commandline
- cygwin
- windows
status: publish
type: post
published: true
meta:
  _wpas_done_all: '1'
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
<img style="float:right; margin-left: 1em;" src="http://photos.smugmug.com/photos/i-w3VTGk2/0/O/i-w3VTGk2.gif" alt="" width="315" height="50" />Power-users and developers who use Windows are probably familiar with <a href="http://www.sysinternals.com">Sysinternals</a> "utilities to help you manage, troubleshoot and diagnose your Windows systems and applications." For those folks, here's a quick one-liner to download all of Sysinternals tools using wget. (I use <a href="/tag/cygwin/">cygwin</a>, hence `wget`. Powershell users may have something similar.)

`wget -N -r -l 1 -nd http://live.sysinternals.com/`

The above also works for updating your local copy at a later date. `-N` turns on time-stamping, `-r` turns on recursive retrieving, `-l 1` specifies the maximum depth of recursion, `-nd` saves all files to the current directory.
