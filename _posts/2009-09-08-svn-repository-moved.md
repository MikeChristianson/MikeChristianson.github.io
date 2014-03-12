--- layout: post title: SVN repository moved categories: - subversion tags: - apache - subversion - webdav status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- If you use [Subversion via Apache/WebDAV][1] and get a message like \"<tt>Repository moved permanently</tt>\" or \"<tt>301 Moved Permanently</tt>\" you should definitely read the [Subversion FAQ on the <tt>301</tt> issue][2]. But, don\'t take its advice too literally... you may indeed have a configuration issue, but not with <tt>DocumentRoot</tt>. Be sure to check your Apache configuration for any overlapping/conflicting <tt>SVNParentPath</tt> and <tt>Alias</tt> entries! 

[1]: http://subversion.tigris.org/webdav-usage.html
[2]: http://subversion.tigris.org/faq.html#301-error
