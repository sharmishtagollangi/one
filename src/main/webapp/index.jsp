<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NexusShop — Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== ROOT VARIABLES (refreshed palette) ========== */
        :root {
            --bg: #f8f9fc;
            --bg-card: #ffffff;
            --primary: #0f172a;
            --primary-light: #1e293b;
            --accent: #e85a4f;
            --accent-light: #fde2dd;
            --accent-hover: #d1493e;
            --text-main: #0f172a;
            --text-muted: #5b6778;
            --border-subtle: #eef2f6;
            --shadow-sm: 0 4px 12px rgba(0, 0, 0, 0.02);
            --shadow-md: 0 12px 28px -8px rgba(0, 0, 0, 0.06);
            --shadow-lg: 0 24px 48px -12px rgba(0, 0, 0, 0.12);
            --radius-md: 16px;
            --radius-lg: 24px;
            --radius-xl: 32px;
            --transition: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1);
        }

        /* ========== RESET & BASE ========== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: var(--bg);
            font-family: 'Inter', sans-serif;
            color: var(--text-main);
            line-height: 1.5;
            padding: 24px;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* main app container – refined spacing, soft shadow */
        .app {
            max-width: 1280px;
            width: 100%;
            background: var(--bg-card);
            border-radius: var(--radius-xl);
            box-shadow: var(--shadow-lg);
            padding: 32px 36px;
            transition: var(--transition);
        }

        /* ========== TYPOGRAPHY & UTILS ========== */
        .font-display {
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            letter-spacing: -0.02em;
        }

        h1, h2, h3 {
            font-weight: 600;
            letter-spacing: -0.02em;
        }

        /* ========== HEADER / NAVIGATION ========== */
        .navbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 40px;
            padding-bottom: 16px;
            border-bottom: 1px solid var(--border-subtle);
        }

        .logo {
            font-size: 1.9rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            color: var(--primary);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .logo i {
            color: var(--accent);
            font-size: 1.8rem;
        }

        .nav-links {
            display: flex;
            gap: 36px;
            font-weight: 500;
            color: var(--text-muted);
            font-size: 0.95rem;
        }

        .nav-links a {
            text-decoration: none;
            color: inherit;
            transition: var(--transition);
            position: relative;
        }

        .nav-links a:hover {
            color: var(--primary);
        }

        .nav-links a::after {
            content: '';
            position: absolute;
            bottom: -6px;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--accent);
            transition: var(--transition);
            border-radius: 2px;
        }

        .nav-links a:hover::after {
            width: 100%;
        }

        .nav-icons {
            display: flex;
            align-items: center;
            gap: 20px;
            color: var(--primary-light);
            font-size: 1.2rem;
        }

        .nav-icons i {
            cursor: default;
            transition: var(--transition);
        }

        .nav-icons i:hover {
            color: var(--accent);
        }

        .cart-badge {
            background: var(--accent);
            color: white;
            font-size: 0.65rem;
            font-weight: 700;
            padding: 2px 6px;
            border-radius: 30px;
            margin-left: 4px;
            vertical-align: middle;
        }

        /* ========== HERO SECTION ========== */
        .hero {
            display: grid;
            grid-template-columns: 1fr 0.9fr;
            gap: 48px;
            align-items: center;
            margin-bottom: 64px;
            background: linear-gradient(145deg, #ffffff 0%, #fbfdff 100%);
            padding: 24px 16px 24px 24px;
            border-radius: var(--radius-lg);
        }

        .hero-content {
            max-width: 500px;
        }

        .hero-tag {
            display: inline-block;
            background: var(--accent-light);
            color: var(--accent);
            font-weight: 600;
            font-size: 0.8rem;
            padding: 6px 14px;
            border-radius: 40px;
            letter-spacing: 0.3px;
            margin-bottom: 20px;
            text-transform: uppercase;
        }

        .hero-title {
            font-size: 3.2rem;
            line-height: 1.1;
            font-weight: 700;
            color: var(--primary);
            margin-bottom: 20px;
        }

        .hero-title span {
            color: var(--accent);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
        }

        .hero-sub {
            font-size: 1.05rem;
            color: var(--text-muted);
            margin-bottom: 32px;
            max-width: 400px;
        }

        .btn-group {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 14px 32px;
            border-radius: 50px;
            font-weight: 600;
            font-size: 0.95rem;
            text-decoration: none;
            transition: var(--transition);
            cursor: default;
            border: none;
            background: none;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
            box-shadow: 0 8px 18px -6px rgba(15, 23, 42, 0.25);
        }

        .btn-primary:hover {
            background: #1e293b;
            transform: translateY(-2px);
            box-shadow: 0 14px 24px -8px rgba(15, 23, 42, 0.35);
        }

        .btn-outline {
            background: transparent;
            color: var(--primary);
            border: 1.5px solid var(--border-subtle);
        }

        .btn-outline:hover {
            background: white;
            border-color: var(--accent);
            color: var(--accent);
            transform: translateY(-2px);
        }

        /* hero visual – modern abstract product card */
        .hero-visual {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .hero-card {
            background: #ffffff;
            border-radius: var(--radius-lg);
            box-shadow: var(--shadow-md);
            padding: 20px 20px 30px;
            width: 100%;
            max-width: 320px;
            transition: var(--transition);
            border: 1px solid var(--border-subtle);
            transform: rotate(2deg);
        }

        .hero-card:hover {
            transform: rotate(0deg) scale(1.02);
            box-shadow: var(--shadow-lg);
        }

        .hero-card-img {
            background: #f1f4f9;
            border-radius: var(--radius-md);
            height: 180px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 18px;
            color: #b9c2d0;
            font-size: 3.6rem;
        }

        .hero-card-price {
            font-weight: 700;
            font-size: 1.6rem;
            color: var(--primary);
            margin-top: 6px;
        }

        .hero-card-meta {
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: var(--text-muted);
            font-size: 0.9rem;
        }

        .rating i {
            color: #f5b342;
            font-size: 0.8rem;
            margin-right: 2px;
        }

        /* ========== PRODUCT GRID SECTION ========== */
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 28px;
        }

        .section-title {
            font-size: 1.8rem;
            font-weight: 700;
            color: var(--primary);
            letter-spacing: -0.02em;
        }

        .section-link {
            color: var(--accent);
            font-weight: 600;
            font-size: 0.95rem;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 6px;
            transition: var(--transition);
            cursor: default;
        }

        .section-link i {
            transition: var(--transition);
        }

        .section-link:hover i {
            transform: translateX(5px);
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
            gap: 28px;
            margin-bottom: 48px;
        }

        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius-lg);
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-subtle);
            padding: 16px 16px 20px;
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            cursor: default;
        }

        .product-card:hover {
            box-shadow: var(--shadow-md);
            transform: translateY(-6px);
            border-color: #dfe6ed;
        }

        .product-image {
            background: #f2f5fa;
            border-radius: var(--radius-md);
            height: 160px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #b8c2d0;
            font-size: 3rem;
            margin-bottom: 14px;
            transition: var(--transition);
        }

        .product-card:hover .product-image {
            background: #eaeef6;
        }

        .product-name {
            font-weight: 600;
            font-size: 1.05rem;
            color: var(--primary);
            margin-bottom: 4px;
        }

        .product-category {
            font-size: 0.8rem;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.4px;
            font-weight: 500;
            margin-bottom: 10px;
        }

        .product-footer {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: auto;
        }

        .product-price {
            font-weight: 700;
            font-size: 1.2rem;
            color: var(--primary);
        }

        .add-btn {
            background: var(--accent-light);
            color: var(--accent);
            border: none;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: default;
            transition: var(--transition);
            font-size: 1rem;
        }

        .add-btn:hover {
            background: var(--accent);
            color: white;
            transform: scale(1.08);
        }

        /* ========== FEATURES / TRUST BADGES ========== */
        .features {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            background: #f9fbfe;
            border-radius: var(--radius-lg);
            padding: 32px 28px;
            margin-top: 24px;
            border: 1px solid var(--border-subtle);
        }

        .feature-item {
            display: flex;
            align-items: center;
            gap: 14px;
            color: var(--primary-light);
            font-weight: 500;
            font-size: 0.9rem;
        }

        .feature-item i {
            font-size: 1.6rem;
            color: var(--accent);
            opacity: 0.9;
            width: 32px;
            text-align: center;
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 960px) {
            .hero {
                grid-template-columns: 1fr;
                gap: 40px;
                padding: 16px;
            }

            .hero-visual {
                justify-content: flex-start;
            }

            .hero-card {
                max-width: 100%;
                transform: rotate(0deg);
            }

            .features {
                grid-template-columns: repeat(2, 1fr);
            }

            .navbar {
                flex-wrap: wrap;
                gap: 16px;
            }
        }

        @media (max-width: 640px) {
            body {
                padding: 12px;
            }

            .app {
                padding: 20px 18px;
                border-radius: var(--radius-lg);
            }

            .hero-title {
                font-size: 2.4rem;
            }

            .nav-links {
                display: none; /* clean mobile */
            }

            .features {
                grid-template-columns: 1fr;
            }

            .product-grid {
                grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
                gap: 16px;
            }

            .section-title {
                font-size: 1.5rem;
            }
        }

        @media (max-width: 400px) {
            .btn-group {
                flex-direction: column;
                width: 100%;
            }

            .btn {
                width: 100%;
                justify-content: center;
            }

            .hero-card-price {
                font-size: 1.3rem;
            }
        }
    </style>
