---
layout: post
title: Jetty browser cache control
categories:
- jetty
tags:
- cache
- jetty
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
Do you use Jetty and need to change the default setting for browser <a href="http://tools.ietf.org/html/rfc2616#section-14.9">cache control</a>?  Have a look at the `init-param` element named `cacheControl` in `webdefault.xml`.

Here's the default configuration for the version of Jetty I use.  Note the element is commented.

{% highlight xml %}
<!--
<init-param>
      <param-name>cacheControl</param-name>
      <param-value>max-age=3600,public</param-value>
</init-param>
-->
{% endhighlight %}

To enable and configure browser cache control, uncomment and edit the `param-value` as appropriate.  The following example instructs the browser to disable all caching.

{% highlight xml %}
<init-param>
      <param-name>cacheControl</param-name>
      <param-value>no-store,no-cache,must-revalidate</param-value>
</init-param>
{% endhighlight %}

For information on `Cache-Control`, see <a href="http://tools.ietf.org/html/rfc2616#section-14.9">RFC 2616, Section 14.9</a>.
