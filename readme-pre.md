---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: for-readme
title: ""
---
  
{% assign basics = site.basics | sort: 'sort_order' %}
{% assign non_header_basics = basics | where_exp:'item', 'item.header_exclude != null' %}

{% for basic in non_header_basics %}
  <h2>{{ basic.title }}</h2>
  {{ basic.content }}
{% endfor %}
