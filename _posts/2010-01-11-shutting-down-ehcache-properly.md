--- layout: post title: Shutting down ehcache properly categories: - ehcache - java tags: - ehcache - java - persistence - shutdownhook status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- If you\'re using ehcache\'s disk persistence feature, which allows the cache to survive across JVM restarts, be sure to [shut down ehcache properly][1]. To do so when using ehcache within a webapp, simply add its <tt>ShutdownListener</tt> as a <tt>listener</tt> in <tt>web.xml</tt>.     
    
        net.sf.ehcache.constructs.web.ShutdownListener
{: lang="xml"}

 Alternatively, or when not using ehcache inside a webapp, instruct ehcache to register its own [shutdown hook][2] by setting a system property.     net.sf.ehcache.enableShutdownHook=true

 If you forget one of the above, your persisted cache may not be up-to-date, or worse, not persisted at all. 

[1]: http://ehcache.org/documentation/shutdown.html
[2]: http://java.sun.com/developer/TechTips/2000/tt0711.html
