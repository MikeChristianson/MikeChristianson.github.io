--- layout: post title: Running wview on PowerBook G4 categories: - linux - weather tags: - linux - powerpc - ubuntu - weather status: publish type: post published: true meta: \_edit\_last: \'2\' \_wp\_old\_slug: \'\' simplecatch-sidebarlayout: \'\' --- ![](http://www.smugmug.com/photos/1159232851_Y3P2N-Ti.jpg "Davis Vantage Vue"){: .alignright width="100" height="100"}Ever since I set up my [Davis Vantage Vue][1] weather station, I\'ve used my Dell Inspiron [Mini 1012][2] to get weather data from my console, into the computer, and out to the Internet. This weekend I decided to see if I could dust off my old [12\" PowerBook G4][3] and use it for the same purpose. ![](http://www.smugmug.com/photos/1159226867_QA37y-Ti.jpg "12&quot; PowerBook G4"){: .alignleft width="100" height="91"}To complicate matters, I had recently removed OS X 10.4 and installed Ubuntu 10.10 on the PowerBook in an ill-fated attempt to give it new life. The PowerBook was a great computer in its time but, these days, PowerPC is a dying, if not already dead, architecture. <!--more-->

Flash 10? Not on PowerPC. Google Chrome? Nope. On the Mini, which ran Windows 7 Starter, I used [WUHU][4] for data acquisition and upload. That program worked well, but obviously an x86 PC app just would not do the trick on Linux or a PowerPC. Some searching led me to [wview][5] which worked on Linux and was capable of running on something like a NSLU2 or plug computer. It would either be perfect or a perfect mirage. And then there was the issue of my USB-to-Serial adapter, for connecting the computer to the weather station console. Who knew if that would work? So, there I was with a dead architecture, the wrong OS, a questionable USB adapter and... well, let\'s just say I wasn\'t very hopeful. ![](http://www.wviewweather.com/wview.png "wview"){: .alignright width="100" height="100"}But... it worked! Much to my surprise, I was able to get data from my weather station, using wview, through the USB adapter, into the PowerBook, and out to the world. Here\'s how I did it: 1.  Installed [Ubuntu 10.10 for PowerPC][6].
2.  Tested the [IOgear GUC232A USB-to-Serial Adapter][7] and it worked
    right out of the box.
        
        USB Serial support registered for pl2303
        usb 3-1: pl2303 converter now attached to ttyUSB0
        usbcore: registered new interface driver pl2303
        pl2303: Prolific PL2303 USB to serial adaptor driver
    
    2\.  Followed [wview Debian Quick Start Guide][8]. Downloaded and
        executed `wview-install-debian`, encountered first problem:
            In file included from ../htmlgenerator/htmlStates.c:36:
            ./glchart.h:28: fatal error: gd.h: No such file or directory
    
     4.  Installed `libgd2`.
            apt-get install libgd2-noxpm-dev
        {: lang="bash"}
    
     6.  Executed `wview-install-debian` again, encountered second
        problem:
            
            http.h: error: curl/curl.h: No such file or directory
    
     8.  Installed `libcurl4`.
            apt-get install libcurl4-openssl-dev
        {: lang="bash"}
    
     10. Executed wview-install-debian again; encountered problem;
    re-ran
        as
            wview-install-debian -f
        {: lang="bash"}
    
     12. From here out, I followed the [wview user manual for
        configuration][9].
     \[caption id=\"\" align=\"alignleft\" width=\"300\" caption=\"Check
    it out, it\'s a live, daily temperature graph. For
    reals.\"\][![](http://christiansons.net/mike/weather/tempdaycomp.png
    "live, daily temperature graph"){: width="300"
    height="180"}][10]\[/caption\] Anyway, here\'s my weather page:
    > [**http://christiansons.net/mike/weather/**][10]
    
    It\'s nice to have brought life back to disused computer; it\'s nice
    to have my Mini back! P.S. Not having tried [wview on OS X][11], I
    can\'t compare the experience or difficulty.



[1]: http://vantagevue.com/
[2]: http://www.dell.com/us/p/inspiron-mini1012/fs
[3]: http://en.wikipedia.org/wiki/PowerBook_G4#Aluminum_PowerBook_G4
[4]: http://home.comcast.net/~wuhu_software/
[5]: http://www.wviewweather.com
[6]: https://wiki.ubuntu.com/PowerPC
[7]: http://www.amazon.com/gp/product/B000067VB7?ie=UTF8&tag=wiltblog-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=B000067VB7
[8]: http://www.wviewweather.com/release-notes/wview-Debian-Quick-Start.html
[9]: http://www.wviewweather.com/release-notes/wview-User-Manual.html#Configuration
[10]: http://christiansons.net/mike/weather/
[11]: http://www.wviewweather.com/release-notes/wview-Quick-Start-MacOSX.html
