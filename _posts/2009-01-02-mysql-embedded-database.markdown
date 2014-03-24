---
layout: post
title: MySQL, embedded database
categories: []
tags: []
status: draft
type: post
published: false
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
<img style="float: right; margin-left: 1em;" title="MySQL/Sun logo" src="http://dev.mysql.com/common/logos/logo_mysql_sun_a.gif" alt="" width="114" height="68" />Continuing with my recent interest in <a title="post on embedding Jetty" href="/2008/12/jetty-embedded-servlet-container/">embedded components</a>, I'd like to share how you can embed a MySQL database in your Java application using Connector/MXJ.  You might do this if you want programmatic control of MySQL, a pre-configured database, or deployment of MySQL in a cross-platform manner.

In my particular case, I wanted to distribute an application with a pre-configured MySQL database capable of deploying on Windows and Linux.  Embedding MySQL in this fashion means my application can start and deploy the database without using OS-specific features like Windows Services.

<img style="float: right; margin-left: 1em;" title="Sun logo" src="http://dev.mysql.com/common/logos/logo_mysql_sun_b.gif" alt="" width="91" height="68" />There are three approaches to embedding -- or, perhaps, more appropriately, wrapping -- MySQL in a Java application with Connector/MXJ: programmatic, DataSource factory, and JMX MBean.  Read on for a couple examples...<!--more-->
<h2>Programmatic (POJO)</h2>
MySQL can be deployed, initialized, and used all within a Java class.

`Map&lt;String, String&gt; options = new HashMap&lt;String,String&gt;(3);
options.put(INITIALIZE_USER_NAME, username);
options.put(INITIALIZE_PASSWORD, password);
options.put(INITIALIZE_USER, TRUE.toString());
MysqldResource mysqldResource = new MysqldResource();
mysqldResource.start("mysql-starter", options);`

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/databaseName", username, password);
<h2>DataSource (JDBC driver and JNDI)</h2>
MySQL can be deployed and initialized from the JDBC URL by adding 'mxj'

Configure JDBC username, password, and the following as appropriate for your particular environment.
JDBC Driver: `com.mysql.jdbc.Driver`
JDBC URL: `jdbc:mysql:mxj://localhost/databaseName?server.initialize-user=true`
JNDI resource: `java:comp/env/jdbc/resourceName`
Datasource: `com.mysql.jdbc.jdbc2.optional.MysqlDataSource`

`InitialContext ic = new InitialContext();
DataSource ds = ic.lookup("java:comp/env/jdbc/resourceName");
Connection conn = ds.getConnection();`
