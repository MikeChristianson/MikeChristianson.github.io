--- layout: post title: Better consoles for cygwin shells categories: - cygwin tags: - commandline - cygwin status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- *2011-Nov-24*\: Exciting news! [mintty is now the default cygwin shell][1]. > …mintty has become part of the default installation, setup will create
> desktop and start menu shortcuts called \"Cygwin Terminal\", which
> point to mintty, starting your default shell as noted in /etc/passwd.

 Let\'s face it, cygwin is neat but the console (or, terminal emulator, if you prefer) it launches is *lame*. I\'m not referring to bash, but rather the normal -- and thus lame -- Windows command box. Things just don\'t feel right... some keys don\'t work as expected and forget about making the window wider. Fortunately, there is a better way! Rather, I should say there are better way*s*\: [puttycyg][2],&nbsp;[Console2][3], and my personal favorite,&nbsp;[mintty][4]. [![](http://www.smugmug.com/photos/770506088_uoPhz-S.png "mintty screenshot"){: .aligncenter width="400" height="269"}][5] [puttycyg][2] is a patched version of [putty][6] with support for cygwin. [mintty][4] is ... well, yeah, it\'s based on putty, too. If you use cygwin, you owe it to yourself to try one or all of them immediately. And by that I mean stop reading and start downloading. Now. 

[1]: http://cygwin.com/ml/cygwin-announce/2011-11/msg00043.html
[2]: http://code.google.com/p/puttycyg/
[3]: http://sourceforge.net/projects/console/
[4]: http://cygwin.com/cgi-bin2/package-grep.cgi?grep=mintty
[5]: http://www.smugmug.com/photos/770506088_uoPhz-L.png
[6]: http://www.chiark.greenend.org.uk/~sgtatham/putty/
