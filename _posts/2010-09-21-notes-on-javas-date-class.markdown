---
layout: post
title: Notes on Java's Date class
categories:
- java
tags:
- date
- java
- timezone
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  _wp_old_slug: ''
  simplecatch-sidebarlayout: ''
---
Every so often I get myself confused about Java's often-obtuse handling of dates and timezones.  So, for my future self's benefit, here are some reminder notes...  <!--more-->

Please leave a comment if you have corrections or additional tips!  (And, preemptively, yes, some day I'll give <a href="http://joda-time.sourceforge.net/">Joda Time</a> a try.)
<ul>
	<li>`Date`s do not have timezones; <a href="http://download.oracle.com/javase/6/docs/api/java/util/Date.html"> they reflect UTC</a>.</li>
	<li><a href="http://download.oracle.com/javase/6/docs/api/java/util/Date.html#toString()">`Date.toString()`</a> returns a `String` representation based on the local machine's default timezone.  This makes people think that `Date`s have timezones.</li>
	<li>You cannot convert a `Date` from one timezone to another.</li>
{% highlight java %}
Calendar c = Calendar.getInstance();
c.setTime(new Date());
c.setTimeZone(TimeZone.getTimeZone("UTC"));
Date utc = c.getTime();
c.setTimeZone(TimeZone.getTimeZone("America/Phoenix"));
Date mst = c.getTime();
assert !utc.equals(mst);  //throws AssertionError
{% endhighlight %}
	<li>However, you <em>can</em> use `DateFormat` to affect the `String` representation of a `Date`, including the timezone.</li>
{% highlight java %}
Date date = new Date();
SimpleDateFormat utcFormat = new SimpleDateFormat("ddHHmm");
SimpleDateFormat mstFormat = new SimpleDateFormat("ddHHmm");
utcFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
mstFormat.setTimeZone(TimeZone.getTimeZone("America/Phoenix"));
String utc = utcFormat.format(date);
String mst = mstFormat.format(date);
assert !utc.equals(mst);  //should not throw AssertionError
{% endhighlight %}
</ul>

