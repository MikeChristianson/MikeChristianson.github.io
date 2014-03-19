---
layout: post
title: Problems with Eclipse 3.6 Helios plugins on Windows 7
categories:
- eclipse
tags:
- eclipse
- plugin
- windows7
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  _wp_old_slug: ''
  simplecatch-sidebarlayout: ''
---
<img alt="" src="http://eclipse.org/eclipse.org-common/themes/Nova/images/eclipse.png" title="eclipse logo" class="alignright" width="171" height="91" />I like to stay up-to-date with the latest Eclipse releases, often times using release candidates weeks before an actual release.  The Eclipse release candidates, generally speaking, are top-notch and free of problems.  So I was very surprised to discover a major problem with the 3.6 release almost immediately.

<h1>the problem</h1>
The problem was this: plugins did not appear to work.  I dutifully installed my standard plugin set using the Update Manager but discovered no evidence of the effort after a restart.  <a href="http://subclipse.tigris.org/">Subclipse</a>?  Missing.  <a href="http://www.mousefeed.com/">Mousefeed</a>? <a href="http://findbugs.sourceforge.net/">FindBugs</a>?  <a href="http://www.nwiresoftware.com/products/nwire-java">nWire</a>?  Missing!<!--more-->

(Want to <a href="#solution">skip to the solution</a> without reading more?)

<tt>Help > About > Installation Details</tt> showed they were installed but none were shown on <tt>Features</tt> or <tt>Plug-ins</tt> tabs.  Apparently <em>installed</em> doesn't mean <em>installed</em> in the typical sense of the word.  

<h1>troubleshooting</h1>
<ul>
	<li>starting eclipse with <tt>-clean</tt> didn't seem to help</li>
	<li>starting eclipse with <tt>-consoleLog -debug</tt> didn't turn up anything</li>
	<li>starting eclipse with <tt>-console</tt> and using the <tt>ss</tt> command on the osgi console did not turn up the wayward plugins</li>
</ul>

<h1>peer support via IRC</h1>
Misery loves company, as they say, so I went to <tt>#eclipse</tt> on IRC.  After sharing my troubles and troubleshooting, a person with the nick <tt>paulweb515_</tt> began helping me.

At this point, I determined my plugins were being installed in <tt>~/.eclipse/.../features/</tt> and <tt>~/.eclipse/.../plugins/</tt>.  Huh?  What is this?  Apparently that's a feature of Eclipse.  But I'm getting ahead of myself...

While in <tt>#eclipse</tt> I did some more extensive Google searching and turned up a bug report, titled <em><a href="https://bugs.eclipse.org/bugs/show_bug.cgi?format=multiple&id=317896">Plugins install, but do not work</a></em>, which seemed to mirror my problem.

The bug report indicated that Eclipse places plugins and features in <tt>~/.eclipse/</tt> when the user does not have sufficient permission for the eclipse program directory itself.  As I wrote before, apparently that's a feature.  But, still, my plugins weren't working!  

<h1 id="solution">the solution</h1>
My solution, then, is to install Eclipse in a location where the user has full rights.  For Windows 7 users, a good location might be under the user's home directory (<tt>%USERPROFILE%</tt>).  Alternatively, the user could be granted full control of the Eclipse program directory.

While I'm glad my Eclipse is back to normal, I'm still disappointed in the amount of time wasted on the problem.  And, unfortunately, I've not been able to determine if this <tt>~/.eclipse/</tt> feature is broken or if something else is going sideways.

<strong>Update</strong>: Looks like the <a href="http://blog.zvikico.com/2010/08/eclipse-plugin-installation-and-windows-user-access-control.html">author of nWire has posted</a> about this issue.