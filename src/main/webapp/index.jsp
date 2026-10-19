<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexusShop · New UI</title>
    <!-- Fonts & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:opsz,wght@9..40,400;9..40,500;9..40,600;9..40,700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        /* ===== DESIGN TOKENS (new, warmer, more editorial) ===== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --canvas: #fcfaf7;
            --surface: #ffffff;
            --stone: #f3f0eb;
            --ink: #1e1b18;
            --ink-soft: #4a4540;
            --muted: #8a837c;
            --muted-light: #b8b2ab;
            --terracotta: #c96b4a;
            --terracotta-soft: #e8d6cd;
            --terracotta-deep: #a45134;
            --olive: #6b7a5e;
            --gold: #d4a373;
            --success: #5f7e6b;
            --border-subtle: rgba(30, 27, 24, 0.06);
            --shadow-soft: 0 2px 12px rgba(30, 27, 24, 0.04);
            --shadow-lift: 0 18px 40px -12px rgba(30, 27, 24, 0.16);
            --radius-card: 24px;
            --radius-btn: 100px;
            --radius-inner: 16px;
            --transition: 0.3s cubic-bezier(0.25, 0.46, 0.45, 0.94);
            --max-width: 1320px;
        }

        body {
            font-family: 'DM Sans', system-ui, sans-serif;
            background: var(--canvas);
            color: var(--ink);
            line-height: 1.45;
            -webkit-font-smoothing: antialiased;
        }

        h1, h2, h3, .serif {
            font-family: 'Playfair Display', Georgia, serif;
            font-weight: 600;
            letter-spacing: -0.02em;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
            color: inherit;
        }

        img {
            display: block;
            max-width: 100%;
        }

        .container {
            max-width: var(--max-width);
            margin: 0 auto;
            padding: 0 28px;
        }

        /* ===== BUTTON SYSTEM ===== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 14px 32px;
            border-radius: var(--radius-btn);
            font-weight: 600;
            font-size: 0.95rem;
            transition: var(--transition);
            border: 1.5px solid transparent;
            letter-spacing: -0.01em;
        }

        .btn-primary {
            background: var(--terracotta);
            color: white;
            border-color: var(--terracotta);
        }
        .btn-primary:hover {
            background: var(--terracotta-deep);
            border-color: var(--terracotta-deep);
            transform: translateY(-2px);
            box-shadow: 0 12px 22px -8px rgba(201, 107, 74, 0.45);
        }

        .btn-outline {
            background: transparent;
            border: 1.5px solid rgba(30, 27, 24, 0.18);
            color: var(--ink);
        }
        .btn-outline:hover {
            background: var(--stone);
            border-color: var(--terracotta);
            color: var(--terracotta-deep);
        }

        .btn-ghost-light {
            background: rgba(255, 255, 255, 0.14);
            border: 1.5px solid rgba(255, 255, 255, 0.32);
            color: white;
            backdrop-filter: blur(4px);
        }
        .btn-ghost-light:hover {
            background: rgba(255, 255, 255, 0.26);
            border-color: rgba(255, 255, 255, 0.6);
        }

        .btn-sm {
            padding: 10px 22px;
            font-size: 0.85rem;
        }

        /* ===== HEADER (redesigned) ===== */
        .site-header {
            position: sticky;
            top: 0;
            z-index: 200;
            background: rgba(252, 250, 247, 0.88);
            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);
            border-bottom: 1px solid var(--border-subtle);
        }

        .header-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            min-height: 76px;
            padding: 8px 0;
        }

        .logo-block {
            display: flex;
            align-items: center;
            gap: 12px;
            flex-shrink: 0;
        }

        .logo-icon {
            width: 40px;
            height: 40px;
            background: var(--terracotta);
            border-radius: 12px;
            display: grid;
            place-items: center;
            color: white;
            font-size: 1.3rem;
        }

        .logo-text {
            font-family: 'Playfair Display', serif;
            font-size: 1.6rem;
            font-weight: 700;
            letter-spacing: -0.03em;
        }
        .logo-text span {
            color: var(--terracotta);
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 8px;
            list-style: none;
        }

        .nav-links a {
            padding: 10px 16px;
            border-radius: 100px;
            font-weight: 500;
            font-size: 0.92rem;
            color: var(--ink-soft);
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 7px;
        }

        .nav-links a i {
            font-size: 0.85rem;
            color: var(--muted);
            transition: var(--transition);
        }

        .nav-links a:hover,
        .nav-links a.active {
            background: var(--stone);
            color: var(--ink);
        }
        .nav-links a:hover i,
        .nav-links a.active i {
            color: var(--terracotta);
        }

        .header-tools {
            display: flex;
            align-items: center;
            gap: 8px;
            flex-shrink: 0;
        }

        .search-pill {
            display: flex;
            align-items: center;
            background: var(--stone);
            border-radius: 100px;
            padding: 0 12px 0 20px;
            border: 2px solid transparent;
            transition: var(--transition);
            min-width: 210px;
        }
        .search-pill:focus-within {
            background: var(--surface);
            border-color: var(--terracotta-soft);
            box-shadow: 0 0 0 4px rgba(201, 107, 74, 0.08);
        }

        .search-pill input {
            border: none;
            background: transparent;
            outline: none;
            padding: 11px 0;
            font-size: 0.9rem;
            width: 100%;
            color: var(--ink);
        }
        .search-pill input::placeholder {
            color: var(--muted);
            font-weight: 400;
        }

        .search-pill button {
            color: var(--muted);
            font-size: 0.95rem;
            padding: 8px 0 8px 8px;
            transition: var(--transition);
        }
        .search-pill button:hover {
            color: var(--terracotta);
        }

        .icon-btn {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            font-size: 1.15rem;
            color: var(--ink-soft);
            transition: var(--transition);
            background: transparent;
        }
        .icon-btn:hover {
            background: var(--stone);
            color: var(--terracotta);
        }

        .cart-pill {
            position: relative;
            display: flex;
            align-items: center;
            gap: 8px;
            background: var(--ink);
            color: white;
            border-radius: 100px;
            padding: 10px 20px 10px 18px;
            font-weight: 600;
            font-size: 0.9rem;
            transition: var(--transition);
            margin-left: 6px;
        }
        .cart-pill:hover {
            background: var(--terracotta);
            transform: translateY(-1px);
        }
        .cart-pill i {
            font-size: 1.1rem;
        }
        .cart-badge {
            background: white;
            color: var(--ink);
            font-size: 0.75rem;
            font-weight: 700;
            width: 22px;
            height: 22px;
            border-radius: 50%;
            display: grid;
            place-items: center;
        }

        .mobile-nav-toggle {
            display: none;
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background: var(--stone);
            color: var(--ink);
            font-size: 1.2rem;
            place-items: center;
            transition: var(--transition);
        }
        .mobile-nav-toggle:hover {
            background: var(--terracotta-soft);
        }

        /* mobile drawer */
        .mobile-drawer {
            display: none;
            background: var(--surface);
            border-top: 1px solid var(--border-subtle);
            padding: 16px 0 24px;
            box-shadow: var(--shadow-soft);
        }
        .mobile-drawer ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }
        .mobile-drawer a {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 14px 20px;
            border-radius: 100px;
            font-weight: 500;
            color: var(--ink-soft);
            transition: var(--transition);
        }
        .mobile-drawer a:hover {
            background: var(--stone);
            color: var(--ink);
        }
        .mobile-drawer a i {
            width: 20px;
            color: var(--muted);
        }

        /* ===== HERO (editorial + airy) ===== */
        .hero-new {
            margin: 28px 28px 0;
            border-radius: 32px;
            overflow: hidden;
            position: relative;
            background: linear-gradient(106deg, #1a1a1a 0%, #2e2a26 100%);
            display: flex;
            align-items: center;
            min-height: 520px;
            box-shadow: var(--shadow-lift);
        }

        .hero-new::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
            opacity: 0.32;
            z-index: 0;
        }

        .hero-new .hero-inner {
            position: relative;
            z-index: 2;
            width: 100%;
            padding: 72px 64px;
        }

        .hero-tag {
            display: inline-block;
            font-size: 0.8rem;
            font-weight: 600;
            letter-spacing: 0.08em;
            text-transform: uppercase;
            color: var(--terracotta-soft);
            background: rgba(201, 107, 74, 0.2);
            padding: 6px 18px;
            border-radius: 100px;
            margin-bottom: 20px;
            backdrop-filter: blur(4px);
        }

        .hero-new h1 {
            font-size: clamp(2.8rem, 5vw, 4.2rem);
            color: white;
            line-height: 1.08;
            max-width: 700px;
            margin-bottom: 18px;
            font-weight: 700;
            letter-spacing: -0.03em;
        }

        .hero-new p {
            color: rgba(255, 255, 255, 0.8);
            font-size: 1.15rem;
            max-width: 520px;
            margin-bottom: 36px;
            line-height: 1.55;
        }

        .hero-cta {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }

        /* ===== SECTION STRUCTURE ===== */
        .section {
            padding: 72px 0;
        }

        .section-head {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 24px;
            margin-bottom: 40px;
            flex-wrap: wrap;
        }

        .section-head h2 {
            font-size: 2.1rem;
            font-weight: 600;
            letter-spacing: -0.02em;
        }

        .section-head .subtle {
            color: var(--muted);
            font-size: 1rem;
            margin-top: 4px;
            font-weight: 400;
        }

        .link-arrow {
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 600;
            font-size: 0.9rem;
            color: var(--terracotta);
            transition: var(--transition);
            white-space: nowrap;
            padding-bottom: 4px;
        }
        .link-arrow:hover {
            gap: 14px;
            color: var(--terracotta-deep);
        }

        /* ===== CATEGORY BUBBLES ===== */
        .category-scroll {
            display: flex;
            gap: 18px;
            overflow-x: auto;
            padding: 6px 2px 16px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }

        .category-scroll::-webkit-scrollbar {
            height: 4px;
        }
        .category-scroll::-webkit-scrollbar-thumb {
            background: var(--terracotta-soft);
            border-radius: 100px;
        }

        .cat-bubble {
            flex: 0 0 auto;
            min-width: 140px;
            background: var(--surface);
            border-radius: var(--radius-card);
            padding: 22px 18px 18px;
            text-align: center;
            box-shadow: var(--shadow-soft);
            border: 1.5px solid transparent;
            transition: var(--transition);
            scroll-snap-align: start;
            cursor: pointer;
        }

        .cat-bubble:hover {
            border-color: var(--terracotta-soft);
            transform: translateY(-4px);
            box-shadow: var(--shadow-lift);
        }

        .cat-bubble .circle {
            width: 64px;
            height: 64px;
            border-radius: 50%;
            background: var(--stone);
            display: grid;
            place-items: center;
            margin: 0 auto 14px;
            font-size: 1.6rem;
            color: var(--terracotta);
            transition: var(--transition);
        }

        .cat-bubble:hover .circle {
            background: var(--terracotta);
            color: white;
            transform: scale(1.02);
        }

        .cat-bubble h4 {
            font-size: 0.95rem;
            font-weight: 600;
            margin-bottom: 4px;
        }

        .cat-bubble span {
            font-size: 0.78rem;
            color: var(--muted);
            font-weight: 400;
        }

        /* ===== PRODUCT GRID (elevated) ===== */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 26px;
        }

        .product-tile {
            background: var(--surface);
            border-radius: var(--radius-card);
            overflow: hidden;
            box-shadow: var(--shadow-soft);
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            border: 1.5px solid transparent;
        }

        .product-tile:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-lift);
            border-color: var(--terracotta-soft);
        }

        .tile-img {
            position: relative;
            background: var(--stone);
            aspect-ratio: 1/1;
            overflow: hidden;
        }

        .tile-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }

        .product-tile:hover .tile-img img {
            transform: scale(1.05);
        }

        .tile-badge {
            position: absolute;
            top: 16px;
            left: 16px;
            background: var(--terracotta);
            color: white;
            font-size: 0.7rem;
            font-weight: 700;
            padding: 5px 14px;
            border-radius: 100px;
            letter-spacing: 0.03em;
            text-transform: uppercase;
        }

        .tile-badge.sale {
            background: var(--gold);
            color: var(--ink);
        }

        .tile-wish {
            position: absolute;
            top: 16px;
            right: 16px;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(6px);
            display: grid;
            place-items: center;
            font-size: 1.1rem;
            color: var(--muted);
            transition: var(--transition);
        }

        .tile-wish:hover {
            background: white;
            color: var(--terracotta);
            transform: scale(1.1);
        }

        .tile-info {
            padding: 18px 18px 14px;
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        .tile-cat {
            font-size: 0.7rem;
            text-transform: uppercase;
            letter-spacing: 0.06em;
            font-weight: 600;
            color: var(--muted);
            margin-bottom: 4px;
        }

        .tile-info h4 {
            font-family: 'DM Sans', sans-serif;
            font-weight: 600;
            font-size: 1rem;
            line-height: 1.35;
            margin-bottom: 8px;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .price-line {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 6px;
        }

        .price-now {
            font-weight: 700;
            font-size: 1.2rem;
            color: var(--ink);
            letter-spacing: -0.02em;
        }

        .price-old {
            font-size: 0.9rem;
            color: var(--muted-light);
            text-decoration: line-through;
        }

        .rating-line {
            display: flex;
            align-items: center;
            gap: 5px;
            font-size: 0.8rem;
            color: var(--gold);
            margin-bottom: 10px;
        }

        .rating-line span {
            color: var(--muted);
            font-weight: 400;
        }

        .tile-actions {
            padding: 0 18px 18px;
        }

        .btn-add {
            width: 100%;
            padding: 12px;
            border-radius: 100px;
            background: var(--stone);
            color: var(--ink);
            font-weight: 600;
            font-size: 0.9rem;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            border: 1.5px solid transparent;
        }

        .btn-add:hover {
            background: var(--terracotta);
            color: white;
            border-color: var(--terracotta);
        }

        .btn-add.added {
            background: var(--success);
            color: white;
            border-color: var(--success);
        }

        /* ===== DEAL CARD (soft, organic) ===== */
        .deal-card {
            display: flex;
            background: var(--surface);
            border-radius: 28px;
            overflow: hidden;
            box-shadow: var(--shadow-soft);
            border: 1.5px solid var(--border-subtle);
        }

        .deal-visual {
            flex: 0 0 46%;
            background: var(--stone);
            min-height: 320px;
            position: relative;
        }
        .deal-visual img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-details {
            flex: 1;
            padding: 46px 48px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-chip {
            background: var(--terracotta-soft);
            color: var(--terracotta-deep);
            font-size: 0.7rem;
            font-weight: 700;
            letter-spacing: 0.06em;
            text-transform: uppercase;
            padding: 6px 16px;
            border-radius: 100px;
            align-self: flex-start;
            margin-bottom: 16px;
        }

        .deal-details h3 {
            font-size: 2rem;
            margin-bottom: 6px;
        }

        .deal-details .desc {
            color: var(--muted);
            margin-bottom: 18px;
            font-size: 0.98rem;
        }

        .deal-price {
            font-size: 2.2rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            margin-bottom: 4px;
        }
        .deal-price .old {
            font-size: 1.2rem;
            font-weight: 400;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 12px;
        }

        .deal-stock {
            font-size: 0.9rem;
            color: var(--muted);
            margin-bottom: 22px;
        }
        .deal-stock strong {
            color: var(--terracotta);
            font-weight: 700;
        }

        .timer-row {
            display: flex;
            gap: 12px;
            margin-bottom: 26px;
        }

        .timer-block {
            background: var(--stone);
            border-radius: 14px;
            padding: 12px 14px;
            min-width: 68px;
            text-align: center;
        }

        .timer-block .num {
            font-size: 1.8rem;
            font-weight: 700;
            color: var(--ink);
            line-height: 1.2;
        }

        .timer-block .lbl {
            font-size: 0.65rem;
            text-transform: uppercase;
            letter-spacing: 0.06em;
            color: var(--muted);
            font-weight: 600;
        }

        /* ===== TESTIMONIALS ===== */
        .review-track {
            display: flex;
            gap: 22px;
            overflow-x: auto;
            padding: 8px 4px 20px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }
        .review-track::-webkit-scrollbar {
            height: 4px;
        }
        .review-track::-webkit-scrollbar-thumb {
            background: var(--terracotta-soft);
            border-radius: 100px;
        }

        .review-card {
            flex: 0 0 360px;
            background: var(--surface);
            border-radius: var(--radius-card);
            padding: 28px 26px;
            box-shadow: var(--shadow-soft);
            border: 1.5px solid var(--border-subtle);
            scroll-snap-align: start;
            transition: var(--transition);
        }

        .review-card:hover {
            box-shadow: var(--shadow-lift);
            border-color: var(--terracotta-soft);
        }

        .review-stars {
            color: var(--gold);
            font-size: 0.95rem;
            letter-spacing: 3px;
            margin-bottom: 12px;
        }

        .review-card blockquote {
            font-size: 0.98rem;
            line-height: 1.6;
            color: var(--ink-soft);
            font-style: italic;
            margin-bottom: 18px;
        }

        .review-author {
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .review-author img {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            object-fit: cover;
            background: var(--stone);
        }

        .review-author .name {
            font-weight: 600;
            font-size: 0.92rem;
        }

        .review-author .role {
            font-size: 0.8rem;
            color: var(--muted);
        }

        /* ===== NEWSLETTER (soft sage) ===== */
        .newsletter-block {
            background: linear-gradient(112deg, #1e2a23 0%, #2b3a2f 100%);
            border-radius: 28px;
            padding: 56px 56px;
            color: white;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 40px;
            flex-wrap: wrap;
            box-shadow: var(--shadow-lift);
        }

        .newsletter-block h3 {
            font-size: 2rem;
            margin-bottom: 6px;
            font-weight: 600;
        }

        .newsletter-block p {
            color: rgba(255, 255, 255, 0.7);
            font-size: 1rem;
        }

        .newsletter-form {
            display: flex;
            gap: 12px;
            flex: 1;
            max-width: 480px;
            flex-wrap: wrap;
        }

        .newsletter-form input {
            flex: 1;
            min-width: 200px;
            padding: 16px 24px;
            border-radius: 100px;
            border: 2px solid transparent;
            background: rgba(255, 255, 255, 0.12);
            color: white;
            font-size: 0.95rem;
            outline: none;
            transition: var(--transition);
        }

        .newsletter-form input::placeholder {
            color: rgba(255, 255, 255, 0.45);
        }

        .newsletter-form input:focus {
            border-color: var(--terracotta);
            background: rgba(255, 255, 255, 0.16);
        }

        .newsletter-form .btn {
            background: var(--terracotta);
            border-color: var(--terracotta);
            color: white;
            padding: 16px 34px;
        }

        .newsletter-form .btn:hover {
            background: var(--terracotta-deep);
            border-color: var(--terracotta-deep);
        }

        .form-msg {
            width: 100%;
            margin-top: 10px;
            font-size: 0.9rem;
            opacity: 0.9;
        }

        /* ===== FOOTER ===== */
        .site-footer {
            margin-top: 40px;
            padding: 64px 0 32px;
            border-top: 1px solid var(--border-subtle);
            background: var(--canvas);
        }

        .footer-cols {
            display: grid;
            grid-template-columns: 2.2fr 1fr 1fr 1fr;
            gap: 48px;
            margin-bottom: 48px;
        }

        .footer-brand .logo-text {
            font-size: 1.5rem;
            margin-bottom: 12px;
        }

        .footer-brand p {
            color: var(--muted);
            font-size: 0.92rem;
            max-width: 280px;
            line-height: 1.65;
        }

        .footer-social {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }

        .footer-social a {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            background: var(--stone);
            display: grid;
            place-items: center;
            color: var(--ink-soft);
            font-size: 1rem;
            transition: var(--transition);
        }

        .footer-social a:hover {
            background: var(--terracotta);
            color: white;
            transform: translateY(-2px);
        }

        .footer-col h5 {
            font-weight: 700;
            font-size: 0.85rem;
            text-transform: uppercase;
            letter-spacing: 0.06em;
            color: var(--ink);
            margin-bottom: 16px;
        }

        .footer-col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .footer-col a {
            color: var(--muted);
            font-size: 0.92rem;
            transition: var(--transition);
        }

        .footer-col a:hover {
            color: var(--terracotta);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 24px;
            border-top: 1px solid var(--border-subtle);
            color: var(--muted-light);
            font-size: 0.85rem;
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 1200px) {
            .product-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .footer-cols {
                grid-template-columns: 1fr 1fr;
                gap: 32px;
            }
        }

        @media (max-width: 992px) {
            .hero-new {
                margin: 20px 20px 0;
                min-height: 400px;
            }
            .hero-new .hero-inner {
                padding: 56px 40px;
            }
            .deal-card {
                flex-direction: column;
            }
            .deal-visual {
                flex: 0 0 260px;
            }
            .newsletter-block {
                padding: 40px 32px;
                flex-direction: column;
                text-align: center;
            }
            .newsletter-form {
                max-width: 100%;
            }
            .search-pill {
                min-width: 160px;
            }
        }

        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }
            .mobile-nav-toggle {
                display: grid;
            }
            .header-row {
                flex-wrap: nowrap;
                gap: 12px;
            }
            .search-pill {
                min-width: 0;
                flex: 1;
                padding: 0 10px 0 16px;
            }
            .search-pill input {
                font-size: 0.82rem;
            }
            .cart-pill {
                padding: 10px 14px;
            }
            .cart-pill span:not(.cart-badge) {
                display: none;
            }
            .product-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 14px;
            }
            .hero-new h1 {
                font-size: 2.2rem;
            }
            .hero-new p {
                font-size: 1rem;
            }
            .hero-new .hero-inner {
                padding: 40px 28px;
            }
            .section {
                padding: 48px 0;
            }
            .section-head h2 {
                font-size: 1.6rem;
            }
            .footer-cols {
                grid-template-columns: 1fr;
                gap: 24px;
            }
            .deal-details {
                padding: 28px 24px;
            }
            .deal-details h3 {
                font-size: 1.5rem;
            }
            .timer-block {
                min-width: 54px;
                padding: 10px 10px;
            }
            .timer-block .num {
                font-size: 1.3rem;
            }
            .review-card {
                flex: 0 0 280px;
                padding: 22px 20px;
            }
        }

        @media (max-width: 480px) {
            .container {
                padding: 0 16px;
            }
            .hero-new {
                margin: 12px 12px 0;
                border-radius: 24px;
                min-height: 320px;
            }
            .hero-new h1 {
                font-size: 1.9rem;
            }
            .hero-new .hero-inner {
                padding: 32px 22px;
            }
            .hero-tag {
                font-size: 0.7rem;
                padding: 4px 14px;
            }
            .product-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .tile-info {
                padding: 12px 12px 8px;
            }
            .tile-info h4 {
                font-size: 0.85rem;
            }
            .price-now {
                font-size: 1rem;
            }
            .price-old {
                font-size: 0.78rem;
            }
            .btn-add {
                font-size: 0.78rem;
                padding: 10px;
            }
            .tile-actions {
                padding: 0 12px 12px;
            }
            .cat-bubble {
                min-width: 110px;
                padding: 16px 12px;
            }
            .cat-bubble .circle {
                width: 48px;
                height: 48px;
                font-size: 1.2rem;
            }
            .cat-bubble h4 {
                font-size: 0.8rem;
            }
            .section-head {
                margin-bottom: 24px;
            }
            .newsletter-block {
                padding: 28px 20px;
            }
            .newsletter-block h3 {
                font-size: 1.5rem;
            }
            .deal-details {
                padding: 20px 18px;
            }
            .timer-block {
                min-width: 44px;
                padding: 6px 6px;
            }
            .timer-block .num {
                font-size: 1.1rem;
            }
            .timer-block .lbl {
                font-size: 0.55rem;
            }
        }
    </style
