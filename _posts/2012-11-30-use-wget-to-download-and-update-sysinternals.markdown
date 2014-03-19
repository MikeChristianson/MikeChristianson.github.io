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
<img class="alignright" src="http://photos.smugmug.com/photos/i-w3VTGk2/0/O/i-w3VTGk2.gif" alt="" width="315" height="50" />Power-users and developers who use Windows are probably familiar with <a href="http://www.sysinternals.com">Sysinternals</a> "utilities to help you manage, troubleshoot and diagnose your Windows systems and applications." For those folks, here's a quick one-liner to download all of Sysinternals tools using wget. (I use <a href="http://codeaweso.me/tag/cygwin/">cygwin</a>, hence `wget`. Powershell users may have something similar.)

`wget -N -r -l 1 -nd http://live.sysinternals.com/`

The above also works for updating your local copy at a later date. `-N</code> turns on time-stamping, <code>-r</code> turns on recursive retrieving, <code>-l 1</code> specifies the maximum depth of recursion, <code>-nd` saves all files to the current directory.
