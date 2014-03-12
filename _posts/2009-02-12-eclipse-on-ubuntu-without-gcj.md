--- layout: post title: Eclipse on Ubuntu without GCJ categories: - eclipse tags: - eclipse - gcj - ubuntu status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- [![eclipse](/mike/blog/wp-content/uploads/2009/02/eclipse-150x97.png "eclipse"){: width="150" height="97" .alignright .size-thumbnail .wp-image-212}][1]Software packages from Ubuntu repositories can have some interesting and problematic dependencies. One such example is [Ubuntu\'s dependency on GCJ for Ant](/2009/01/ant-on-ubuntu-without-gcj/). Ubuntu\'s Eclipse package also depends on GCJ. If you wish to avoid this dependency, simply download the appropriate binary distribution from the [Eclipse download site][1], extract to the location of your choice, and run Eclipse. Before using Eclipse, be sure you have Sun\'s JRE [installed and
configured as the default JRE](/2008/11/java-6-update-10-is-available/).
{: style="border: thin dashed;"}



[1]: http://www.eclipse.org/downloads/
