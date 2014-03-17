---
layout: post
title: SVN repository moved
categories:
- subversion
tags:
- apache
- subversion
- webdav
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
If you use <a href="http://subversion.tigris.org/webdav-usage.html">Subversion via Apache/WebDAV</a> and get a message like "<tt>Repository moved permanently</tt>" or "<tt>301 Moved Permanently</tt>" you should definitely read the <a href="http://subversion.tigris.org/faq.html#301-error">Subversion FAQ on the <tt>301</tt> issue</a>.

But, don't take its advice too literally... you may indeed have a configuration issue, but not with <tt>DocumentRoot</tt>.  Be sure to check your Apache configuration for any overlapping/conflicting <tt>SVNParentPath</tt> and <tt>Alias</tt> entries!
