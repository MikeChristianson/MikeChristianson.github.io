---
layout: post
title: Your programming language sucks?
categories:
- java
tags:
- java
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  _wpas_skip_2141692: '1'
  _wpas_skip_2141647: '1'
  _wpas_skip_2141747: '1'
  simplecatch-sidebarlayout: ''
---
<em><strong>Update 2012-June-20</strong></em>: Please also read my follow-up post,&nbsp;<em><a title="Revisited: Your programming language sucks?" href="http://codeaweso.me/2012/06/revisited-your-programming-language-sucks/">Revisited: Your programming language sucks</a>?</em>

I met someone recently that declared "Java sucks." One proffered argument of that "suckiness" was Java's lack of expressiveness. In point: you can't compare two `<a href="http://docs.oracle.com/javase/7/docs/api/java/util/Date.html">Date</a>` objects with the less or greater -than operators. Further, you can't <a href="http://c2.com/cgi/wiki?OperatorOverloading">override the operators</a> themselves. (I won't touch that subject; we covered it in Computer Science 201.)
{% highlight java %}Date now = new Date();
Date epoch = new Date(0);
assert now > epoch; //won't compile{% endhighlight %}
Nope, that won't compile. What are we to do?
{% highlight java %}assert now.after(epoch);{% endhighlight %}
There, that works. But what if we really, <em>desperately</em> wanted to use operators?
{% highlight java %}assert now.getTime() > epoch.getTime();{% endhighlight %}
Both of these seem perfectly expressive to me. Much ado about nothing? I think it's a matter of comfort and familiarity.

Saying a programming language "sucks" says less about the language and more about the person speaking.
