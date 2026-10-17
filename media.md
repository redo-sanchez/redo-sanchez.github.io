---
layout: page
title: Media
permalink: /media/
description: TEDx talks and Harvard Sightlines presentations by Albert Redo-Sanchez on computational imaging and unlimited vision.
---

Talks and interviews on computational imaging and the limits of what cameras can see.

{%- assign videos = "Nu-IoNHGxF8?si=Xs0EM9vkqMzBmOqz|TEDx|Unlimited Vision;d3f8Fk9m7KE?si=dy1MINTjFUTBeCfy|TEDx|Unlimited Vision: post-talk interview;AUwTFaU0sqU?si=jiVJawcRkfNOMS1G|Harvard Sightlines|obSERVE;U27QP-L4AGk?si=XqI19VyXvQ4cCx9_|Harvard Sightlines|obSERVE: panel discussion" | split: ";" %}

<div class="video-grid">
  {%- for v in videos %}
  {%- assign f = v | split: "|" %}
  <figure>
    <iframe loading="lazy" src="https://www.youtube.com/embed/{{ f[0] }}" title="{{ f[1] }}: {{ f[2] }}" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    <figcaption><span class="vg-tag">{{ f[1] }}</span><span class="vg-title">{{ f[2] }}</span></figcaption>
  </figure>
  {%- endfor %}
</div>
