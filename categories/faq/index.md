---
layout: category
published: true
title: "FAQ"
abstract: ! "Posts about Frequently Asked Questions"
categories:
- FAQ
authors:
- andrea
tags:
- Category
---
<ul>
{% for post in site.categories.FAQ %}
    <li><a href="{{ post.url }}#main" title="{{ post.title }}">{{ post.date | date_to_string }} - {{ post.title }}</a>: {{ post.abstract | strip_html }}</li>
{% endfor %}
</ul>

