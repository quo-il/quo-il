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
      <span class="hide-small">&bull;</span>
      <span class="hide-big"><br></span>
      {% endif %}
    </span>
  {% endfor %}
</p>

{% for basic in basics %}
  <div>
  <h2 style="display: inline;" id="{{ basic.slug }}">{{ basic.title }}</h2>
  {% if basic.add_edit == true %}
  <a class="edit_link_gh" href="https://github.com/quo-il/quo-il/edit/master/{{basic.path}}">לעריכת מקטע</a>
  {% endif %}
  </div>
  {{ basic.content }}
{% endfor %}

