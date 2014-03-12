--- layout: post title: Incomplete thoughts on Git categories: - books - git - subversion tags: - git - subversion status: publish type: post published: true meta: \_edit\_last: \'2\' simplecatch-sidebarlayout: \'\' --- [![](http://www.smugmug.com/photos/i-cCgBQJg/0/S/i-cCgBQJg-S.jpg){: .alignright width="250" height="300"}][1] For the last week or so I\'ve worked my way through about half of [Pragmatic Version Control using Git][1] with a mixture of excitement and terror. In random order, as it comes from my mind, are some thoughts: * Git treats branches and tags as first-class citizens. They are
  attributes of the repository. Git can easily give you a list of
  branches in one single `git branch` command. Coming from the world of
  Subversion, where branches and tags are tenuously related to trunk, I
  have to say this is refreshing. I almost said \"Of course! It *should*
  be this way!\"
* Subversion makes you organize your branches and tags by paths. Git,
  following from the above, does not. I\'ve never much liked having to
  babysit the Subversion repository hierarchy, even though it is
  extremely malleable.
* Going in, I was not aware who authored Git. After I typed out a few
  commands, I joked to myself that it seemed made for Linux command-line
  lovers. [Spot on][2].
* Git operates on file contents rather than files. It knows when code
  moves from one file to another. It knows when code is duplicated. It
  doesn\'t balk at files being renamed or moved. If you frequently
  refactor your code, this should produce *at least one little tear of
  joy* in your eyes.
* I wonder how well Redmine, Jenkins, and other heavily-VCS based
  systems work with Git. I\'ll have to find out.
* Perhaps it\'s just this book, but I think I\'m seeing inconsistencies
  in naming. For example: staging, cache, and index. Are they the same?
  Are they different? How do they relate? I\'m not satisfied the book
  isn\'t confusing me. It could be my fault, though.
* Those familiar with Subversion may see the `.git` directory as an
  analogue to `.svn`. It\'s not; the `.git` directory *is* the
  repository.



[1]: http://www.amazon.com/gp/product/1934356158/ref=as_li_ss_il?ie=UTF8&amp;tag=wiltblog-20&amp;linkCode=as2&amp;camp=1789&amp;creative=390957&amp;creativeASIN=1934356158
[2]: http://en.wikipedia.org/wiki/Git_(software)#History
