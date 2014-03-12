--- layout: post title: Jetty, embedded servlet container categories: - java tags: - java - jetty - servlet status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- There\'s no law which states web servers and servlet containers must be large, separate pieces of software.  If there were, [Jetty][1] would be a dangerous outlaw (possibly even public enemy number one).  Jetty is an open-source embeddable web server and servlet container, written in Java.  It\'s small, fast, and easy to embed -- perfect for self-contained applications. Let\'s use an example to discover just how easy embedding Jetty can be.  <!--more-->

Say we have two servlets, one should be mapped to <tt>/service/one</tt> and the other <tt>/service/two</tt>, served on port <tt>8080</tt>.     
    Server server = new Server();
    Connector connector = new SelectChannelConnector();
    connector.setPort(8080);
    server.addConnector(connector);
    
    ContextHandlerCollection contexts = new ContextHandlerCollection();
    server.setHandler(contexts);
    
    Context context = new Context(contexts, "/service");
    context.addServlet(ServiceOne.class, "/one");
    context.addServlet(ServiceTwo.class, "/two");
    
    server.start();
    server.join();
{: lang="java" line="1"}

 That\'s it; easy.  For information and more examples on embedding Jetty in your Java application, read [Embedding Jetty][2]. 

[1]: http://www.mortbay.org/jetty/ "Jetty website"
[2]: http://docs.codehaus.org/display/JETTY/Embedding+Jetty "wiki documentation on embedding Jetty"
