---
layout: page
title: People
permalink: /people/
---
These are the people in our club
{% for person in site.people %}
  <h2>
    <a href="{{ person.url }}">
      {{ person.name }} - {{ person.position }}
    </a>
  </h2>
{% endfor %}

