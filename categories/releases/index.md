---
layout: category
published: true
title: "Releases"
abstract: ! "Posts about official releases"
categories:
- Releases
authors:
- andrea
tags:
- Category
---
<ul>
{% for post in site.categories.Releases %}
    <li><a href="{{ post.url }}#main" title="{{ post.title }}">{{ post.date | date_to_string }} - {{ post.title }}</a>: {{ post.abstract | strip_html }}</li>
{% endfor %}
</ul>

