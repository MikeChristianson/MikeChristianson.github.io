--- layout: post title: Processing, week 2 categories: - processing tags: - processing - programming status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- [![](http://processing.org/img/learning/books/visualizing-data "Visualizing Data by Ben Fry"){: .alignright width="110" height="138"}][1]Today marks the second week I have been learning [Processing][2], a
Java-based language for \"program\[ming\] images, animation, and
interactions.\" In other words, I want to learn how to make useful,
pretty graphics. :)

Over the past year I had seen Processing mentioned here-and-there in
various articles, but what piqued my interest was a [visualization of US
zipcodes][3]. Check it out; it\'s awesome.

My guide, at least for now, is [Visualizing Data by Ben Fry][1]. I just
completed reading the third chapter and thought I\'d share an example
program.<!--more-->

<div id="sketch_feb28a_container" markdown="1">
<applet code="sketch_feb28a.class"
archive="/mike/blog/wp-content/uploads/2009/02/sketch_feb28a.jar"
width="600" height="400">
 Oops, your browser does not have a Java Plug-in. [Get the latest Java
Plug-in here.][4] Or, if you have Java but can't use the Plug-in, feel
free to download the [program as an executable
jar](/mike/blog/wp-content/uploads/2009/02/sketch_feb28a.jar). </applet>

</div>

The above Processing program plots data on a US map. The data are random
numbers, associated with each state, which are displayed as colored
circles of varying sizes. Colors are based on sign; size based on
magnitude. Moving the mouse cursor over a circle displays the state name
and the random value.

Obviously, this is a very simple visualization but it\'s not hard to see
the potential for powerful visualizations. I\'m already coming up with
other data to visualize with this... such as displaying the difference
between the current and average daily temperature for a state.

Oh, before you get to comfortable with that static graphic, click
anywhere on the map. Neat, huh? A new random number is generated and the
graphic is animated from the old value.

Over the course of this coming week I will read the fourth chapter,
\"Time Series,\" about displaying data which changes over time. I can\'t
wait to see what program the book will have me work on.



[1]: http://www.amazon.com/Visualizing-Data-Ben-Fry/dp/0596514557/?tag=wiltblog-20
[2]: http://processing.org/
[3]: http://benfry.com/zipdecode/
[4]: http://java.sun.com/products/plugin/downloads/index.html "Download Java Plug-in"
