---
layout: post
title: "What is WebP"
description: "WebP是否可以成为下一代互联网图像格式新标准？"
category: 
tags: [industry]
---
{% include JB/setup %}

WebP (发音"weppy")，一种同时提供了有损压缩与无损压缩的图形档格式。Google在购买On2 Technologies后发展出来的格式，派生自图像编码格式VP8，以BSD授权条款发布。
WebP最初在2010年发布，目标是在最小的压缩损失下，提供网络传输用的开放图片格式，最直接的竞争者就是已经流通多年的图片文件格式- JPEG。WebP希望能够达到和JPEG同水平的图片品质，但是更小的文件，以减少图片档的传送时间。

目前只有Google Chrome和Opera浏览器原生支持WebP格式，而Google Chrome自12版开始支持WebP的渐进式解码功能。此外所有可以原生播放WebM图像的浏览器，也可以通过javascript来显示WebP图像。开源图片浏览工具Ez看图也可以支持查看WebP图像。

x264的开发者之一：Jason Garrett-Glaser，针对WebP做出了几点评论，根据和其他编码器（JPEG、x264、Theora）测试的结果，他认为WebP的图像品质是最差的，多数是在模糊度方面。他也评论Google应该等到WebP可以超越JPEG之后再发布。不过在2011年4月20日，他提到新的WebP编码器表现的非常好，超越JPEG是指日可待的。

根据Google自己的测试，在有损压缩的状况下，WebP比同样画质的JPEG少了25% ～ 34%的文件大小。而在无损压缩的情形中，比起用libpng产生的PNG图片，WebP少了34%的文件大小，也比用pngout再处理过的PNG图片少了26%的文件大小。

WebP是否可以成为下一代互联网图像格式新标准？我们拭目以待。
