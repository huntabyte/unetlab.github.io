---
layout: category
published: true
title: "HowTo"
abstract: ! "Posts about how to do things"
categories:
- HowTo
authors:
- andrea
tags:
- Category
---
<ul>
{% for post in site.categories.HowTo %}
    <li><a href="{{ post.url }}#main" title="{{ post.title }}">{{ post.date | date_to_string }} - {{ post.title }}</a>: {{ post.abstract | strip_html }}</li>
{% endfor %}
</ul>

