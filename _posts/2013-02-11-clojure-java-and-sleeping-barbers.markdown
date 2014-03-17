---
layout: post
title: Clojure, Java, and Sleeping Barbers
categories:
- java
- programming
tags:
- java clojure
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  _wpas_done_all: '1'
  simplecatch-sidebarlayout: ''
---
My friend Matt wrote a pretty rad (yep, I used that word) <a href="https://github.com/cordmata/seven/blob/master/clojure/src/clojure_seven/barber.clj">implementation of the "sleeping barber" program in Clojure</a>. Matt's code had an almost sentence-like simplicity to it -- pithy but expressive -- that impressed me.

As we walked through how the program worked, I couldn't help but wonder about a Java implementation. So, I <a title="Java &quot;sleeping barber&quot; program" href="https://github.com/MikeChristianson/sleeping-barber/blob/master/src/name/christianson/mike/BarberShop.java">wrote one</a>.

Matt's is self-contained in one file while mine is split across multiple files. (I opted to not use anonymous/inner classes.) I think we were a bit surprised that the concurrency logic is similar and the "main" driving section of each implementation follows the same set-up procedure. Perhaps my code was influenced by way of transliteration?

I'm struck by how Matt's Clojure programs reads somewhat like a story while my Java program reads like instructions for a computer.
