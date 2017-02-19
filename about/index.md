---
layout: page
published: true
title: "About Emulated Virtual Environment"
abstract: ! "About UNetLab | EVE software and developers."
categories:
- About
authors:
- andrea
tags:
- EVE
---

The EVE project is under heavy development. If you want to stay updated with beta release and enhancement, you can subscribe to our mailing list.

## Team

{% for author in site.authors %}
	{% for person in author %}


{% if person.name %}
<h3>{{ person.name }}</h3>

<ul>
	{% if person.title %}
	<li>{{ person.title }}</li>
	{% endif %}
	{% if person.email %}
	<li>Email: <a href="mailto:{{ person.email }}" title="Email to {{ person.display_name }}">{{ person.email }}</a></li>
	{% endif %}
	{% if person.web %}
	<li>Web: <a href="{{ person.web }}" title="{{ person.display_name }}'s personal website">{{ person.web }}</a></li>
	{% endif %}
	{% if person.twitter %}
	<li>Twitter: <a href="https://twitter.com/{{ person.twitter }}" title="Tweet to {{ person.display_name }}">@{{ person.twitter }}</a></li>
	{% endif %}
	{% if person.github %}
	<li>Github: <a href="https://github.com/{{ person.github }}" title="{{ person.display_name }}'s GitHub repository">{{ person.github }}</a></li>
	{% endif %}
	{% if person.linkedin %}
	<li>LinkedIN: <a href="https://www.linkedin.com/in/{{ person.linkedin }}" title="{{ person.display_name }}'s LinkedIN profile">{{ person.linkedin }}</a></li>
	{% endif %}
	{% if person.gplus %}
	<li>gplus: <a href="https://plus.google.com/u/0/+{{ person.gplus }}" title="{{ person.display_name }}'s Google+ profile">+{{ person.gplus }}</a></li>
	{% endif %}
</ul>
{% endif %}
	{% endfor %}
{% endfor %}


## Subscribe to our mailing list

<form id="mc-embedded-subscribe-form" class="validate" action="//routereflector.us8.list-manage.com/subscribe/post?u=b36efd297d5554996ebcac015&amp;id=4022668085" method="post" name="mc-embedded-subscribe-form" novalidate="" target="_blank">
<input id="mce-EMAIL" class="required email" name="email" type="email" value="" />
<label for="email">Email Address (required)</label><br/>
<input id="mce-FNAME" class="" name="fname" type="text" value="" />
<label for="fname">First Name</label><br/>
<input id="mce-LNAME" class="" name="lname" type="text" value="" />
<label for="lname">Last Name</label><br/>
<input id="mc-embedded-subscribe" class="button" name="subscribe" type="submit" value="Subscribe" />
</form>
