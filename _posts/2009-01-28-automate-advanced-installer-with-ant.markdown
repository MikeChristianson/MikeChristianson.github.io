---
layout: post
title: Automate Advanced Installer with Ant
categories:
- ant
tags:
- advancedinstaller
- ant
- automation
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
Note: this post was updated in light of <a href="http://www.advancedinstaller.com/forums/viewtopic.php?f=2&t=8586">discussion on the Advanced Installer forum</a>.

At work, we use <a href="http://www.advancedinstaller.com/">Advanced Installer</a> to create easy-to-use Windows installers for internal and external customers.  I wrote a short Ant script for building the installer to save time and minimize mistakes.

<p class="notice">
<em>If you use Advanced Installer with your Java projects, be sure to read my post on <a href="/2009/02/use-advanced-installer-licensing-within-a-java-application/">using the Advanced Installer licensing feature within a Java application</a>.</em>
</p>

Here is a partial Ant script for executing Advanced Installer builds.  It's not fancy, but it gets the job done.<!--more-->  Notice the script has two parts -- one for setting the version number of the product and another for doing the actual build.

{% highlight xml %}
<property name="installer.command" location="C:/Caphyon/Advanced Installer/AdvancedInstaller.com"/>
<property name="filename" location="C:/build/product.aip"/>

<exec executable="${installer.command}" failonerror="yes">
    <arg value="/edit"/>
    <arg value="${filename}"/>
    <arg value="/SetVersion"/>
    <arg value="${installerVersion}"/>
</exec>

<exec executable="${installer.command}" failonerror="yes">
    <arg value="/build"/>
    <arg value="${filename}"/>
</exec>
{% endhighlight %}

In the next snippet, which should be executed first, I've made the version number dynamic based on the current time, day, and month (but not year)!  (The pattern may seem a little odd; it conforms to <a href="http://msdn.microsoft.com/en-us/library/aa370859.aspx">what Windows Installer expects</a>.)  Of course, this is completely optional and can be overridden using <a href="http://ant.apache.org/manual/running.html">Ant command-line properties</a>.

{% highlight xml %}
<tstamp>
    <format property="installerVersion" pattern="MM.dd.HHmm"/>
</tstamp>
{% endhighlight %}

When this script is combined with continuous integration, we have a repeatable, consistent, fully automated build of our software and its installer.  And that rocks.
