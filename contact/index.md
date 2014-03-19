--- 
layout: page
--- 
<img src="{{ site.url }}/images/{{ site.owner.avatar }}" alt="{{ site.owner.name }} photo" class="author-photo" style="float: right; margin-left: 2em; margin-bottom: 2em;">

Hi there!

Thanks for stopping by. If you would like to contact me, or just say hello, please use one of the following services.

-- Mike

<div style="text-align: center;">
{% if site.owner.twitter %}<a class="btn" href="{{ site.owner.twitter }}" title="{{ site.owner.name}} on Twitter" target="_blank"><i class="icon-twitter icon-2x" ></i><span style="margin-left: 2em;">Twitter</span></a>{% endif %}
{% if site.owner.google_plus %}<a class="btn" href="{{ site.owner.google_plus }}" title="{{ site.owner.name}} on Google+" target="_blank"><i class="icon-google-plus icon-2x"></i><span style="margin-left: 2em;">Google+</span></a>{% endif %}
{% if site.owner.linkedin %}<a class="btn" href="{{ site.owner.linkedin }}" title="{{ site.owner.name}} on LinkedIn" target="_blank"><i class="icon-linkedin icon-2x"></i><span style="margin-left: 2em;">LinkedIn</span></a>{% endif %}
</div>