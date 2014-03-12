--- layout: post title: Java garbage collection logging categories: - java tags: - garbagecollection - java - performance status: publish type: post published: true meta: \_edit\_last: \'2\' \_wpas\_skip\_2141692: \'1\' \_wpas\_skip\_2141647: \'1\' \_wpas\_skip\_2141747: \'1\' simplecatch-sidebarlayout: \'\' --- *This article is four years old! The world of Java garbage collection
has changed a bit. Please keep that in mind when reading. You may also
wish to watch a talk on [garbage collection by Ben Evans][1]* at
DevNexus 2013.
{: style="border: thin dashed;"}

 Java\'s built-in garbage collection logging provides a quick, easy, and *free* way to profile or troubleshoot your Java application.&nbsp; It can help you understand your application in terms of: * memory usage (object count and size)
* heap size (initial and over time)
* GC metrics (frequency, pause time, and amount freed)

 So, now you can answer questions like \"how much memory is my app using,\" \"how much time is being spent doing garbage collection,\" and \"how big is the heap over time.\" For help analyzing and visualizing a GC log file, be sure to check out [GCViewer, a garbage collection and heap analysis tool][2]. GC logging is enabled using JVM arguments; below are the arguments I use. <!--more-->

(Note: the log file specified as *file* is reset each time the VM starts.) `-verbose:gc -Xloggc:file` Dan Evans, in his [garbage collection talk at DevNexus 2013][1],
recommends the following GC flags in addition to the above.
`-XX:+PrintGCDetails -XX:+PrintTenuringDistribution`
{: style="border: thin dashed;"}

 Here\'s an example GC log file which shows three GC events including one full GC.     [GC 19062K->7172K(60800K), 0.0087190 secs]
    [GC 9346K->7525K(60800K), 0.0052810 secs]
    [Full GC 7525K->7477K(60800K), 0.0615190 secs]

 In the first event, garbage collection takes just under nine thousandths of a second to collect 11,890K memory used by objects (19,062K to 7,172K) while the heap is 60,800K.&nbsp; The last event is a full GC lasting just over six hundredths of a second to free up 48K with no change in the heap. Data like this can be invaluable in saving one\'s sanity or ending arguments! For further details on garbage collection, see Oracle\'s&nbsp;[GC Portal][3] and [Virtual Machine Garbage Collection Tuning][4] documentation. 

[1]: http://www.infoq.com/presentations/Visualizing-Java-GC
[2]: http://codeaweso.me/2009/01/gcviewer-garbage-collection-and-heap-analysis/ "GCViewer, garbage collection and heap analysis tool"
[3]: http://www.oracle.com/technetwork/articles/javase/gcportal-136937.html "article on GC Portal"
[4]: http://www.oracle.com/technetwork/java/javase/gc-tuning-6-140523.html "doc on GC tuning"
