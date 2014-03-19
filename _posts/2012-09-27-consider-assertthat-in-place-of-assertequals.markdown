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
<a href="http://junit.sourceforge.net/doc/ReleaseNotes4.4.html">JUnit 4.4 added a new assertion mechanism</a> with the method `assertThat()`. Have a look and consider using it in place of `assertEquals()`.

{% highlight java %}
assertThat(result, is(42));
{% endhighlight %}
{% highlight java %}
assertThat(output, containsString("foo"));
{% endhighlight %}
