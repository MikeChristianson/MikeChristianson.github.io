--- layout: post title: Generic socket server for testing categories: - commandline - cygwin - linux tags: - commandline - socat status: publish type: post published: true meta: \_edit\_last: \'2\' \_wp\_old\_slug: \'\' simplecatch-sidebarlayout: \'\' --- Here\'s a useful one-liner for running a generic socket server. I came up with this [socat][1]-based alternative to writing my own for testing client output. It listens on port <tt>4096</tt>, accepts TCP/IP connections, and prints input received to <tt>stdout</tt>.     socat TCP-L:4096,fork -

 <tt>[Socat][1]</tt> is quite powerful, be sure to read more about what it can do. **2011-July-08**\: My coworker has a great post showing how <tt>socat</tt> can [pipe data from a serial port to a socket][2]! 

[1]: http://www.dest-unreach.org/socat/
[2]: http://dollopofdesi.blogspot.com/2011/07/routing-serial-data-to-socket.html
