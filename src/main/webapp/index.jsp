<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>LUXE & CO. · modern clothing</title>
  <!-- Google Fonts for clean typography -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <!-- Font Awesome for icons (free) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
      background-color: #fefcf7;
      color: #1e1e1e;
      line-height: 1.5;
    }

    .container {
      max-width: 1400px;
      margin: 0 auto;
      padding: 0 2rem;
    }

    /* ---------- HEADER ---------- */
    header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 1.75rem 2rem;
      border-bottom: 1px solid rgba(0, 0, 0, 0.05);
      background: #fefcf7;
      position: sticky;
      top: 0;
      z-index: 100;
      backdrop-filter: blur(8px);
      background: rgba(254, 252, 247, 0.92);
    }

    .logo {
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.03em;
      color: #1e1e1e;
      text-decoration: none;
    }

    .logo span {
      font-weight: 300;
      color: #9b7b5e;
    }

    .nav-links {
      display: flex;
      gap: 2.5rem;
      list-style: none;
    }

    .nav-links a {
      text-decoration: none;
      color: #1e1e1e;
      font-weight: 500;
      font-size: 1rem;
      transition: color 0.2s;
      letter-spacing: -0.01em;
    }

    .nav-links a:hover {
      color: #9b7b5e;
    }

    .header-icons {
      display: flex;
      gap: 1.5rem;
      font-size: 1.2rem;
      color: #1e1e1e;
    }

    .header-icons i {
      cursor: pointer;
      transition: transform 0.2s, color 0.2s;
    }

    .header-icons i:hover {
      color: #9b7b5e;
      transform: translateY(-2px);
    }

    /* ---------- HERO ---------- */
    .hero {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 4rem;
      padding: 4rem 2rem 5rem;
    }

    .hero-content {
      flex: 1 1 380px;
    }

    .hero-content .tag {
      display: inline-block;
      background: #e8dfd5;
      color: #4b3a2c;
      font-size: 0.75rem;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 1px;
      padding: 0.4rem 1.2rem;
      border-radius: 40px;
      margin-bottom: 1.8rem;
    }

    .hero-content h1 {
      font-size: clamp(2.5rem, 5vw, 4rem);
      font-weight: 700;
      line-height: 1.1;
      letter-spacing: -0.03em;
      margin-bottom: 1.5rem;
      color: #1e1e1e;
    }

    .hero-content h1 .highlight {
      color: #9b7b5e;
      font-weight: 600;
    }

    .hero-content p {
      font-size: 1.1rem;
      color: #5a5a5a;
      max-width: 450px;
      margin-bottom: 2.5rem;
      font-weight: 300;
    }

    .btn-group {
      display: flex;
      gap: 1rem;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      padding: 1rem 2.2rem;
      font-weight: 600;
      font-size: 0.95rem;
      border-radius: 50px;
      text-decoration: none;
      transition: all 0.3s ease;
      cursor: pointer;
      border: 1.5px solid transparent;
      letter-spacing: 0.2px;
    }

    .btn-primary {
      background-color: #1e1e1e;
      color: #fefcf7;
      box-shadow: 0 10px 20px -8px rgba(0, 0, 0, 0.15);
    }

    .btn-primary:hover {
      background-color: #9b7b5e;
      transform: translateY(-3px);
      box-shadow: 0 15px 25px -8px rgba(155, 123, 94, 0.4);
    }

    .btn-secondary {
      background-color: transparent;
      color: #1e1e1e;
      border: 1.5px solid #1e1e1e;
    }

    .btn-secondary:hover {
      background-color: #1e1e1e;
      color: #fefcf7;
      transform: translateY(-3px);
    }

    .hero-image {
      flex: 1 1 380px;
      background: #e8e0d7;
      border-radius: 40% 60% 40% 60% / 50% 40% 60% 50%;
      min-height: 420px;
      display: flex;
      align-items: center;
      justify-content: center;
      position: relative;
      overflow: hidden;
      box-shadow: 0 30px 40px -25px rgba(0,0,0,0.2);
    }

    .hero-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      display: block;
      border-radius: inherit;
    }

    /* decorative floating shapes */
    .hero-image::before {
      content: "✦";
      position: absolute;
      top: 10%;
      left: 5%;
      font-size: 3rem;
      color: rgba(155, 123, 94, 0.3);
      transform: rotate(15deg);
      z-index: 2;
    }

    .hero-image::after {
      content: "◍";
      position: absolute;
      bottom: 8%;
      right: 5%;
      font-size: 4rem;
      color: rgba(255, 255, 255, 0.2);
      z-index: 2;
    }

    /* ---------- CATEGORIES / FEATURED ---------- */
    .section-title {
      text-align: center;
      margin-bottom: 3rem;
    }

    .section-title h2 {
      font-size: 2.2rem;
      font-weight: 600;
      letter-spacing: -0.02em;
      margin-bottom: 0.75rem;
    }

    .section-title p {
      color: #7a7a7a;
      font-weight: 300;
      font-size: 1rem;
      letter-spacing: 0.3px;
    }

    .categories {
      padding: 2rem 2rem 6rem;
    }

    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 2rem;
    }

    .category-card {
      background: #ffffff;
      border-radius: 28px;
      padding: 2rem 1.5rem;
      text-align: center;
      box-shadow: 0 15px 30px -15px rgba(0, 0, 0, 0.05);
      transition: all 0.3s ease;
      border: 1px solid rgba(155, 123, 94, 0.1);
      cursor: pointer;
    }

    .category-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 30px 40px -20px rgba(155, 123, 94, 0.2);
      border-color: #e8dfd5;
    }

    .category-icon {
      font-size: 2.2rem;
      color: #9b7b5e;
      margin-bottom: 1rem;
      background: #f5efe9;
      width: 70px;
      height: 70px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      margin-left: auto;
      margin-right: auto;
    }

    .category-card h3 {
      font-size: 1.2rem;
      font-weight: 600;
      margin-bottom: 0.5rem;
    }

    .category-card p {
      font-size: 0.9rem;
      color: #7a7a7a;
      font-weight: 300;
    }

    /* ---------- PRODUCT GRID (BEST SELLERS) ---------- */
    .bestsellers {
      padding: 3rem 2rem 6rem;
      background: #faf7f2;
      border-radius: 60px 60px 0 0;
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 2rem;
      margin-top: 1rem;
    }

    .product-card {
      background: #ffffff;
      border-radius: 28px;
      overflow: hidden;
      box-shadow: 0 10px 25px -10px rgba(0, 0, 0, 0.05);
      transition: all 0.3s ease;
      border: 1px solid rgba(0, 0, 0, 0.02);
    }

    .product-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 25px 35px -15px rgba(155, 123, 94, 0.2);
    }

    .product-image {
      height: 280px;
      background: #e8e0d7;
      display: flex;
      align-items: center;
      justify-content: center;
      position: relative;
      overflow: hidden;
    }

    .product-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.5s ease;
    }

    .product-card:hover .product-image img {
      transform: scale(1.03);
    }

    .product-badge {
      position: absolute;
      top: 1rem;
      left: 1rem;
      background: #1e1e1e;
      color: #fefcf7;
      font-size: 0.7rem;
      font-weight: 600;
      padding: 0.3rem 1rem;
      border-radius: 40px;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      z-index: 2;
    }

    .product-info {
      padding: 1.5rem 1.5rem 1.8rem;
    }

    .product-info h4 {
      font-size: 1.15rem;
      font-weight: 600;
      margin-bottom: 0.25rem;
    }

    .product-category {
      font-size: 0.8rem;
      color: #9b7b5e;
      font-weight: 500;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      margin-bottom: 0.75rem;
    }

    .product-price {
      font-size: 1.25rem;
      font-weight: 700;
      color: #1e1e1e;
      display: flex;
      align-items: center;
      gap: 0.75rem;
    }

    .old-price {
      font-size: 0.9rem;
      font-weight: 400;
      color: #b0b0b0;
      text-decoration: line-through;
    }

    .add-to-cart {
      margin-top: 1.2rem;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .add-to-cart button {
      background: transparent;
      border: 1.5px solid #e0d6cc;
      color: #1e1e1e;
      padding: 0.6rem 1.5rem;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.85rem;
      cursor: pointer;
      transition: all 0.25s;
      display: flex;
      align-items: center;
      gap: 0.5rem;
      font-family: inherit;
    }

    .add-to-cart button i {
      font-size: 0.9rem;
    }

    .add-to-cart button:hover {
      background: #1e1e1e;
      color: #fefcf7;
      border-color: #1e1e1e;
    }

    .rating {
      color: #c9a87c;
      font-size: 0.8rem;
      letter-spacing: 2px;
    }

    /* ---------- NEWSLETTER ---------- */
    .newsletter {
      padding: 5rem 2rem;
      background: #1e1e1e;
      color: #fefcf7;
      margin-top: 2rem;
      text-align: center;
    }

    .newsletter h3 {
      font-size: 2rem;
      font-weight: 600;
      letter-spacing: -0.02em;
      margin-bottom: 1rem;
    }

    .newsletter p {
      color: #b0b0b0;
      font-weight: 300;
      max-width: 500px;
      margin: 0 auto 2.5rem;
    }

    .newsletter-form {
      display: flex;
      max-width: 480px;
      margin: 0 auto;
      gap: 0.75rem;
      flex-wrap: wrap;
      justify-content: center;
    }

    .newsletter-form input {
      flex: 1 1 240px;
      padding: 1rem 1.5rem;
      border-radius: 50px;
      border: none;
      background: #2e2e2e;
      color: #fefcf7;
      font-family: inherit;
      font-size: 0.95rem;
      outline: none;
      transition: background 0.2s;
    }

    .newsletter-form input::placeholder {
      color: #8a8a8a;
      font-weight: 300;
    }

    .newsletter-form input:focus {
      background: #3a3a3a;
    }

    .newsletter-form button {
      padding: 1rem 2rem;
      border-radius: 50px;
      border: none;
      background: #9b7b5e;
      color: #fefcf7;
      font-weight: 600;
      font-size: 0.95rem;
      cursor: pointer;
      transition: background 0.25s, transform 0.2s;
      font-family: inherit;
    }

    .newsletter-form button:hover {
      background: #b08e6e;
      transform: scale(1.02);
    }

    /* ---------- FOOTER ---------- */
    footer {
      padding: 3rem 2rem 2rem;
      background: #fefcf7;
      border-top: 1px solid rgba(0, 0, 0, 0.05);
    }

    .footer-content {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: center;
      gap: 2rem;
      max-width: 1400px;
      margin: 0 auto;
    }

    .footer-logo {
      font-size: 1.5rem;
      font-weight: 700;
      letter-spacing: -0.03em;
      color: #1e1e1e;
      text-decoration: none;
    }

    .footer-logo span {
      font-weight: 300;
      color: #9b7b5e;
    }

    .footer-links {
      display: flex;
      gap: 2.5rem;
      list-style: none;
      flex-wrap: wrap;
    }

    .footer-links a {
      text-decoration: none;
      color: #5a5a5a;
      font-size: 0.9rem;
      font-weight: 400;
      transition: color 0.2s;
    }

    .footer-links a:hover {
      color: #9b7b5e;
    }

    .social-icons {
      display: flex;
      gap: 1.5rem;
      font-size: 1.2rem;
      color: #5a5a5a;
    }

    .social-icons i {
      cursor: pointer;
      transition: color 0.2s, transform 0.2s;
    }

    .social-icons i:hover {
      color: #9b7b5e;
      transform: translateY(-2px);
    }

    .copyright {
      text-align: center;
      margin-top: 2.5rem;
      font-size: 0.8rem;
      color: #9a9a9a;
      font-weight: 300;
    }

    /* ---------- RESPONSIVE ---------- */
    @media (max-width: 768px) {
      header {
        flex-wrap: wrap;
        gap: 1rem;
        padding: 1.25rem 1.5rem;
      }

      .nav-links {
        gap: 1.5rem;
        order: 3;
        width: 100%;
        justify-content: center;
        padding-top: 0.5rem;
      }

      .hero {
        padding: 2rem 1.5rem 3rem;
        gap: 2rem;
      }

      .hero-image {
        min-height: 300px;
      }

      .container {
        padding: 0 1rem;
      }

      .bestsellers {
        border-radius: 30px 30px 0 0;
        padding: 2rem 1.5rem 4rem;
      }

      .footer-content {
        flex-direction: column;
        text-align: center;
      }

      .footer-links {
        justify-content: center;
        gap: 1.5rem;
      }
    }

    @media (max-width: 480px) {
      .btn {
        padding: 0.85rem 1.8rem;
        font-size: 0.9rem;
      }

      .hero-content h1 {
        font-size: 2.2rem;
      }

      .category-grid {
        grid-template-columns: 1fr 1fr;
        gap: 1rem;
      }

      .category-card {
        padding: 1.5rem 0.75rem;
      }

      .product-grid {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>
<body>

  <!-- HEADER -->
  <header>
    <a href="#" class="logo">LUXE <span>& CO.</span></a>
    <ul class="nav-links">
      <li><a href="#">New In</a></li>
      <li><a href="#">Women</a></li>
      <li><a href="#">Men</a></li>
      <li><a href="#">Accessories</a></li>
      <li><a href="#">Journal</a></li>
    </ul>
    <div class="header-icons">
      <i class="fas fa-search"></i>
      <i class="far fa-user"></i>
      <i class="far fa-heart"></i>
      <i class="fas fa-shopping-bag"></i>
    </div>
  </header>

  <main>
    <!-- HERO -->
    <section class="hero container">
      <div class="hero-content">
        <span class="tag">spring / summer 2025</span>
        <h1>Elevate your <span class="highlight">everyday</span> style.</h1>
        <p>Timeless pieces, consciously crafted. Discover the new collection of refined essentials made for the modern wardrobe.</p>
        <div class="btn-group">
          <a href="#" class="btn btn-primary">Shop collection <i class="fas fa-arrow-right" style="margin-left: 8px;"></i></a>
          <a href="#" class="btn btn-secondary">Explore lookbook</a>
        </div>
      </div>
      <div class="hero-image">
        <!-- Placeholder visual with subtle texture — you can replace with an actual image -->
        <img src="https://images.unsplash.com/photo-1539109136881-3be0616acf4b?q=80&w=1200&auto=format&fit=crop" alt="Fashion model wearing modern clothing" style="opacity:0.95;">
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="categories container">
      <div class="section-title">
        <h2>Shop by category</h2>
        <p>Refined pieces for every moment</p>
      </div>
      <div class="category-grid">
        <div class="category-card">
          <div class="category-icon"><i class="fas fa-tshirt"></i></div>
          <h3>Essentials</h3>
          <p>Everyday basics</p>
        </div>
        <div class="category-card">
          <div class="category-icon"><i class="fas fa-female"></i></div>
          <h3>Women</h3>
          <p>Modern silhouettes</p>
        </div>
        <div class="category-card">
          <div class="category-icon"><i class="fas fa-male"></i></div>
          <h3>Men</h3>
          <p>Tailored comfort</p>
        </div>
        <div class="category-card">
          <div class="category-icon"><i class="fas fa-gem"></i></div>
          <h3>Accessories</h3>
          <p>Finishing touches</p>
        </div>
      </div>
    </section>

    <!-- BEST SELLERS -->
    <section class="bestsellers">
      <div class="container">
        <div class="section-title">
          <h2>Best sellers</h2>
          <p>Loved by our community</p>
        </div>
        <div class="product-grid">
          <!-- Product 1 -->
          <div class="product-card">
            <div class="product-image">
              <span class="product-badge">New</span>
              <img src="https://images.unsplash.com/photo-1591047139829-d91aecb6caea?q=80&w=800&auto=format&fit=crop" alt="Oversized cotton shirt">
            </div>
            <div class="product-info">
              <div class="product-category">Women · Shirts</div>
              <h4>Oversized Cotton Shirt</h4>
              <div class="product-price">$89 <span class="old-price">$120</span></div>
              <div class="add-to-cart">
                <button><i class="fas fa-shopping-bag"></i> Add</button>
                <span class="rating">★★★★★</span>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="product-card">
            <div class="product-image">
              <img src="https://images.unsplash.com/photo-1620799140408-edc6dcb6d633?q=80&w=800&auto=format&fit=crop" alt="Merino wool sweater">
            </div>
            <div class="product-info">
              <div class="product-category">Men · Knitwear</div>
              <h4>Merino Wool Sweater</h4>
              <div class="product-price">$145</div>
              <div class="add-to-cart">
                <button><i class="fas fa-shopping-bag"></i> Add</button>
                <span class="rating">★★★★☆</span>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="product-card">
            <div class="product-image">
              <span class="product-badge">Bestseller</span>
              <img src="https://images.unsplash.com/photo-1541099649105-f69ad21f3246?q=80&w=800&auto=format&fit=crop" alt="Wide leg trousers">
            </div>
            <div class="product-info">
              <div class="product-category">Women · Trousers</div>
              <h4>Wide Leg Trousers</h4>
              <div class="product-price">$110</div>
              <div class="add-to-cart">
                <button><i class="fas fa-shopping-bag"></i> Add</button>
                <span class="rating">★★★★★</span>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="product-card">
            <div class="product-image">
              <img src="https://images.unsplash.com/photo-1551028719-00167b16eac5?q=80&w=800&auto=format&fit=crop" alt="Leather jacket">
            </div>
            <div class="product-info">
              <div class="product-category">Men · Outerwear</div>
              <h4>Minimal Leather Jacket</h4>
              <div class="product-price">$299 <span class="old-price">$380</span></div>
              <div class="add-to-cart">
                <button><i class="fas fa-shopping-bag"></i> Add</button>
                <span class="rating">★★★★☆</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="newsletter">
      <div class="container">
        <h3>Stay in the loop</h3>
        <p>Be the first to know about new arrivals, exclusive offers, and styling tips.</p>
        <div class="newsletter-form">
          <input type="email" placeholder="Your email address" aria-label="Email address">
          <button>Subscribe</button>
        </div>
      </div>
    </section>
  </main>

  <!-- FOOTER -->
  <footer>
    <div class="footer-content">
      <a href="#" class="footer-logo">LUXE <span>& CO.</span></a>
      <ul class="footer-links">
        <li><a href="#">About</a></li>
        <li><a href="#">Sustainability</a></li>
        <li><a href="#">Shipping</a></li>
        <li><a href="#">Returns</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <div class="social-icons">
        <i class="fab fa-instagram"></i>
        <i class="fab fa-pinterest"></i>
        <i class="fab fa-tiktok"></i>
        <i class="fab fa-twitter"></i>
      </div>
    </div>
    <div class="copyright">
      © 2025 LUXE & CO. — Crafted with intention.
    </div>
  </footer>

</body>
</html>
