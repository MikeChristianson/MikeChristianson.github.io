---
layout: post
title: JScience unit formatting
categories:
- java
tags:
- java
- jscience
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
<a title="JScience is a Java library for working with scientific measurements." href="http://jscience.org/">JScience</a> uses Unicode characters in the String representations of some of its Units.  For example, Unicode <a title="U-2103" href="http://www.fileformat.info/info/unicode/char/2103/index.htm">U+2103</a> (℃) is used to represent the unit for degrees Celsius.  Those characters can cause problems with fonts and/or platforms (Windows, typically) which do not contain or recognize them.  Instead, you may see a question mark, box, or other unfamiliar glyph.  Here is the symbol for degrees Celsius again -- ℃ -- can you see it properly?

Using <a title="Javadoc for UnitFormat.label()" href="http://jscience.org/api/javax/measure/unit/UnitFormat.html#label(javax.measure.unit.Unit,%20java.lang.String)">UnitFormat.label()</a>, we can override the String representation to something more compatible, useful, or just different.  Here's how I changed degrees Celsius to be more compatible with my co-workers Windows systems.

<pre lang="java">UnitFormat.getInstance().label(SI.CELSIUS, "\u00B0" + "C");</pre>

And here's how I changed knots to be represented by <tt>kts</tt> instead of the default, <tt>kn</tt>.

<pre lang="java">UnitFormat.getInstance().label(NonSI.KNOT, "kts");</pre>
