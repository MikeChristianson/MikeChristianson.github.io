---
layout: post
title: Shutting down ehcache properly
categories:
- ehcache
- java
tags:
- ehcache
- java
- persistence
- shutdownhook
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
If you're using ehcache's disk persistence feature, which allows the cache to survive across JVM restarts, be sure to <a href="http://ehcache.org/documentation/shutdown.html">shut down ehcache properly</a>.

To do so when using ehcache within a webapp, simply add its <tt>ShutdownListener</tt> as a <tt>listener</tt> in <tt>web.xml</tt>.

<pre lang="xml">
<listener>
    <listener-class>net.sf.ehcache.constructs.web.ShutdownListener</listener-class>
</listener>
</pre>

Alternatively, or when not using ehcache inside a webapp, instruct ehcache to register its own <a href="http://java.sun.com/developer/TechTips/2000/tt0711.html">shutdown hook</a> by setting a system property.

<pre>net.sf.ehcache.enableShutdownHook=true</pre>

If you forget one of the above, your persisted cache may not be up-to-date, or worse, not persisted at all.
