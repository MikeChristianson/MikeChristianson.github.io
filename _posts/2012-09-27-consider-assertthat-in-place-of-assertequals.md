--- layout: post title: Consider assertThat() in place of assertEquals() categories: - java - junit tags: - java - junit status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- [JUnit 4.4 added a new assertion mechanism][1] with the method <tt>assertThat()</tt>. Have a look and consider using it in place of <tt>assertEquals()</tt>.     
    assertThat(result, is(42));
{: lang="java"}

    
    assertThat(output, containsString("foo"));
{: lang="java"}



[1]: http://junit.sourceforge.net/doc/ReleaseNotes4.4.html
