--- layout: post title: JScience unit formatting categories: - java tags: - java - jscience status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- [JScience][1] uses Unicode characters in the String representations of some of its Units.  For example, Unicode [U+2103][2] (℃) is used to represent the unit for degrees Celsius.  Those characters can cause problems with fonts and/or platforms (Windows, typically) which do not contain or recognize them.  Instead, you may see a question mark, box, or other unfamiliar glyph.  Here is the symbol for degrees Celsius again -- ℃ -- can you see it properly? Using [UnitFormat.label()][3], we can override the String representation to something more compatible, useful, or just different.  Here\'s how I changed degrees Celsius to be more compatible with my co-workers Windows systems.     UnitFormat.getInstance().label(SI.CELSIUS, "\u00B0" + "C");
{: lang="java"}

 And here\'s how I changed knots to be represented by <tt>kts</tt> instead of the default, <tt>kn</tt>.     UnitFormat.getInstance().label(NonSI.KNOT, "kts");
{: lang="java"}



[1]: http://jscience.org/ "JScience is a Java library for working with scientific measurements."
[2]: http://www.fileformat.info/info/unicode/char/2103/index.htm "U-2103"
[3]: http://jscience.org/api/javax/measure/unit/UnitFormat.html#label(javax.measure.unit.Unit,%20java.lang.String) "Javadoc for UnitFormat.label()"
