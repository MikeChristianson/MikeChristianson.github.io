--- layout: post title: Sun Java 6 on Ubuntu 10.04 10.10 and later categories: - java - linux tags: - java - linux - ubuntu status: publish type: post published: true meta: \_edit\_last: \'2\' \_wp\_old\_slug: \'\' simplecatch-sidebarlayout: \'\' --- ***Post updated 2012 Mar 30***\: Java 7 is available, check out new instructions for&nbsp;[Oracle Java 7 on Ubuntu 11.10 12.04][1]. *Post updated 2011 Jan 19: Given the opportunity to install 10.10, I have added [different instructions for Ubuntu 10.10](#1010) (Maverick Meerkat).* Much to my surprise, but probably not those of the Open Source Ruling Class, [Sun\'s Java 6 has been removed from the Ubuntu Multiverse][2]. Apparently the Ubuntu folks have started putting some weight behind their recommendations for switching to the \"OpenJDK.\" Fortunately, the official, \"proprietary\" Java is still available through another Ubuntu repository. ## Ubuntu 10.10   {#1010}

 To install Sun\'s Java 6 JDK on Ubuntu 10.10, add the [Sun Java6 Community PPA][3] and install:     add-apt-repository ppa:sun-java-community-team/sun-java6
    apt-get update
    apt-get install sun-java6-jdk
    update-java-alternatives -s java-6-sun

## Ubuntu 10.04

 To make Sun\'s Java 6 JDK available on Ubuntu 10.04 add the new repository like so:     add-apt-repository "deb http://archive.canonical.com/ lucid partner"
    aptitude update
    aptitude install sun-java6-jdk
    update-java-alternatives -s java-6-sun



[1]: http://codeaweso.me/2012/03/oracle-java-7-on-ubuntu-11-10-12-04/ "Oracle Java 7 on Ubuntu 11.10 12.04"
[2]: https://wiki.ubuntu.com/LucidLynx/ReleaseNotes#Sun%20Java%20moved%20to%20the%20Partner%20repository
[3]: https://launchpad.net/~sun-java-community-team/+archive/sun-java6
