---
layout: post
title: "jekyll如何对page排序"
description: "jekyll是目前非常流程的blog程序，基于ruby开发，可以结合github制作自己的免费博客。在使用jekyll时，要对页面的显示顺序进行排序，本文记录了实现方法。"
category: tips 
tags : [jekyll, page ,sort ]
ltags : "jekyll,page,sort"
---
{% include JB/setup %}

    <ul>
        {\% for weight in (1..10) \%}
            {\% for p in site.pages \%}
            {\% if p.weight == weight \%}
    <li>
        <a {\% if p.url == page.url \%}class="active"{\% endif \%} href="{{ p.url }}">{{ p.title }}</a>
    </li>
        {\% endif \%}
            {\% endfor \%}
        {\% endfor \%}
    </ul>
