---
layout: post
title: "Modern.IE发布中文版，WEB前端开发必备神器"
description: "modern.IE 是微软新推出的一套免费的浏览器测试工具长久以来，浏览器兼容性测试一直是困扰前端工程师的工作之一。虽然随着IE9的普及和IE10的发布，这项工作变的越来越轻松，但是旧版本的IE浏览器仍然占据了较多的市场份额，微软此时推出modern.IE网站，显然是想推动网络更快的向前发展。"
category: website
tags: [WEB前端, 兼容性, IE, 微软]
---
{% include JB/setup %}
[modern.IE](http://www.modern.ie/zh-cn) 是微软新推出的一套免费的浏览器测试工具长久以来，浏览器兼容性测试一直是困扰前端工程师的工作之一。虽然随着IE9的普及和IE10的发布，这项工作变的越来越轻松，但是旧版本的IE浏览器仍然占据了较多的市场份额，微软此时推出modern.IE网站，显然是想推动网络更快的向前发展。

[modern.IE](http://www.modern.ie/zh-cn)平台可分为两个部分：一个是用于检测常见代码问题的Web扫描工具，另一个是与BrowserStack合作的免费虚拟测试服务。

一个代码检测向导
代码扫描其实并不是新鲜事物，说到 Web扫描工具，开发者们肯定会想到另外两款产品 —— PageSpeed和 YSlow。PageSpeed和YSlow分别是Google和Yahoo推出的网站性能测试工具。2款产品都是通过检测代码分析网站性能，检测的规则主要是JavaScript与CSS文件优化、图片压缩和减少服务器请求和查询，优化的最终目的是提高网页加载速度。

但[modern.IE](http://www.modern.ie/zh-cn)与众不同地方在于，它专注于那些可能会导致旧版本IE浏览器出现问题的代码，是以解决浏览器兼容性为最终目标的检测工具。只需要几秒时间，[modern.IE](http://www.modern.ie/zh-cn) 就能扫描一个网页并创建一份报告，其中罗列了可能会导致兼容性问题或影响用户体验的常见错误。

![image002](http://uisdc.qiniudn.com/wp-content/uploads/2013/04/image002.jpg)

代码检测向导目前支持3类共10种常见问题：

(一)解决关于兼容旧版IE的常见问题

自从新版的IE9与IE10开始支持HTML5标准，而旧版本的IE却不支持，开发者通常需要为两者编写不同的代码。这使得测试不同版本的IE变得非常棘手 —— 比如找出兼容模式下不支持的特性、让docmode告诉浏览器它支持web标准、不小心使用了一个过时的jQuery框架。如果网站在最新版或预发行版中会引发兼容性问题，[modern.IE](http://www.modern.ie/zh-cn)也会提示您，使开发者可以更从容的在不同的版本间规划和解决问题。

已知的兼容性问题（Known compatibility issues）
兼容模式（Compatibility Mode）
框架和库（Frameworks & libraries）
网络标准文档模式（Web standards docmode）
(二)帮助网站在多种浏览器和设备上正常运行

向导还包括了一系列最佳实践，让网页可以适用于日益增加的各种设备 —— 不论是手机、台式机、平板电脑，甚至是大屏幕电视。

实施特性检测、采用CSS前缀的最佳实践编码、搭建无插件网站、使用响应式网页设计，都可以减少跨浏览器、跨设备的测试时间，并提供更稳定的用户体验。

CSS 前缀（CSS-prefixes）
浏览器插件（Browser plug-ins）
响应式网页设计（Responsive web design）
浏览器检测（Browser detection）
(三)结合Windows 8 中的一些新特性构建网站

这包括触控浏览和“开始”屏幕网站磁贴。开发者可利用Windows的这些新功能，为用户提供更加个性化的浏览体验。

触控浏览（Touch-browsing）
“开始”屏幕网站磁贴（Start screen site tile）
这里以某网站网站为例，介绍[modern.IE](http://www.modern.ie/zh-cn)的使用方法。

打开[modern.IE](http://www.modern.ie/zh-cn)的网站首页，在页面的下方就可以看到一个硕大输入框。

![image004](http://uisdc.qiniudn.com/wp-content/uploads/2013/04/image004.jpg)

输入网址，点击Scan按钮。网页就会跳转到扫描页面，并开始扫描。

![image006](http://uisdc.qiniudn.com/wp-content/uploads/2013/04/image006.jpg)

只需数秒，网站报告就会生成到页面上。

![image008](http://uisdc.qiniudn.com/wp-content/uploads/2013/04/image008.jpg)

报告一共分为3大类10条规则，点击条目可以展开对应的详细信息，详细信息中可以看到该规则的问题原因、重要性和解决方法。
如果规则前的图标是对勾，则表示网站符合该条规则。如果图标是感叹号，那么就有问题需要您完善了。
某网站一共扫描出了5个需要改进的规则，我们来一个个看下。
第一个规则是“框架和库”（Frameworks & libraries）

![image010](http://uisdc.qiniudn.com/wp-content/uploads/2013/04/image010.jpg)

在这条规则中，[modern.IE](http://www.modern.ie/zh-cn)发现网站使用了过时的jQuery库版本，所以会建议您应该升级库的最接近的兼容版本（需要少许测试）或是最新版本（需要更多测试）。

第二个规则是“Web标准的 docmode”（Web standards docmode）

[modern.IE](http://www.modern.ie/zh-cn) 发现网站没有使用DocType，从而可能使网站无法在IE9或IE10中获的最好的体验。使用DocType，可以在IE浏览器中提升30%的网站性能。

如何修复？详细信息的最右边给出了解决方法的链接。

第三个规则是”响应式网页设计”（Responsive web design）

网站没有使用响应式设计，这不是个技术错误，但是应用这项技术可以提升用户体验，减少为特定设备开发的支出。所以，moderen.IE给出的建议是“建议增强”。并给出了3条学习响应式网页设计的链接。

最后2条规则是关于结合Windows 8新特性构建网站

Windows 8 有2个和网站相关的新特性，触控浏览和“开始”屏幕网站磁贴。开发者利用Windows的这些新功能，可以为用户提供更加个性化的浏览体验。
如何实现？右侧依旧给出了详细的教程链接。
通过[modern.IE](http://www.modern.ie/zh-cn)检测，开发人员就可以轻松地了解网页存在的问题，从而有针对性的一步步完善您的网站，相信完善后的网站一定会拥有优秀的浏览器兼容性，用户体验也更上一个层级。

BrowserStack免费虚拟测试服务
以前开发者要测试不同设备上的浏览器，需要自己维护测试设备或者映像，而且浏览器版本太多，您也不可能拥有每种设备和浏览器。

而BrowserStack 是一个云服务，这意味着开发者不再需要花费心思在维护自己的测试设备和映像上，不论开发人员使用何种设备或操作系统，通过BrowserStack，开发人员可以像访问网页一样轻松的进行测浏览器兼容性测试，通过浏览器就可以远程操作各个系统上的不同浏览器。

![image012](http://uisdc.qiniudn.com/wp-content/uploads/2013/04/image012.jpg)

打开[modern.IE](http://www.modern.ie/zh-cn)中的虚拟工具页面，在左侧的BrowserStack模块中输入要测试的网址，点击右侧按钮就会跳转到BrowserStack的注册页面.

![image014](http://uisdc.qiniudn.com/wp-content/uploads/2013/04/image014.jpg)

只需简单的填写邮箱、密码和昵称就注册好了。

![image016](http://uisdc.qiniudn.com/wp-content/uploads/2013/04/image016.jpg)

然后就会自动跳转到测试页面，等待几秒，让网页加载Flash并连接云端服务器。

![image018](http://uisdc.qiniudn.com/wp-content/uploads/2013/04/image018.jpg)

等待连接成功，您就能在右侧看到页面了，默认连接的是Windows 8下的IE10浏览器。

接着您就可以像平时浏览网页一样操控页面了。

![image020](http://uisdc.qiniudn.com/wp-content/uploads/2013/04/image020.jpg)

![image022](http://uisdc.qiniudn.com/wp-content/uploads/2013/04/image022.jpg)

如果您想测试其他系统的浏览器，比如Windows Vista下的IE9，就可以在左侧的面板中依次选择系统和浏览器，然后点击Update，更新服务器。

![image024](http://uisdc.qiniudn.com/wp-content/uploads/2013/04/image024.jpg)

您也可以调出IE自带的F12开发人员工具对网页进行调试。

![image026](http://uisdc.qiniudn.com/wp-content/uploads/2013/04/image026.jpg)

![image028](http://uisdc.qiniudn.com/wp-content/uploads/2013/04/image028.jpg)

OS X和Android的浏览器也都可以云端测试。

您还可以在左侧设置分辨率，是否全屏、自适应和加载速度。
如果您的测试网站无法公开访问，您也可以通过基于Java的安全隧道，使用BrowserStack的本地服务器测试。modren.IE还推出了面向Chrome和Firefox的加载项，这样在这些浏览器中就能轻松地对IE进行兼容性测试。
现在，[modern.IE](http://www.modern.ie/zh-cn)和BrowserStack合作，为所有通过[modern.IE](http://www.modern.ie/zh-cn)连接此服务的Web开发人员提供三个月的免费服务。
此外，[modern.IE](http://www.modern.ie/zh-cn)也为开发人员提供了不论是在 Mac、Linux、PC下都能使用的本地端Windows IE浏览器的免费虚拟映像，用来进行测试。
如果您正为测试浏览器兼容性而烦恼的话，就快来试试[modern.IE](http://www.modern.ie/zh-cn) 吧！



原文地址：[http://www.uisdc.com/modern-ie-browserstack](http://www.uisdc.com/modern-ie-browserstack)
