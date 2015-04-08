---
layout: post
title: Change cygwin home directory
categories:
- cygwin
tags: []
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
<img style="float: right; margin-right: 1em;" src="http://photos.smugmug.com/photos/i-r5gnHJ8/0/O/i-r5gnHJ8.png" alt="" width="64" height="64" />Perhaps most people using Cygwin don't realize this, but they actually have two home directories. One is their Windows home directory (`%USERPROFILE%`) and the other is their Cygwin home directory (`~`).

Several months ago I became frustrated with repeated navigation from one to the other, so I began using a symbolic link. In `~` I created a link to `%USERPROFILE%` with `ln -s "$USERPROFILE" home`. Thus, any time I wanted to change to my Windows home directory I would simply `cd ~/home`.

It worked, but that dichotomy remained… Then, it occurred to me: why couldn't `~` and `%USERPROFILE%` be the same?

Luckily, they can! In fact, the <a href="http://cygwin.com/cygwin-ug-net/using-utils.html#utils-althome-ex">Cygwin documentation on alternate home roots</a> shows exactly how. Using <a href="http://cygwin.com/cygwin-ug-net/using-utils.html#mkpasswd">`mkpasswd`</a>, one or all home directories may be set to any arbitrary path; to change all home directories to the Windows home directory:

{% highlight bash %}
mkpasswd -c -p "$(cygpath -H)" > /etc/passwd
{% endhighlight %}
Pretty neat. See the <a href="http://cygwin.com/cygwin-ug-net/using-utils.html#utils-althome-ex">Cygwin documentation on alternate home roots</a> for more information.
