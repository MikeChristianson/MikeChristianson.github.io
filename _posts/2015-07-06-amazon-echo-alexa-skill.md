---
layout: post
title: "Amazon Echo: Level Up With Alexa Skills"
last_modified_at: 2015-07-06 19:12:41 -0700
tags: [alexa,amazon echo,programming]
---
[![](http://www.smugmug.com/photos/i-JZxQvmV/0/O/i-JZxQvmV.jpg){: width="355" height="355" style="float: right; margin-right: 2em;"}][story]

[Amazon opened up development of Alexa Skills][story] -- voice-based services for its Echo device -- to the general public. Skill services can be [AWS Lambda functions][lambda] or self-hosted web services, possibly part of a larger application.

The [pattern of interaction][guide] with custom Alexa Skills involves either a question or command.

> Alexa, __tell__ _thing_ __to__ _do something_.

> Alexa, __ask__ _thing_ __to__ _check something_.

> Alexa, __ask__ _thing_ __how__ _do I make something_?

Lots of people are excited to use Alexa Skills to further [automate various functions of their homes][home-automation] using voice commands. While I'm not a member of that particular automation crowd, I have my own ideas for voice commands. But, before I tackled the big, interesting stuff, I wanted to start small for a bit of learning.

Recently, I've found it interesting to calculate someone's age, or how long ago an event took place, so I made an age calculator as an Alexa Skill. Simple, useful, and it works.

> Alexa, __ask__ _Age Calculator_ _how long has it been since April 15, 1912_?

> Alexa, __ask__ _Age Calculator_ _how long ago was January 19, 2006_?

> Alexa, __ask__ _Age Calculator_ _how old is someone born on July 6, 1899_?

Apparently, [there's a way to have my Skill be Certified][certify] to let other Amazon Echo owners use it. I'll update this post in the future if I decide to do so.

The source code for my [_Age Calculator_ Skill is available on GitHub](https://github.com/MikeChristianson/alexa-age-calculator).

<div style="text-align: center;">
<a class="btn" href="https://github.com/MikeChristianson/alexa-age-calculator" title="Age Calculator Alexa Skill on GitHub" target="_blank"><i class="fab fa-github fa-2x"></i><span style="margin-left: 2em;"><em>Age Calculator</em> on GitHub</span></a>
</div>

[story]: http://techcrunch.com/2015/06/25/amazon-unbundles-alexa-virtual-assistant-from-echo-with-new-dev-tools/
[lambda]: https://developer.amazon.com/appsandservices/solutions/alexa/alexa-skills-kit/docs/developing-an-alexa-skill-as-a-lambda-function
[guide]: https://developer.amazon.com/appsandservices/solutions/alexa/alexa-skills-kit/getting-started-guide#how-end-users-interact-with-your-alexa-skill
[home-automation]: http://www.zdnet.com/article/amazon-echo-ringmaster-of-the-home-automation-iot-circus/
[certify]: https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/publishing-an-alexa-skill#Submitting%20the%20Skill%20for%20Certification