</head>
<body>
    <div class="app">
        <!-- NAVBAR -->
        <nav class="navbar">
            <div class="logo">
                <i class="fa-solid fa-bolt"></i>
                <span>NexusShop</span>
            </div>
            <div class="nav-links">
                <a href="#">Shop</a>
                <a href="#">Collections</a>
                <a href="#">New</a>
                <a href="#">Sale</a>
            </div>
            <div class="nav-icons">
                <i class="fa-regular fa-magnifying-glass"></i>
                <i class="fa-regular fa-heart"></i>
                <span>
                    <i class="fa-regular fa-bag-shopping"></i>
                    <span class="cart-badge">2</span>
                </span>
            </div>
        </nav>

        <!-- HERO -->
        <section class="hero">
            <div class="hero-content">
                <span class="hero-tag">New season · 2025</span>
                <h1 class="hero-title">
                    Elevate your <br>
                    <span>everyday</span> style.
                </h1>
                <p class="hero-sub">
                    Curated essentials with an edge. Timeless design, premium materials, and a modern silhouette.
                </p>
                <div class="btn-group">
                    <a href="#" class="btn btn-primary">
                        Shop now <i class="fa-solid fa-arrow-right"></i>
                    </a>
                    <a href="#" class="btn btn-outline">
                        Explore <i class="fa-regular fa-circle-play"></i>
                    </a>
                </div>
            </div>
            <div class="hero-visual">
                <div class="hero-card">
                    <div class="hero-card-img">
                        <i class="fa-solid fa-headphones"></i>
                    </div>
                    <div class="hero-card-meta">
                        <span>Nova Studio</span>
                        <span class="rating">
                            <i class="fa-solid fa-star"></i> 4.9
                        </span>
                    </div>
                    <div class="hero-card-price">$189</div>
                </div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <div class="section-header">
            <h2 class="section-title">Trending now</h2>
            <a href="#" class="section-link">View all <i class="fa-solid fa-arrow-right"></i></a>
        </div>

        <div class="product-grid">
            <!-- product 1 -->
            <div class="product-card">
                <div class="product-image">
                    <i class="fa-solid fa-watch"></i>
                </div>
                <div class="product-name">Minimal Chrono</div>
                <div class="product-category">Accessories</div>
                <div class="product-footer">
                    <span class="product-price">$249</span>
                    <button class="add-btn"><i class="fa-solid fa-plus"></i></button>
                </div>
            </div>
            <!-- product 2 -->
            <div class="product-card">
                <div class="product-image">
                    <i class="fa-solid fa-bag-shopping"></i>
                </div>
                <div class="product-name">Structured Tote</div>
                <div class="product-category">Bags</div>
                <div class="product-footer">
                    <span class="product-price">$179</span>
                    <button class="add-btn"><i class="fa-solid fa-plus"></i></button>
                </div>
            </div>
            <!-- product 3 -->
            <div class="product-card">
                <div class="product-image">
                    <i class="fa-solid fa-sunglasses"></i>
                </div>
                <div class="product-name">Aero Shades</div>
                <div class="product-category">Eyewear</div>
                <div class="product-footer">
                    <span class="product-price">$129</span>
                    <button class="add-btn"><i class="fa-solid fa-plus"></i></button>
                </div>
            </div>
            <!-- product 4 -->
            <div class="product-card">
                <div class="product-image">
                    <i class="fa-solid fa-headphones"></i>
                </div>
                <div class="product-name">Nova Wireless</div>
                <div class="product-category">Audio</div>
                <div class="product-footer">
                    <span class="product-price">$189</span>
                    <button class="add-btn"><i class="fa-solid fa-plus"></i></button>
                </div>
            </div>
        </div>

        <!-- TRUST BADGES -->
        <div class="features">
            <div class="feature-item">
                <i class="fa-solid fa-truck-fast"></i>
                <span>Free shipping over $75</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-rotate-left"></i>
                <span>30-day returns</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-shield"></i>
                <span>2-year warranty</span>
            </div>
            <div class="feature-item">
                <i class="fa-solid fa-headset"></i>
                <span>24/7 support</span>
            </div>
        </div>
    </div>
</body>
</html>
