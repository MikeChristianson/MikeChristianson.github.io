--- layout: post title: \'Processing, week 4: Case-Shiller Home Price Indices\' categories: - career - processing tags: - application - case-shiller - graph - processing status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- See [my post of May 26,
2009](/mike/blog/2009/05/processing-case-shiller-home-price-index/) for
a more up-to-date Case-Shiller Home Price Index graph.
{: style="border: thin dashed;"}

 [![screenshot-sketch_apr04a](/mike/blog/wp-content/uploads/2009/04/screenshot-sketch_apr04a-150x100.png "screenshot-sketch_apr04a"){: width="150" height="100" .alignright .size-thumbnail .wp-image-319}](/mike/blog/wp-content/uploads/2009/04/screenshot-sketch_apr04a.png)I must admit, I\'ve been extremely lazy about reading [Visualizing Data][1] or even updating this blog... but, this post should make up for it. Earlier this week I skimmed a WSJ [blog][2] and [article][3] on the Case-Shiller Home Price Index and thought to myself \"time for a graph!\" For the uninitiated, [Case-Shiller tracks home prices][4] in 20 metro areas. As WSJ states, \"\[the index has\] a base value of 100 in January 2000. So a current index value of 150 translates to a 50% appreciation rate since January 2000 for a typical home located within the metro market.\" This program graphs the history of each city\'s home price index. <!--more-->

Not satisfied with just a plain-old graph, I added some aesthetic and functional features. The 20-city composite is shown for reference. Moving the mouse over the graph will highlight and display the index for a given point in time. Clicking the mouse will advance to another city. <applet code="sketch_apr04a.class" archive="/mike/blog/wp-content/uploads/2009/04/sketch_apr04a.jar" width="600" height="400">
Oops, your browser does not have a Java Plug-in. [Get the latest Java Plug-in here.][5] Or, if you have Java but can't use the Plug-in, feel free to download the [program as an executable jar](/mike/blog/wp-content/uploads/2009/04/sketch_apr04a.jar). Here's a screen shot of what you're missing. [![screenshot-sketch_apr04a](/mike/blog/wp-content/uploads/2009/04/screenshot-sketch_apr04a.png "screenshot-sketch_apr04a"){: .aligncenter .size-full .wp-image-319 width="600" height="400"}](/mike/blog/wp-content/uploads/2009/04/sketch_apr04a.jar)</applet>

 The graph\'s data comes from a static CSV which I slightly hand-modified from [the original XLS spreadsheet][4]. It\'s interesting the number of little things I find missing or bothersome. For example, I\'d like to use <tt>[curveVertex()][6]</tt> instead of <tt>[vertex()][7]</tt> for a smoother line curve, but by nature it doesn\'t display the first and last data points. Fortunately there are enough data points and few large jumps/drops so the graph does not appear jagged. I could go on... Taking a break from the book and making something useful has been fun. 

[1]: http://www.amazon.com/Visualizing-Data-Ben-Fry/dp/0596514557/?tag=wiltblog-20
[2]: http://blogs.wsj.com/economics/2009/03/31/a-look-at-case-shiller-numbers-by-metro-area-7/
[3]: http://online.wsj.com/article/SB123850357559373519.html
[4]: http://www2.standardandpoors.com/portal/site/sp/en/us/page.topic/indices_csmahp/2,3,4,0,0,0,0,0,0,0,0,0,0,0,0,0.html
[5]: http://java.sun.com/products/plugin/downloads/index.html "Download Java Plug-in"
[6]: http://processing.org/reference/curveVertex_.html
[7]: http://processing.org/reference/vertex_.html
