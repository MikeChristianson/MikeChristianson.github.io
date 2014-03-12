--- layout: post title: Notes on Java\'s Date class categories: - java tags: - date - java - timezone status: publish type: post published: true meta: \_edit\_last: \'2\' \_wp\_old\_slug: \'\' simplecatch-sidebarlayout: \'\' --- Every so often I get myself confused about Java\'s often-obtuse handling of dates and timezones. So, for my future self\'s benefit, here are some reminder notes... <!--more-->

 Please leave a comment if you have corrections or additional tips! (And, preemptively, yes, some day I\'ll give [Joda Time][1] a try.) * <tt>Date</tt>s do not have timezones; [ they reflect UTC][2].
* [<tt>Date.toString()</tt>][3] returns a <tt>String</tt> representation
  based on the local machine\'s default timezone. This makes people
  think that <tt>Date</tt>s have timezones.
* You cannot convert a <tt>Date</tt> from one timezone to another.
    
    Calendar c = Calendar.getInstance();
    c.setTime(new Date());
    c.setTimeZone(TimeZone.getTimeZone("UTC"));
    Date utc = c.getTime();
    c.setTimeZone(TimeZone.getTimeZone("America/Phoenix"));
    Date mst = c.getTime();
    assert !utc.equals(mst);  //throws AssertionError
{: lang="java5"}

* However, you *can* use <tt>DateFormat</tt> to affect the
  <tt>String</tt> representation of a <tt>Date</tt>, including the
  timezone.
    
    Date date = new Date();
    SimpleDateFormat utcFormat = new SimpleDateFormat("ddHHmm");
    SimpleDateFormat mstFormat = new SimpleDateFormat("ddHHmm");
    utcFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    mstFormat.setTimeZone(TimeZone.getTimeZone("America/Phoenix"));
    String utc = utcFormat.format(date);
    String mst = mstFormat.format(date);
    assert !utc.equals(mst);  //should not throw AssertionError
{: lang="java"}



[1]: http://joda-time.sourceforge.net/
[2]: http://download.oracle.com/javase/6/docs/api/java/util/Date.html
[3]: http://download.oracle.com/javase/6/docs/api/java/util/Date.html#toString()
