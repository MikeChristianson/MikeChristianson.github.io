--- layout: post title: Using \'watch\' as quick continuous integration categories: - commandline - cygwin - linux - programming tags: - commandline - cygwin - linux - programming status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- Here\'s a quick tip for anyone writing a script without a [REPL][1]\: use [<tt>watch</tt>][2] as a quick continuous integration tool. While writing code in one console, execute the following <tt>watch</tt> command in another: <tt>watch -d -n 5 \"*command*\"</tt> I used this trick while pair-programming an [Io implementation][3] of [Gnome Sort][4] during my last [reading group][5] meeting. My other half thought it was a clever trick and shared it with the group. Then our group leader said I should blog about it. Done! 

[1]: http://en.wikipedia.org/wiki/Read-eval-print_loop
[2]: http://en.wikipedia.org/wiki/Watch_(Unix)
[3]: https://github.com/MikeChristianson/7in7/blob/master/Io/Day-3/gnome.io
[4]: http://en.wikipedia.org/wiki/Gnome_sort
[5]: http://codeaweso.me/2012/07/seven-languages-in-seven-weeks-reading-group/ "Seven Languages in Seven Weeks reading group"
