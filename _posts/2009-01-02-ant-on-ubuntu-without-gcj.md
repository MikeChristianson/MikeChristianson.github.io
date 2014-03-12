--- layout: post title: Ant on Ubuntu without GCJ categories: - ant - eclipse tags: - ant - gcj - java - ubuntu status: publish type: post published: true meta: \_edit\_last: \'2\' \_wp\_old\_slug: ant-on-ubuntu simplecatch-sidebarlayout: \'\' --- [![](/mike/blog/wp-content/uploads/2009/01/ant_logo_large.gif "Ant logo"){: .alignleft .size-medium .wp-image-88 width="190" height="120"}](/mike/blog/wp-content/uploads/2009/01/ant_logo_large.gif)You may be surprised to learn [Ant][1] requires GCJ when installed through Synaptic or <tt>apt</tt> on Ubuntu.  GCJ is [GNU\'s Java compiler][2].  When you\'re using Sun\'s JDK and compiler, GCJ can get in the way -- at worst it creates conflicts; at best it causes confusion. Here\'s how I installed Ant on Ubuntu without GCJ.<!--more-->

 *Be sure to check out (easier) alternatives suggested in the [comments, below](#comments)*. 1.  Download the current <tt>.tar.bz2</tt> distribution of Ant from
    [http://www.ibiblio.org/pub/mirrors/apache/ant/binaries/][3].
2.  Unpack archive using <tt>tar</tt>.
    tar -xjvf apache-ant-*-bin.tar.bz2
{: lang="bash"}

4.  Move the unpacked directory to <tt>/usr/local/ant</tt>.
5.  Change that directory\'s owner to <tt>root</tt>.
    chown -R root:root /usr/local/ant
{: lang="bash"}

7.  Add the following lines to <tt>/etc/bash.bashrc</tt>.
    export ANT_HOME=/usr/local/ant
    export PATH=${PATH}:${ANT_HOME}/bin
{: lang="bash"}

 From a new shell, run <tt>ant</tt>. You should see the following:     Buildfile: build.xml does not exist!
    Build failed

 Yes, it\'s a failure message. But it means Ant is working as expected. :) 

[1]: http://ant.apache.org/ "Ant website"
[2]: http://gcc.gnu.org/java/ "GCJ homepage"
[3]: http://www.ibiblio.org/pub/mirrors/apache/ant/binaries/ "Ant mirror"
