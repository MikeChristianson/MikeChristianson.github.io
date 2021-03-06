---
layout: post
title: Jetty, embedded servlet container
categories:
- java
tags:
- java
- jetty
- servlet
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
There's no law which states web servers and servlet containers must be large, separate pieces of software.  If there were, <a title="Jetty website" href="http://www.mortbay.org/jetty/">Jetty</a> would be a dangerous outlaw (possibly even public enemy number one).  Jetty is an open-source embeddable web server and servlet container, written in Java.  It's small, fast, and easy to embed -- perfect for self-contained applications.

Let's use an example to discover just how easy embedding Jetty can be.  <!--more-->Say we have two servlets, one should be mapped to `/service/one` and the other `/service/two`, served on port `8080`.

{% highlight java %}
Server server = new Server();
Connector connector = new SelectChannelConnector();
connector.setPort(8080);
server.addConnector(connector);

ContextHandlerCollection contexts = new ContextHandlerCollection();
server.setHandler(contexts);

Context context = new Context(contexts, "/service");
context.addServlet(ServiceOne.class, "/one");
context.addServlet(ServiceTwo.class, "/two");

server.start();
server.join();
{% endhighlight %}

That's it; easy.  For information and more examples on embedding Jetty in your Java application, read <a title="wiki documentation on embedding Jetty" href="http://docs.codehaus.org/display/JETTY/Embedding+Jetty">Embedding Jetty</a>.
