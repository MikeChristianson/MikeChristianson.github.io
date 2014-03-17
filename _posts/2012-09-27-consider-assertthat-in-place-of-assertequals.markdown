---
layout: post
title: Consider assertThat() in place of assertEquals()
categories:
- java
- junit
tags:
- java
- junit
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
<a href="http://junit.sourceforge.net/doc/ReleaseNotes4.4.html">JUnit 4.4 added a new assertion mechanism</a> with the method <tt>assertThat()</tt>. Have a look and consider using it in place of <tt>assertEquals()</tt>.

<pre lang="java">
assertThat(result, is(42));
</pre>
<pre lang="java">
assertThat(output, containsString("foo"));
</pre>
