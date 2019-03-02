---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
title: ""
---

{% assign basics = site.basics | sort: 'sort_order' %}

<p align="center">
  {% for basic in basics %}
    <span style="display: inline-block;">
      <a href="#{{ basic.slug }}">{{ basic.title_pre | default: basic.title }}</a>
      {% if forloop.last == false %}
      &bull;
      {% endif %}
    </span>
  {% endfor %}
</p>

{% for basic in basics %}
  <h2 id="{{ basic.slug }}">{{ basic.title }}</h2>
  {{ basic.content }}
{% endfor %}

