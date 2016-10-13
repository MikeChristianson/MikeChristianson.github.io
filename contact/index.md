---
layout: page
---
{% include author-photo.html %}

Hi there!

Get in touch using one of the following services.

<div style="text-align: center;">
{% if site.owner.twitter %}<a class="btn" href="http://twitter.com/{{ site.owner.twitter }}" title="{{ site.owner.name}} on Twitter" target="_blank"><i class="fa fa-twitter-square fa-2x"></i><span style="margin-left: 2em;">Twitter</span></a>{% endif %}
{% if site.owner.google.plus %}<a class="btn" href="http://plus.google.com/+{{ site.owner.google.plus }}" title="{{ site.owner.name}} on Google+" target="_blank"><i class="fa fa-google-plus-square fa-2x"></i><span style="margin-left: 2em;">Google+</span></a>{% endif %}
{% if site.owner.linkedin %}<a class="btn" href="http://linkedin.com/in/{{ site.owner.linkedin }}" title="{{ site.owner.name}} on LinkedIn" target="_blank"><i class="fa fa-linkedin-square fa-2x"></i><span style="margin-left: 2em;">LinkedIn</span></a>{% endif %}
</div>

Want to submit a correction or clarification? Have a better way of doing something? Feel free to create a [GitHub Issue][1].

-- Mike

[1]: https://github.com/MikeChristianson/MikeChristianson.github.io/issues
