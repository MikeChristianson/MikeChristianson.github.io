---
layout: post
title: Pretty XML from XOM
categories:
- java
tags:
- java
- xml
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
Getting nicely indented XML from <a title="XOM is a &quot;...tree-based API for processing XML with Java that strives for correctness, simplicity, and performance, in that order.&quot;" href="http://xom.nu/">XOM</a> as a String is not intuitive.  One might reasonably expect to try <a title="Javadoc for toXML()" href="http://xom.nu/apidocs/nu/xom/Document.html#toXML()">`document.toXML()`</a> only to find the output lacking indentation.

Here's how I used XOM's <a title="Javadoc for Serializer" href="http://xom.nu/apidocs/nu/xom/Serializer.html">Serializer</a> and Java's <a title="Javadoc for ByteArrayOutputStream" href="http://java.sun.com/javase/6/docs/api/java/io/ByteArrayOutputStream.html">`ByteArrayOutputStream`</a> to produce pretty XML.

{% highlight java %}ByteArrayOutputStream out = new ByteArrayOutputStream();
Serializer serializer = new Serializer(out, "UTF-8");
serializer.setIndent(2);
serializer.write(document);
String xml = out.toString("UTF-8");
{% endhighlight %}
