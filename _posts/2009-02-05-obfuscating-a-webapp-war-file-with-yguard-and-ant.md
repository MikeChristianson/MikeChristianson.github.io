--- layout: post title: Obfuscating a webapp .war file with yGuard and Ant categories: - ant tags: - ant - automation - java - yguard status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- One way to protect Java software from casual reverse engineering is obfuscation. Essentially, an obfuscator renames classes, variables, and packages with random/meaningless names. The application still functions correctly; the decompiled code becomes difficult to read. There are quite a few obfuscators for Java -- at least a dozen when I looked -- most of which are easily used from an Ant script. For my use I selected one with a ready-to-use Ant task: [yGuard][1]. Unfortunately, yGuard operates on .jar files only, not individual .class files or webapp .war files. Thus, I have written my own Ant script which uses yGuard and built-in Ant tasks to obfuscate .war files.<!--more-->

*Update 2009-12-11*\: If I had to do it over again, I would obfuscate my
classes/jars before creating the .war file.
{: style="border: thin dashed;"}

 Before you try using my Ant script, read [yGuard\'s documentation][2] and be sure you fully understand how it works. You should pay special attention to the [inoutpairs][3], [keep][4], and [hints and troubleshooting][5] sections.     
    
    
    
    
    
    
    
        
    
    
    
    
    
        
        
    
    
    
    
    
    
        
    
    
    
    
        
    
    
    
    
    
    
    
    
        
    
    
    
    
    
        
            
            
        
          
        
            
                  
            
            
                
            
        
    
    
    
    
        
    
    
     
    
        
    
    
        
{: lang="xml" line="1"}

 [yWorks][6], the creator of yGuard, is perhaps best known for [yDoc a UML diagram generator for JavaDocs][7]. 

[1]: http://www.yworks.com/en/products_yguard_about.html
[2]: http://www.yworks.com/products/yguard/yguard_ant_howto.html
[3]: http://www.yworks.com/products/yguard/yguard_ant_howto.html#inoutpairs
[4]: http://www.yworks.com/products/yguard/yguard_ant_howto.html#keep
[5]: http://www.yworks.com/products/yguard/yguard_ant_howto.html#hints
[6]: http://www.yworks.com/
[7]: http://www.yworks.com/en/products_ydoc.html
