---
layout: post
title: "jekyll如何对page排序"
description: ""
category: tips 
tags : [tips]
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
