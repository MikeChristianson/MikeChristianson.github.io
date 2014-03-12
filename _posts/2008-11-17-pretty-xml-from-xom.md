--- layout: post title: Pretty XML from XOM categories: - java tags: - java - xml status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- Getting nicely indented XML from [XOM][1] as a String is not intuitive. One might reasonably expect to try [<tt>document.toXML()</tt>][2] only to find the output lacking indentation. Here\'s how I used XOM\'s [Serializer][3] and Java\'s [<tt>ByteArrayOutputStream</tt>][4] to produce pretty XML.     ByteArrayOutputStream out = new ByteArrayOutputStream();
    Serializer serializer = new Serializer(out, "UTF-8");
    serializer.setIndent(2);
    serializer.write(document);
    String xml = out.toString("UTF-8");
{: lang="java" line="1"}



[1]: http://xom.nu/ "XOM is a &quot;...tree-based API for processing XML with Java that strives for correctness, simplicity, and performance, in that order.&quot;"
[2]: http://xom.nu/apidocs/nu/xom/Document.html#toXML() "Javadoc for toXML()"
[3]: http://xom.nu/apidocs/nu/xom/Serializer.html "Javadoc for Serializer"
[4]: http://java.sun.com/javase/6/docs/api/java/io/ByteArrayOutputStream.html "Javadoc for ByteArrayOutputStream"
