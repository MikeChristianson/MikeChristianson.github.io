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
<pre>
diff -y <(sort file1) <(sort file2)
</pre>
<pre>
comm -3 <(sort file1) <(sort file2)
</pre>

See this wikipedia entry for a <a href="http://en.wikipedia.org/wiki/Comm#Comparison_to_diff">comparison of the <tt>diff</tt> and <tt>comm</tt> commands</a>.