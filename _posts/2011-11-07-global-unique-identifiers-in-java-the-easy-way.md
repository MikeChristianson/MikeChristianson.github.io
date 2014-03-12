--- layout: post title: Global unique identifiers in Java, the easy way categories: - java tags: \[\] status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- A recent attempt at creating a unique identifier at work was shot down in flames by Findbugs. My naïve attempt wasn\'t very thoughtful but seemed to work.     Integer.toString(Math.abs(random.nextInt()))
{: lang="java"}

 Findbugs indicated there was a possibility that I might end up with a negative value even though I \"cleverly\" used <tt>Math.abs()</tt>. > RV: Bad attempt to compute absolute value of signed random integer
> [(RV\_ABSOLUTE\_VALUE\_OF\_RANDOM\_INT)][1] If the number returned by
> the random number generator is Integer.MIN\_VALUE, then the result
> will be negative as well

 Even though I didn\'t need this random id to be perfect -- the unintended side-effect wasn\'t a technical problem since I used it as a String -- I still wanted to fix it. Stackoverflow to the rescue. A [question-and-answer from Stackoverflow][2] pointed the way to the solution: <tt>[java.util.UUID][3]</tt>. Somehow, I missed that Sun had added Java\'s own universally unique identifier (UUID) generator in Java 1.5. In the end, I happily replaced my homemade id generator with Java\'s.     UUID.randomUUID().toString()
{: lang="java"}

 The output of which is something like <tt>1c312843-8903-411f-88b2-ff1b92ca80ba</tt>. *Cross-posted at [http://java.dzone.com/articles/global-unique-identifiers-java][4].*

[1]: http://findbugs.sourceforge.net/bugDescriptions.html#RV_ABSOLUTE_VALUE_OF_RANDOM_INT
[2]: http://stackoverflow.com/questions/7567350/findbugs-rv-absolute-value-of-random-int-warning
[3]: http://download.oracle.com/javase/6/docs/api/java/util/UUID.html
[4]: http://java.dzone.com/articles/global-unique-identifiers-java
