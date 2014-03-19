---
layout: post
title: More incomplete thoughts on Git
categories:
- books
- git
tags:
- git
- subversion
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
I'm working through Chapter 6 and things are starting to go off the rails for me. Here are my current thoughts…
<ul>
	<li>The&nbsp;`git diff --stat &lt;branch|tag&gt;` command is nifty. Even more nifty: referring to tags and branches by name rather than full path (svn).</li>
	<li>I'm gratified to see that EGit displays annotations (blame) similarly to Subclipse.</li>
	<li>Countless times I've committed code to a Subversion repository only to find I've broken the build by leaving out a file or lib. The Subversion-way is to either make a follow-up commit with whatever was missing or to reverse-merge the commit and re-commit with everything. The former is undesirable because it spreads the single change across more than one commit; the latter is preferred but is more complicated. Git's amended commit gives you the convenience of the former with the pedantic correctness of the latter.</li>
	<li>Yeah… `git revert != svn revert` … this is going bite me constantly. It already has.</li>
	<li>I'm totally confused by `git reset</code>. I have no idea what this means: "<em>git reset updates the repository and stages the changes for you to commit.</em>" Maybe if I knew what was being "updated" or what was being "staged," it would make sense! Also, the book says "<em>[git reset] is useful when you notice an error in your previous commit and want to fix it.</em>" What…? I thought that's what amend was for…? Apparently, if I'm going to understand <code>reset`, I'll have to find another reference.</li>
	<li>My single experiment with `git rebase -i</code> wherein I attempted to squash two commits together and then break them back out did not work as expected. The book said the second execution of <code>rebase` would show my squashed commit starting with "edit" but it still says "pick"; not sure what I did wrong.</li>
	<li>Using hashes as revision numbers makes it impossible to glance at a list of commits and determine what's newer, older, or (dis)ordered. I ran into this when playing with&nbsp;`git rebase -i</code>. Unquestionably, <code>rebase`&nbsp;has a set order but it's not self-obvious.</li>
</ul>
