---
layout: post
title: Eclipse on Ubuntu without GCJ
categories:
- eclipse
tags:
- eclipse
- gcj
- ubuntu
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
Software packages from Ubuntu repositories can have some interesting and problematic dependencies.  One such example is <a href="/2009/01/ant-on-ubuntu-without-gcj/">Ubuntu's dependency on GCJ for Ant</a>.

Ubuntu's Eclipse package also depends on GCJ.  If you wish to avoid this dependency, simply download the appropriate binary distribution from the <a href="http://www.eclipse.org/downloads/">Eclipse download site</a>, extract to the location of your choice, and run Eclipse.

<p class="notice">Before using Eclipse, be sure you have Sun's JRE <a href="/2008/11/java-6-update-10-is-available/">installed and configured as the default JRE</a>.</p>
