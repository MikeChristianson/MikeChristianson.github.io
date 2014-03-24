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
If you use <a href="http://subversion.tigris.org/webdav-usage.html">Subversion via Apache/WebDAV</a> and get a message like `Repository moved permanently` or `301 Moved Permanently` you should definitely read the <a href="http://subversion.tigris.org/faq.html#301-error">Subversion FAQ on the `301` issue</a>.

But, don't take its advice too literally... you may indeed have a configuration issue, but not with `DocumentRoot`.  Be sure to check your Apache configuration for any overlapping/conflicting `SVNParentPath` and `Alias` entries!
