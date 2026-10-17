---
layout: default
title: Home
description: Albert Redo-Sanchez, Professor at Universidad de Zaragoza. Research in NLOS imaging, terahertz technology, and computer vision.
---

<section class="hero">
  <div class="hero-inner">
    <img class="hero-photo" src="{{ '/assets/images/foto_pro.jpg' | relative_url }}" alt="Albert Redo-Sanchez">
    <div class="hero-text">
      <h1>Albert Redo-Sanchez, PhD</h1>
      <p class="hero-role">Professor, <a href="https://eina.unizar.es/">Universidad de Zaragoza</a> · <a href="https://graphics.unizar.es/">Graphics and Imaging Lab</a></p>
      <p class="hero-tagline">Computational imaging: <span>seeing around corners</span>, through objects and beyond the visible.</p>
      <nav class="hero-links" aria-label="Profiles">
        <a href="mailto:aredo@unizar.es"><i class="fa-solid fa-envelope"></i>Email</a>
        <a href="https://scholar.google.com/citations?user=Wjhap7MAAAAJ&hl=en"><i class="ai ai-google-scholar"></i>Scholar</a>
        <a href="https://orcid.org/0000-0002-0601-4820"><i class="ai ai-orcid"></i>ORCID</a>
        <a href="https://www.linkedin.com/in/redosanchez/"><i class="fa-brands fa-linkedin"></i>LinkedIn</a>
        <a href="https://github.com/redo-sanchez"><i class="fa-brands fa-github"></i>GitHub</a>
        <a class="hero-cv" href="{{ '/assets/cv/Albert_Redo-Sanchez_CV.pdf' | relative_url }}"><i class="fa-solid fa-file-arrow-down"></i>Download CV</a>
      </nav>
    </div>
  </div>
</section>

<p class="lead">{{ site.data.profile.bio }}</p>

## Recent highlights

<ul class="highlights">
  <li><span class="when">2026</span><span><em>Transient polarimetry</em>, poster at SIGGRAPH 2026.</span></li>
  <li><span class="when">2025</span><span><a href="https://doi.org/10.1145/3763361"><em>Artifact-resilient real-time holography</em></a> published in ACM Transactions on Graphics.</span></li>
  <li><span class="when">2024</span><span><a href="https://doi.org/10.1145/3680528.3687575"><em>Time-gated polarization for active non-line-of-sight imaging</em></a> presented at SIGGRAPH Asia 2024, Tokyo.</span></li>
  <li><span class="when">2024</span><span>Invited talk on the Dirac-notation framework for NLOS imaging at Optics, Photonics and Lasers, Valencia.</span></li>
</ul>

## Projects

{% include project-cards.html %}

<p><a class="see-all" href="{{ '/projects/' | relative_url }}">More about each project →</a></p>

## Selected publications

<ul class="pub-list">
  <li>
    <span class="badge">Nature Communications</span><span class="badge">2016</span><br>
    <a class="pub-title" href="https://doi.org/10.1038/ncomms12665">Terahertz time-gated spectral imaging for content extraction through layered structures</a><br>
    <span class="pub-meta"><strong>Redo-Sanchez, A.</strong>, Heshmat, B., Aghasi, A., Naqvi, S., Zhang, M., Romberg, J., &amp; Raskar, R.</span>
  </li>
  <li>
    <span class="badge">ACM Transactions on Graphics</span><span class="badge">2025</span><br>
    <a class="pub-title" href="https://doi.org/10.1145/3763361">Artifact-resilient real-time holography</a><br>
    <span class="pub-meta">Chu, V., Pueyo-Ciutad, O., Tseng, E., Schiffers, F., Kuo, G., Matsuda, N., <strong>Redo-Sanchez, A.</strong>, Lanman, D., Cossairt, O., &amp; Heide, F.</span>
  </li>
  <li>
    <span class="badge">SIGGRAPH Asia</span><span class="badge">2024</span><br>
    <a class="pub-title" href="https://doi.org/10.1145/3680528.3687575">Time-Gated Polarization for Active Non-Line-Of-Sight Imaging</a><br>
    <span class="pub-meta">Pueyo-Ciutad, O., Marco, J., Schertzer, S., Christnacher, F., Laurenzis, M., Gutierrez, D., &amp; <strong>Redo-Sanchez, A.</strong></span>
  </li>
  <li>
    <span class="badge">Optics Express</span><span class="badge">2024</span><br>
    <a class="pub-title" href="https://doi.org/10.1364/oe.518466">Cohesive framework for non-line-of-sight imaging based on Dirac notation</a><br>
    <span class="pub-meta"><strong>Redo-Sanchez, A.</strong>, Luesia-Lahoz, P., Gutierrez, D., &amp; Muñoz, A.</span>
  </li>
  <li>
    <span class="badge">Optica</span><span class="badge">2016</span><br>
    <a class="pub-title" href="https://doi.org/10.1364/optica.3.000754">Sweep distortion removal from terahertz images via blind demodulation</a><br>
    <span class="pub-meta">Aghasi, A., Heshmat, B., <strong>Redo-Sanchez, A.</strong>, Romberg, J., &amp; Raskar, R.</span>
  </li>
</ul>

<p><a class="see-all" href="{{ '/publications/' | relative_url }}">All publications and patents →</a></p>

## Research areas

<ul class="chips">
  {%- for area in site.data.profile.research_areas %}
  <li>{{ area }}</li>
  {%- endfor %}
</ul>

## Skillset

<div class="skill-grid">
  {%- for sk in site.data.profile.skills %}
  <div><h3><i class="fa-solid {{ sk.icon }}"></i> {{ sk.title }}</h3><p>{{ sk.text }}</p></div>
  {%- endfor %}
</div>

