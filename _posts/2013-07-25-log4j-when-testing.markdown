---
layout: post
title: log4j when testing
categories: []
tags: []
status: draft
type: post
published: false
meta:
  _edit_last: '2'
  simplecatch-sidebarlayout: ''
---
@BeforeClass
public static void beforeClass() throws Exception {
BasicConfigurator.configure();
Logger.getRootLogger().setLevel(Level.ALL);
}
