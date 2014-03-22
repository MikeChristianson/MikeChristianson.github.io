---
layout: post
title: Using 'watch' as quick continuous integration
categories:
- commandline
- cygwin
- linux
- programming
tags:
- commandline
- cygwin
- linux
- programming
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
Here's a quick tip for anyone writing a script without a <a href="http://en.wikipedia.org/wiki/Read-eval-print_loop">REPL</a>: use <a href="http://en.wikipedia.org/wiki/Watch_(Unix)">`watch`</a> as a quick continuous integration tool.

While writing code in one console, execute the following `watch` command in another:

`watch -d -n 5 "command"`

I used this trick while pair-programming an <a href="https://github.com/MikeChristianson/7in7/blob/master/Io/Day-3/gnome.io">Io implementation</a> of <a href="http://en.wikipedia.org/wiki/Gnome_sort">Gnome Sort</a> during my last <a title="Seven Languages in Seven Weeks reading group" href="http://codeaweso.me/2012/07/seven-languages-in-seven-weeks-reading-group/">reading group</a> meeting. My other half thought it was a clever trick and shared it with the group. Then our group leader said I should blog about it. Done!
