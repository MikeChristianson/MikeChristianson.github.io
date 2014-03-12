--- layout: post title: Automate Advanced Installer with Ant categories: - ant tags: - advancedinstaller - ant - automation status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- Note: this post was updated in light of [discussion on the Advanced Installer forum][1]. At work, we use [Advanced Installer][2] to create easy-to-use Windows installers for internal and external customers. I wrote a short Ant script for building the installer to save time and minimize mistakes. *If you use Advanced Installer with your Java projects, be sure to read
my post on [using the Advanced Installer licensing feature within a Java
application](/2009/02/use-advanced-installer-licensing-within-a-java-application/).*
{: style="border: thin dashed;"}

 Here is a partial Ant script for executing Advanced Installer builds. It\'s not fancy, but it gets the job done.<!--more-->

 Notice the script has two parts -- one for setting the version number of the product and another for doing the actual build.     
    
    
    
    
        
        
        
        
    
    
    
        
        
{: lang="xml" line="1"}

 In the next snippet, which should be executed first, I\'ve made the version number dynamic based on the current time, day, and month (but not year)! (The pattern may seem a little odd; it conforms to [what Windows Installer expects][3].) Of course, this is completely optional and can be overridden using [Ant command-line properties][4].     
    
        
{: lang="xml" line="1"}

 When this script is combined with continuous integration, we have a repeatable, consistent, fully automated build of our software and its installer. And that rocks. 

[1]: http://www.advancedinstaller.com/forums/viewtopic.php?f=2&t=8586
[2]: http://www.advancedinstaller.com/
[3]: http://msdn.microsoft.com/en-us/library/aa370859.aspx
[4]: http://ant.apache.org/manual/running.html
