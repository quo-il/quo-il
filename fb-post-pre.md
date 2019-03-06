---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: for-plaintext
title: ""
highlighter: none

---
עדכון באתר!

***** מפלגות *****

{% for party in site.parties %}{{ party.short_title | default: party.title }}
{% endfor %}

***** פוליטיקאים *****

{% for person in site.people %}{{ person.title }}
{% endfor %}
