---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
title: ""
---

### מהו סטטוס קוו? מה ההשלכות שלו לגבי תחבורה ציבורית בשבת? מה הפולטיקאים עושים לגבי זה? מה העמדות שלהם?

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
      <td><a href="{{ party.url }}">{{ party.title }}</a></td>
      <td>{{ party.position }}</td>
    </tr>
  {% endfor %}
</table>

