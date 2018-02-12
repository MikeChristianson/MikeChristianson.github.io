---
layout: post
title: Obfuscating a webapp .war file with yGuard and Ant
categories:
- ant
tags:
- ant
- automation
- java
- yguard
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
One way to protect Java software from casual reverse engineering is obfuscation.  Essentially, an obfuscator renames classes, variables, and packages with random/meaningless names.  The application still functions correctly; the decompiled code becomes difficult to read.

There are quite a few obfuscators for Java -- at least a dozen when I looked -- most of which are easily used from an Ant script.  

For my use I selected one with a ready-to-use Ant task: <a href="http://www.yworks.com/en/products_yguard_about.html">yGuard</a>.  Unfortunately, yGuard operates on .jar files only, not individual .class files or webapp .war files.  Thus, I have written my own Ant script which uses yGuard and built-in Ant tasks to obfuscate .war files.<!--more-->

<p class="notice"><em>Update 2009-12-11</em>: If I had to do it over again, I would obfuscate my classes/jars before creating the .war file.</p>

Before you try using my Ant script, read <a href="http://www.yworks.com/products/yguard/yguard_ant_howto.html">yGuard's documentation</a> and be sure you fully understand how it works.  You should pay special attention to the <a href="http://www.yworks.com/products/yguard/yguard_ant_howto.html#inoutpairs">inoutpairs</a>, <a href="http://www.yworks.com/products/yguard/yguard_ant_howto.html#keep">keep</a>, and <a href="http://www.yworks.com/products/yguard/yguard_ant_howto.html#hints">hints and troubleshooting</a> sections.

{% highlight xml %}
<!-- prepare a temporary directory in which the war file is expanded and obfuscated -->
<tempfile property="unwar.dir" destdir="${java.io.tmpdir}" deleteonexit="yes"/>
<mkdir dir="${unwar.dir}"/>
<unwar src="webapp.war" dest="${unwar.dir}"/>

<!-- create a jar of webapp classes (required by yguard) for obfuscation -->
<jar destfile="${unwar.dir}/WEB-INF/lib/webapp.jar" whenempty="fail">
    <zipfileset dir="${unwar.dir}/WEB-INF/classes"/>
</jar>
<delete dir="${unwar.dir}/WEB-INF/classes"/>

<!-- create a fileset of internal libraries to be obfuscated -->
<fileset dir="${unwar.dir}/WEB-INF/lib" id="internal.lib.set">
    <include name="myLibrary.jar"/>
    <include name="myOtherLibrary.jar"/>
</fileset>

<!-- move the internal libraries to a temporary directory and make a fileset out of them -->
<tempfile property="obfuscation.dir" destDir="${java.io.tmpdir}" deleteonexit="yes"/>
<mkdir dir="${obfuscation.dir}"/>
<move todir="${obfuscation.dir}">
    <fileset refid="internal.lib.set"/>
</move>

<!-- create a jar of web.xml (required by yguard) for obfuscation -->
<jar destfile="${obfuscation.dir}/web.xml.jar" whenempty="fail">
    <zipfileset dir="${unwar.dir}/WEB-INF" includes="web.xml"/>
</jar>
<delete file="${unwar.dir}/WEB-INF/web.xml"/>

<!-- make a fileset of all jars to be obfuscated -->
<fileset dir="${obfuscation.dir}" includes="*.jar" id="in-out.set"/>

<!-- make a fileset of the remaining libraries, these are not obfuscated -->
<path id="external.lib.path">
    <fileset dir="${unwar.dir}/WEB-INF/lib" includes="*.jar"/>
</path>

<taskdef name="yguard"
    classname="com.yworks.yguard.YGuardTask"
    classpath="yguard.jar"/>

<yguard>
    <inoutpairs>
        <!-- these filesets are inputs to be obfuscated -->
        <fileset refid="in-out.set"/>
    </inoutpairs>
    <externalclasses refid="external.lib.path"/>  <!-- external libs, not obfuscated -->
    <rename>
        <adjust replaceContent="true">
            <include name="web.xml"/>  <!-- modified to reference the obfuscated Servlet -->
        </adjust>
        <keep>
            <!-- classes, packages, methods, and fields which should not obfuscated are specified here -->
        </keep>
    </rename>
</yguard>

<!-- move our newly obfuscated classes back into the lib area -->
<move todir="${unwar.dir}/WEB-INF/lib">
    <fileset dir="${obfuscation.dir}" includes="*_obf.jar"/>
</move>

<!-- unjar the adjusted web.xml --> 
<unzip dest="${unwar.dir}/WEB-INF/" src="${unwar.dir}/WEB-INF/lib/web.xml_obf.jar">
    <patternset includes="web.xml"/>
</unzip>
<delete>
    <fileset dir="${unwar.dir}/WEB-INF/lib" includes="web.xml*.jar"/>
</delete>

<!-- rebuild the war file -->
<war destfile="webapp_obf.war" basedir="${unwar.dir}"/>
{% endhighlight %}

<a href="http://www.yworks.com/">yWorks</a>, the creator of yGuard, is perhaps best known for <a href="http://www.yworks.com/en/products_ydoc.html">yDoc a UML diagram generator for JavaDocs</a>.
