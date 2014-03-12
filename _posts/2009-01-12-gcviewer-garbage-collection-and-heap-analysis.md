--- layout: post title: GCViewer, garbage collection and heap analysis tool categories: - java tags: - garbagecollection - gcviewer - java - tool status: publish type: post published: true meta: \_edit\_last: \'2\' \_wpas\_skip\_2141692: \'1\' \_wpas\_skip\_2141647: \'1\' \_wpas\_skip\_2141747: \'1\' simplecatch-sidebarlayout: \'\' --- Jörg Wüthrich [forked GCViewer][1] in 2011 and has added support for
Java 1.6 and 1.7 (including the new G1 collector). Tagtraum stopped
improving its original version in 2008.
{: style="border: thin dashed;"}

 \[caption id=\"\" align=\"alignright\" width=\"400\"\][![](http://www.smugmug.com/photos/i-MzC4FrR/0/S/i-MzC4FrR-S.png){:  width="400" height="296"}][2] GCViewer\[/caption\] One month ago I wrote about the benefits of using [Java\'s built-in garbage collection logging][3].&nbsp; With it, you can find answers to important important questions such as \"how much memory is my app using\" and \"how much time is being spent doing garbage collection.\" There is, of course, a hitch: for any non-trivial application or problem, you will be quickly buried by a mountainous log file.&nbsp; The longer your application runs, the larger the log file.&nbsp; It keeps growing, and growing, and... What will you do?&nbsp; Write a second Java app, one that parses the log file -- attempt a homegrown analysis tool?&nbsp; No!&nbsp; Instead, I suggest you use [GCViewer][1], a free open-source tool for visualizing the [Java gc log file][3]. [GCViewer][1] helps you get a quick and comprehensive look at how your application is behaving.&nbsp; Things like total heap vs. heap used and full GC events become very apparent.&nbsp; Useful statistics such as time spent during GC are calculated for your convenience. GCViewer is a fork by Jörg Wüthrich and is available under an [LGPL][4] license. 

[1]: https://github.com/chewiebug/GCViewer
[2]: http://www.smugmug.com/photos/i-MzC4FrR/0/X3/i-MzC4FrR-X3.png
[3]: http://codeaweso.me/2008/12/java-garbage-collection-logging/ "Java garbage collection logging"
[4]: http://www.gnu.org/licenses/lgpl.html
