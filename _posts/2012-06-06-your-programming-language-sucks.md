--- layout: post title: Your programming language sucks? categories: - java tags: - java status: publish type: post published: true meta: \_edit\_last: \'2\' \_wpas\_skip\_2141692: \'1\' \_wpas\_skip\_2141647: \'1\' \_wpas\_skip\_2141747: \'1\' simplecatch-sidebarlayout: \'\' --- ***Update 2012-June-20***\: Please also read my follow-up post,&nbsp;*[Revisited: Your programming language sucks][1]?* I met someone recently that declared \"Java sucks.\" One proffered argument of that \"suckiness\" was Java\'s lack of expressiveness. In point: you can\'t compare two `Date` objects with the less or greater -than operators. Further, you can\'t [override the operators][2] themselves. (I won\'t touch that subject; we covered it in Computer Science 201.)     Date now = new Date();
    Date epoch = new Date(0);
    assert now > epoch; //won't compile
{: lang="java5"}

 Nope, that won\'t compile. What are we to do?     assert now.after(epoch);
{: lang="java5"}

 There, that works. But what if we really, *desperately* wanted to use operators?     assert now.getTime() > epoch.getTime();
{: lang="java5"}

 Both of these seem perfectly expressive to me. Much ado about nothing? I think it\'s a matter of comfort and familiarity. Saying a programming language \"sucks\" says less about the language and more about the person speaking. 

[1]: http://codeaweso.me/2012/06/revisited-your-programming-language-sucks/ "Revisited: Your programming language sucks?"
[2]: http://c2.com/cgi/wiki?OperatorOverloading
