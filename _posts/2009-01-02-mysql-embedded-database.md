--- layout: post title: MySQL, embedded database categories: \[\] tags: \[\] status: draft type: post published: false meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- ![](http://dev.mysql.com/common/logos/logo_mysql_sun_a.gif "MySQL/Sun logo"){: .alignleft width="114" height="68"}Continuing with my recent interest in [embedded components](/2008/12/jetty-embedded-servlet-container/ "post on embedding Jetty"), I\'d like to share how you can embed a MySQL database in your Java application using Connector/MXJ.  You might do this if you want programmatic control of MySQL, a pre-configured database, or deployment of MySQL in a cross-platform manner. In my particular case, I wanted to distribute an application with a pre-configured MySQL database capable of deploying on Windows and Linux.  Embedding MySQL in this fashion means my application can start and deploy the database without using OS-specific features like Windows Services. ![](http://dev.mysql.com/common/logos/logo_mysql_sun_b.gif "Sun logo"){: .alignright width="91" height="68"}There are three approaches to embedding -- or, perhaps, more appropriately, wrapping -- MySQL in a Java application with Connector/MXJ: programmatic, DataSource factory, and JMX MBean.  Read on for a couple examples...<!--more-->

## Programmatic (POJO)

 MySQL can be deployed, initialized, and used all within a Java class. `Map<String, String> options = new HashMap<String,String>(3);
options.put(INITIALIZE_USER_NAME, username);
options.put(INITIALIZE_PASSWORD, password);
options.put(INITIALIZE_USER, TRUE.toString());
MysqldResource mysqldResource = new MysqldResource();
mysqldResource.start("mysql-starter", options);` Class.forName(\"com.mysql.jdbc.Driver\"); Connection conn = DriverManager.getConnection(\"jdbc:mysql://localhost/databaseName\", username, password); ## DataSource (JDBC driver and JNDI)

 MySQL can be deployed and initialized from the JDBC URL by adding \'mxj\' Configure JDBC username, password, and the following as appropriate for your particular environment. JDBC Driver: <tt>com.mysql.jdbc.Driver</tt> JDBC URL: <tt>jdbc:mysql:mxj://localhost/databaseName?server.initialize-user=true</tt> JNDI resource: <tt>java:comp/env/jdbc/resourceName</tt> Datasource: <tt>com.mysql.jdbc.jdbc2.optional.MysqlDataSource</tt> `InitialContext ic = new InitialContext();
DataSource ds = ic.lookup("java:comp/env/jdbc/resourceName");
Connection conn = ds.getConnection();`
