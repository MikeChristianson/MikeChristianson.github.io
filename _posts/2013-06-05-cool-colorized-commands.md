--- layout: post title: Cool colorized commands categories: \[\] tags: \[\] status: publish type: post published: true meta: \_edit\_last: \'2\' \_wpas\_done\_all: \'1\' simplecatch-sidebarlayout: \'\' --- \[caption id=\"\" align=\"alignright\" width=\"363\"\]![](http://www.smugmug.com/photos/i-F7PQb7L/1/L/i-F7PQb7L-L.png){:  width="363" height="311"} svn diff … \| colordiff \| less -R\[/caption\] Add a little color to your life and be happy. Retain grep highlighting when piping through less: `grep --color=always | less -R` Colorize svn status output: [http://colorsvn.tigris.org][1] `svn status | colorsvn` Colorize your diffs: [http://colordiff.org][2] `diff | colordiff` Colorize your svn diffs: `svn diff | colordiff | less -R` Cross-posted at [coderwall.com][3]. 

[1]: http://colorsvn.tigris.org
[2]: http://colordiff.org
[3]: https://coderwall.com/p/oa17pq
