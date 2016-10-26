---
layout: category
published: true
title: "Preview"
abstract: ! "Posts about future releases"
categories:
- Preview
authors:
- andrea
tags:
- Category
---
<ul>
{% for post in site.categories.Preview %}
    <li><a href="{{ post.url }}#main" title="{{ post.title }}">{{ post.date | date_to_string }} - {{ post.title }}</a>: {{ post.abstract | strip_html }}</li>
{% endfor %}
</ul>

