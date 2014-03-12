--- layout: post title: \'Legacy Code: The Case of the Construction Blob\' categories: - books - programming tags: \[\] status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- Exercising the application of some principles from \"The Case of the Construction Blob\" from Michael Feather\'s [Working Effectively with Legacy Code][1], I used *Supersede Instance Variable* to avoid creating a certain, troublesome object in the constructor of a non-legacy class under test. Wait… what\'s that? *Non-legacy*? Yep. The class in question was already under test -- developed with TDD and only a week ago -- but I found myself refactoring and could not avoid creating the object in the class\'s constructor. I have mixed feelings about it, but I won\'t lose any sleep. During this process, I noticed that Feathers doesn\'t seem to like either of his solutions to the dependencies-in-constructors problem. For a few minutes I went back and forth trying to decide what to do. Here\'s why. In \"The Case of the Construction Blob\" Feathers states: > … we can use *Extract and Override Factory Method* (350) on code in a
> constructor …but … in general, **it isn’t a good idea**.

 He then goes on to outline *Supersede Instance Variable* as a second option and writes: > We write a setter on the class that allows us to swap in another
> instance after we construct the object. … **I don’t like to use \[it\]
> unless I can’t avoid it**.

 After re-reading this section, given the parts I emphasized above, I half-expected him to outright say \"if you have this problem, you have a bigger problem\" but he didn\'t. So, am I reading this right? Does he not like either solution? Is there some third option I\'m missing that he does like? 

[1]: http://www.amazon.com/gp/product/0131177052/ref=as_li_ss_tl?ie=UTF8&amp;tag=wiltblog-20&amp;linkCode=as2&amp;camp=1789&amp;creative=390957&amp;creativeASIN=0131177052
