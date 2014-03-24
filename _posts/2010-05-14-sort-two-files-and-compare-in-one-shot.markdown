---
layout: post
title: Sort two files and compare, in one shot
categories:
- commandline
tags:
- commandline
- diff
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
At least once a week, I find myself wishing I could sort two files and compare them in one shot, from the commandline, without creating intermediate files.  Today I'm glad to say I found my answer.

Here are two examples:

{% highlight bash %}diff -y <(sort file1) <(sort file2){% endhighlight %}
{% highlight bash %}comm -3 <(sort file1) <(sort file2){% endhighlight %}

See this wikipedia entry for a <a href="http://en.wikipedia.org/wiki/Comm#Comparison_to_diff">comparison of the `diff` and `comm` commands</a>.
