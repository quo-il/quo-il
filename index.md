---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
title: ""
---

### {{ site.description }}

<table>
  <thead>
    <tr>
      <th>מפלגה</th>
      <th>עמדה</th>
      <th>פרטים</th>
    </tr>
	</thead>
  {% for party in site.parties %}
    <tr>
      <td>{{ party.title }}</td>
      <td>{{ party.position }}</td>
      <td><a href="{{ party.url }}">פרטים</a></td>
    </tr>
  {% endfor %}
</table>

