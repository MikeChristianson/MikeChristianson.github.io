---
layout: post
title: SeaFlow, Java app for Seattle traffic conditions
categories:
- java
tags:
- application
- java
- seattle
- traffic
status: publish
type: post
published: true
meta:
  _edit_last: '2'
  _wpas_skip_2141692: '1'
  _wpas_skip_2141647: '1'
  _wpas_skip_2141747: '1'
  simplecatch-sidebarlayout: ''
---
Late in 1999, <a title="homepage of UltiMeth Systems" href="http://www.ultimeth.com/">UltiMeth Systems</a> created <a title="SeaFlow homepage" href="http://www.ultimeth.com/traffic/">SeaFlow</a>, a Java-based application for monitoring Seattle-area traffic conditions.  SeaFlow is a powerful desktop version of <a title="WSDOT Seattle traffic" href="http://www.wsdot.wa.gov/traffic/seattle/">WSDOT's web-based traffic map</a>.  It uses the same WSDOT data but shows greater detail, allows customization, and reduces network traffic.

SeaFlow displays vehicle speeds, density, and count metrics.  (WSDOT's map shows only density which is certainly useful, but not a complete picture.)  The visual color representation of each metric can be customized in SeaFlow.

In times of peak demand, such as <a title="WSDOT blog post for 2008-12-18" href="http://wsdotblog.blogspot.com/2008/12/december-8-2008.html">December 18, 2008</a>, WSDOT's website may become overwhelemed and yield partial or missing maps.  SeaFlow's use of the smaller WSDOT data file -- with maps rendered on the client-side -- reduces demand on WSDOT's site and can provide more reliable and complete updates.

<a title="SeaFlow homepage" href="http://www.ultimeth.com/traffic/">SeaFlow</a> is a great Java desktop app -- small, efficient, and cross-platform.  Its license is <a title="homepage of GNU GPL" href="http://www.gnu.org/licenses/gpl.html">GPL</a>.
