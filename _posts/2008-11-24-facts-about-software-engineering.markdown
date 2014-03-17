---
layout: post
title: Facts about software engineering
categories:
- programming
tags:
- programming
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
<a title="web site of Robert L. Glass" href="http://www.robertlglass.com/about">Robert L. Glass</a>, in 2001, authored a collection of facts about software engineering titled <a href="http://www2.computer.org/portal/web/buildyourcareer/fa035">Frequently Forgotten Fundamental Facts about Software Engineering</a>.  Glass wrote:
<blockquote>I don't expect you to agree with all these facts; some of them might even upset you. Great! Then we can begin a dialog about which facts really are facts and which are merely figments of my vivid loyal opposition imagination!</blockquote>
In that spirit, I have selected one each of my favorite requirement and estimation facts.
<blockquote><strong>RD2</strong>. When a project moves from requirements to design, the solution process's complexity causes an explosion of "derived requirements." The list of requirements for the design phase is often 50 times longer than the list of original requirements.</blockquote>
Indeed, suddenly a large body of previously-unknown work is materialized, complexity increases again, and the schedule doesn't adjust (see ES2).  The knee-jerk reaction, of course, is to spend hour-after-hour and day-after-day coming up with an exhaustive list of requirements.  The process can be infinitely long (see  <a title="wikipedia: analysis paralysis" href="http://en.wikipedia.org/wiki/Analysis_paralysis">analysis paralysis</a>) and may only reach its end by artificial means.  This problem alone may be one of the strongest arguments against <a title="wikipedia: waterfall model" href="http://en.wikipedia.org/wiki/Waterfall_model">waterfall</a>-style development.
<blockquote><strong>ES2</strong>. Most software estimates are performed at the beginning of the life cycle. This makes sense until we realize that this occurs before the requirements phase and thus before the problem is understood. Estimation therefore usually occurs at the wrong time.</blockquote>
Another good argument against waterfall.  The risk inherent in this nearly inverse ordering is significantly reduced when software is produced in a more agile fashion.  That is to say, analyzing requirements and producing estimates iteratively allows the risk to be mitigated incrementally.
