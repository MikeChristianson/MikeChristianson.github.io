---
layout: post
title: Global unique identifiers in Java, the easy way
categories:
- java
tags: []
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
A recent attempt at creating a unique identifier at work was shot down in flames by Findbugs. My naïve attempt wasn't very thoughtful but seemed to work.
{% highlight java %}Integer.toString(Math.abs(random.nextInt())){% endhighlight %}
Findbugs indicated there was a possibility that I might end up with a negative value even though I "cleverly" used `Math.abs()`.
<blockquote>RV: Bad attempt to compute absolute value of signed random integer <a href="http://findbugs.sourceforge.net/bugDescriptions.html#RV_ABSOLUTE_VALUE_OF_RANDOM_INT">(RV_ABSOLUTE_VALUE_OF_RANDOM_INT)</a>

If the number returned by the random number generator is Integer.MIN_VALUE, then the result will be negative as well</blockquote>
Even though I didn't need this random id to be perfect -- the unintended side-effect wasn't a technical problem since I used it as a String -- I still wanted to fix it. Stackoverflow to the rescue.

A <a href="http://stackoverflow.com/questions/7567350/findbugs-rv-absolute-value-of-random-int-warning">question-and-answer from Stackoverflow</a> pointed the way to the solution: <a href="http://download.oracle.com/javase/6/docs/api/java/util/UUID.html">`java.util.UUID`</a>. Somehow, I missed that Sun had added Java's own universally unique identifier (UUID) generator in Java 1.5.

In the end, I happily replaced my homemade id generator with Java's.
{% highlight java %}UUID.randomUUID().toString(){% endhighlight %}
The output of which is something like `1c312843-8903-411f-88b2-ff1b92ca80ba`.

<em>Cross-posted at <a href="http://java.dzone.com/articles/global-unique-identifiers-java">http://java.dzone.com/articles/global-unique-identifiers-java</a>.</em>
