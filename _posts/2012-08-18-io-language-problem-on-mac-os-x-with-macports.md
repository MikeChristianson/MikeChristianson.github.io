--- layout: post title: Io Language problem on Mac OS X with MacPorts categories: - mac - programming tags: - io language - mac - programming status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- This week in [Seven Languages in Seven Weeks][1] brings the [Io Language][2]. Installing the binaries is, of course, the first task in beginning to use the language. However, I\'m not off to a roaring start just yet. After installing the binaries using the [Mac package installer][3], I find that the `io` binary is not found.     
    $ io
    -bash: io: command not found
{: lang="text"}

<!--more-->

 Let\'s try this…     
    $ /usr/local/bin/io
    bash: /usr/local/bin/io: Permission denied
{: lang="text"}

 Hmmm… it is there, but I can\'t access it… let\'s look closer.     
    $ ls -l /usr/local
    total 0
    drwx------ 17 macports wheel 578 Aug 18 11:08 bin
{: lang="text"}

 Well, that explains it. For some reason, [MacPorts][4] set up `/usr/local/bin/` with very restrictive permissions. And, apparently, I\'m not the only one to run into this problem: * [http://tips4all.net/macports-sets-permissions-incorrectly.html][5]
* [http://echelog.com/logs/browse/macports/1335477600][6] (search for
  \[03:31:09\])

 Let\'s fix it with chmod.     
    chmod a+x /usr/local/bin/
{: lang="bash"}

 It works!     
    $ io
    Io 20110905
    Io> 
{: lang="io"}

 Thanks to [Jake Peck][7], creator of the Io binary installers, for his assistance in solving this little mystery. Now, on to the fun stuff… 

[1]: http://codeaweso.me/2012/07/seven-languages-in-seven-weeks-reading-group/ "Seven Languages in Seven Weeks reading group"
[2]: http://iolanguage.com/
[3]: http://iobin.suspended-chord.info/mac/iobin-mac-current.zip
[4]: http://www.macports.org/
[5]: http://tips4all.net/macports-sets-permissions-incorrectly.html
[6]: http://echelog.com/logs/browse/macports/1335477600
[7]: http://iobin.suspended-chord.info/
