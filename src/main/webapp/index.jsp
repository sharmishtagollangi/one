<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Nova · modern portfolio</title>
  <!-- Google Fonts + Font Awesome for clean icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* ---------- RESET & GLOBAL ---------- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: #f9fafc;
      color: #1a1e2b;
      line-height: 1.5;
      scroll-behavior: smooth;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    ul {
      list-style: none;
    }

    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ---------- HEADER / NAV ---------- */
    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 20px 0;
      flex-wrap: wrap;
    }

    .logo {
      font-weight: 700;
      font-size: 1.8rem;
      letter-spacing: -0.03em;
      background: linear-gradient(135deg, #1e2b5e, #3e5cc9);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .nav-links {
      display: flex;
      gap: 2.5rem;
    }

    .nav-links a {
      font-weight: 500;
      font-size: 1rem;
      color: #2e3440;
      transition: color 0.2s;
      position: relative;
    }

    .nav-links a:hover {
      color: #3e5cc9;
    }

    .nav-links a::after {
      content: '';
      position: absolute;
      width: 0;
      height: 2px;
      bottom: -4px;
      left: 0;
      background: #3e5cc9;
      transition: width 0.2s;
    }

    .nav-links a:hover::after {
      width: 100%;
    }

    .btn-outline {
      border: 2px solid #3e5cc9;
      padding: 8px 20px;
      border-radius: 30px;
      font-weight: 600;
      color: #3e5cc9;
      transition: all 0.2s;
    }

    .btn-outline:hover {
      background: #3e5cc9;
      color: white;
      transform: translateY(-1px);
    }

    .btn-primary {
      background: #3e5cc9;
      color: white;
      padding: 12px 32px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 1.1rem;
      display: inline-block;
      transition: all 0.2s;
      box-shadow: 0 8px 18px -6px rgba(62, 92, 201, 0.4);
    }

    .btn-primary:hover {
      background: #2b46a5;
      transform: translateY(-2px);
      box-shadow: 0 14px 24px -8px rgba(62, 92, 201, 0.5);
    }

    /* ---------- HERO ---------- */
    .hero {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      padding: 60px 0 80px;
      flex-wrap: wrap;
    }

    .hero-content {
      flex: 1 1 300px;
    }

    .hero-badge {
      display: inline-block;
      background: #e9ecf5;
      color: #2b3b7c;
      font-weight: 600;
      font-size: 0.85rem;
      padding: 6px 14px;
      border-radius: 50px;
      margin-bottom: 24px;
      letter-spacing: 0.4px;
    }

    .hero-content h1 {
      font-size: 3.5rem;
      font-weight: 700;
      line-height: 1.2;
      letter-spacing: -0.03em;
      color: #121826;
      margin-bottom: 20px;
    }

    .highlight {
      color: #3e5cc9;
      border-bottom: 4px solid #d0d9ff;
    }

    .hero-content p {
      font-size: 1.2rem;
      color: #4e586d;
      max-width: 520px;
      margin-bottom: 32px;
    }

    .hero-image {
      flex: 0 1 360px;
      display: flex;
      justify-content: center;
      align-items: center;
      background: linear-gradient(145deg, #eef1fa, #ffffff);
      border-radius: 50% 30% 50% 30% / 40% 50% 40% 50%;
      padding: 30px 30px;
      box-shadow: 20px 20px 40px rgba(0, 0, 0, 0.02), -10px -10px 30px #ffffff inset;
    }

    .avatar-icon {
      font-size: 13rem;
      color: #2d3f7a;
      background: white;
      width: 250px;
      height: 250px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      box-shadow: 0 25px 40px -10px rgba(45, 63, 122, 0.2);
      transition: transform 0.3s;
    }

    .avatar-icon i {
      font-size: 8rem;
      color: #3e5cc9;
      filter: drop-shadow(0 10px 12px rgba(62, 92, 201, 0.15));
    }

    /* ---------- SECTION TITLES ---------- */
    .section-title {
      font-size: 2.2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      margin-bottom: 12px;
      color: #141b2b;
    }

    .section-subtitle {
      font-size: 1.1rem;
      color: #5c6479;
      margin-bottom: 48px;
      max-width: 600px;
    }

    /* ---------- PROJECTS GRID ---------- */
    .projects-section {
      padding: 80px 0;
      background: white;
      border-radius: 60px 60px 0 0;
    }

    .grid-3 {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 30px;
    }

    .project-card {
      background: #f9fafc;
      border-radius: 32px;
      padding: 30px 28px;
      transition: all 0.25s ease;
      border: 1px solid #edf0f7;
    }

    .project-card:hover {
      transform: translateY(-6px);
      background: white;
      box-shadow: 0 30px 40px -20px rgba(0, 0, 0, 0.15);
      border-color: transparent;
    }

    .project-icon {
      font-size: 2.4rem;
      background: linear-gradient(145deg, #e9edfa, #ffffff);
      width: 70px;
      height: 70px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 20px;
      margin-bottom: 28px;
      color: #3e5cc9;
      box-shadow: 6px 6px 12px #e2e6f0, -6px -6px 12px #ffffff;
    }

    .project-card h3 {
      font-size: 1.4rem;
      font-weight: 600;
      margin-bottom: 12px;
      color: #1a1f2e;
    }

    .project-card p {
      color: #5b6277;
      margin-bottom: 24px;
      font-size: 0.98rem;
    }

    .project-tag {
      display: inline-block;
      background: white;
      padding: 6px 16px;
      border-radius: 40px;
      font-size: 0.8rem;
      font-weight: 600;
      color: #3e5cc9;
      border: 1px solid #dbe2f5;
      letter-spacing: 0.3px;
    }

    /* ---------- ABOUT / SKILLS ---------- */
    .about-section {
      padding: 80px 0;
    }

    .about-grid {
      display: flex;
      gap: 60px;
      align-items: center;
      flex-wrap: wrap;
    }

    .about-text {
      flex: 2 1 380px;
    }

    .about-text h2 {
      font-size: 2.2rem;
      font-weight: 700;
      margin-bottom: 20px;
      letter-spacing: -0.02em;
    }

    .about-text p {
      font-size: 1.1rem;
      color: #414b60;
      margin-bottom: 28px;
    }

    .skill-list {
      display: flex;
      flex-wrap: wrap;
      gap: 14px;
    }

    .skill-item {
      background: white;
      padding: 10px 24px;
      border-radius: 40px;
      font-weight: 500;
      color: #1e2a4a;
      box-shadow: 0 2px 8px rgba(0, 0, 0, 0.02);
      border: 1px solid #e4e9f2;
      font-size: 0.95rem;
    }

    .about-stats {
      flex: 1 1 240px;
      display: flex;
      flex-direction: column;
      gap: 24px;
      background: white;
      padding: 36px 30px;
      border-radius: 40px;
      box-shadow: 0 18px 40px -12px rgba(0, 0, 0, 0.08);
      border: 1px solid #f0f3fa;
    }

    .stat-item {
      display: flex;
      align-items: center;
      gap: 18px;
    }

    .stat-number {
      font-size: 2rem;
      font-weight: 700;
      color: #3e5cc9;
      line-height: 1;
    }

    .stat-label {
      color: #5f677b;
      font-weight: 500;
      font-size: 0.95rem;
    }

    /* ---------- CTA BANNER ---------- */
    .cta-banner {
      background: linear-gradient(120deg, #19224b, #26357a);
      border-radius: 60px;
      padding: 60px 40px;
      margin: 60px 0 40px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 30px;
    }

    .cta-banner h2 {
      color: white;
      font-size: 2.1rem;
      font-weight: 600;
      letter-spacing: -0.02em;
      max-width: 600px;
    }

    .cta-banner .btn-primary {
      background: white;
      color: #1e2b5e;
      box-shadow: none;
      font-size: 1.1rem;
    }

    .cta-banner .btn-primary:hover {
      background: #f0f3ff;
      transform: translateY(-2px);
    }

    /* ---------- FOOTER ---------- */
    footer {
      padding: 40px 0;
      text-align: center;
      color: #70798e;
      border-top: 1px solid #e5eaf2;
      margin-top: 30px;
      font-size: 0.95rem;
    }

    .social-icons {
      display: flex;
      justify-content: center;
      gap: 28px;
      margin-bottom: 24px;
    }

    .social-icons a {
      color: #404b62;
      font-size: 1.6rem;
      transition: all 0.2s;
    }

    .social-icons a:hover {
      color: #3e5cc9;
      transform: scale(1.1);
    }

    /* ---------- RESPONSIVE ---------- */
    @media (max-width: 700px) {
      .hero-content h1 {
        font-size: 2.6rem;
      }

      .navbar {
        flex-direction: column;
        gap: 16px;
      }

      .nav-links {
        gap: 1.8rem;
        flex-wrap: wrap;
        justify-content: center;
      }

      .hero {
        padding: 40px 0 60px;
        justify-content: center;
        text-align: center;
      }

      .hero-content p {
        margin-left: auto;
        margin-right: auto;
      }

      .hero-image {
        flex: 0 1 260px;
        padding: 10px;
      }

      .avatar-icon {
        width: 200px;
        height: 200px;
      }

      .avatar-icon i {
        font-size: 6rem;
      }

      .cta-banner {
        text-align: center;
        justify-content: center;
      }

      .cta-banner h2 {
        font-size: 1.7rem;
      }

      .section-title {
        font-size: 1.9rem;
      }
    }

    @media (max-width: 480px) {
      .container {
        padding: 0 18px;
      }

      .btn-outline {
        padding: 6px 16px;
      }
    }
  </style>
</head>
<body>

  <!-- header & navigation -->
  <header>
    <div class="container navbar">
      <div class="logo">nova<span style="color:#3e5cc9;">.</span></div>
      <ul class="nav-links">
        <li><a href="#">Work</a></li>
        <li><a href="#">Projects</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#" class="btn-outline">Contact</a></li>
      </ul>
    </div>
  </header>

  <!-- hero section -->
  <main>
    <div class="container hero">
      <div class="hero-content">
        <span class="hero-badge"><i class="fas fa-code" style="margin-right: 6px;"></i> product engineer</span>
        <h1>Build <span class="highlight">digital</span> products that matter.</h1>
        <p>I’m Alex — I design and develop clean, performant web experiences with a focus on simplicity and user delight.</p>
        <a href="#" class="btn-primary">See my work <i class="fas fa-arrow-right" style="margin-left: 8px;"></i></a>
      </div>
      <div class="hero-image">
        <div class="avatar-icon">
          <i class="fas fa-user-astronaut"></i>
        </div>
      </div>
    </div>

    <!-- projects / work -->
    <section class="projects-section">
      <div class="container">
        <h2 class="section-title">Featured projects</h2>
        <p class="section-subtitle">A selection of recent work — from concept to launch.</p>
        <div class="grid-3">
          <!-- card 1 -->
          <div class="project-card">
            <div class="project-icon"><i class="fas fa-chart-pie"></i></div>
            <h3>Insightly</h3>
            <p>Analytics dashboard with real‑time visualization and custom reporting for product teams.</p>
            <span class="project-tag">React · D3</span>
          </div>
          <!-- card 2 -->
          <div class="project-card">
            <div class="project-icon"><i class="fas fa-cart-shopping"></i></div>
            <h3>Marketplace</h3>
            <p>Modular e‑commerce platform with headless CMS and global payment integration.</p>
            <span class="project-tag">Next.js · Stripe</span>
          </div>
          <!-- card 3 -->
          <div class="project-card">
            <div class="project-icon"><i class="fas fa-pen-fancy"></i></div>
            <h3>Folio</h3>
            <p>Collaborative writing tool with real‑time editing and AI‑assisted suggestions.</p>
            <span class="project-tag">Vue · Firebase</span>
          </div>
        </div>
      </div>
    </section>

    <!-- about + skills -->
    <section class="about-section">
      <div class="container about-grid">
        <div class="about-text">
          <h2>Crafting with intention.</h2>
          <p>I’ve spent the last 6+ years building products for startups and agencies. I care deeply about accessibility, performance, and clean architecture. My approach is collaborative — from whiteboard to production.</p>
          <div class="skill-list">
            <span class="skill-item">React & Next.js</span>
            <span class="skill-item">TypeScript</span>
            <span class="skill-item">Node.js</span>
            <span class="skill-item">UI/UX design</span>
            <span class="skill-item">Tailwind</span>
            <span class="skill-item">Figma</span>
          </div>
        </div>
        <div class="about-stats">
          <div class="stat-item">
            <span class="stat-number">6+</span>
            <span class="stat-label">years of experience</span>
          </div>
          <div class="stat-item">
            <span class="stat-number">30+</span>
            <span class="stat-label">projects delivered</span>
          </div>
          <div class="stat-item">
            <span class="stat-number">12</span>
            <span class="stat-label">open source contributions</span>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA banner -->
    <div class="container">
      <div class="cta-banner">
        <h2>Let’s build something great together.</h2>
        <a href="#" class="btn-primary">Get in touch <i class="fas fa-paper-plane" style="margin-left: 8px;"></i></a>
      </div>
    </div>
  </main>

  <!-- footer -->
  <footer>
    <div class="container">
      <div class="social-icons">
        <a href="#" aria-label="GitHub"><i class="fab fa-github"></i></a>
        <a href="#" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
        <a href="#" aria-label="X / Twitter"><i class="fab fa-x-twitter"></i></a>
        <a href="#" aria-label="Dribbble"><i class="fab fa-dribbble"></i></a>
      </div>
      <p>© 2025 Nova — designed & built with <i class="fas fa-heart" style="color: #3e5cc9;"></i></p>
    </div>
  </footer>

</body>
</html>
