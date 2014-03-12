--- layout: post title: Jetty browser cache control categories: - jetty tags: - cache - jetty status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- Do you use Jetty and need to change the default setting for browser [cache control][1]? Have a look at the <tt>init-param</tt> element named <tt>cacheControl</tt> in <tt>webdefault.xml</tt>. Here\'s the default configuration for the version of Jetty I use. Note the element is commented. 
{: lang="xml"}

 To enable and configure browser cache control, uncomment and edit the <tt>param-value</tt> as appropriate. The following example instructs the browser to disable all caching.     
    
          cacheControl
          no-store,no-cache,must-revalidate
{: lang="xml"}

 For information on <tt>Cache-Control</tt>, see [RFC 2616, Section 14.9][1]. 

[1]: http://tools.ietf.org/html/rfc2616#section-14.9
