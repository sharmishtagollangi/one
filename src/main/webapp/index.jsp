
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FRAME | Photography Portfolio</title>

    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&family=DM+Sans:wght@400;600&display=swap" rel="stylesheet">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            background: #10110f;
            color: #f4f0e8;
            font-family: 'DM Sans', sans-serif;
        }

        header {
            padding: 25px 8%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #333;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            letter-spacing: 4px;
        }

        .logo span {
            color: #d5b88a;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-left: 25px;
            font-size: 14px;
        }

        nav a:hover {
            color: #d5b88a;
        }

        .hero {
            min-height: 85vh;
            padding: 70px 8%;
            display: grid;
            grid-template-columns: 1fr 1fr;
            align-items: center;
            gap: 50px;
        }

        .subtitle {
            color: #d5b88a;
            letter-spacing: 4px;
            text-transform: uppercase;
            font-size: 12px;
        }

        h1, h2, h3 {
            font-family: 'Playfair Display', serif;
            font-weight: 400;
        }

        h1 {
            font-size: clamp(45px, 6vw, 78px);
            line-height: 1.1;
            margin: 25px 0;
        }

        h1 span {
            color: #d5b88a;
            font-style: italic;
        }

        .hero p {
            color: #aaa;
            line-height: 1.8;
            margin-bottom: 30px;
            max-width: 450px;
        }

        .btn {
            display: inline-block;
            background: #d5b88a;
            color: #10110f;
            padding: 14px 24px;
            text-decoration: none;
            transition: .3s;
        }

        .btn:hover {
            background: white;
        }

        .hero img {
            width: 100%;
            height: 500px;
            object-fit: cover;
        }

        section {
            padding: 80px 8%;
        }

        .section-title {
            font-size: 45px;
            margin: 15px 0 35px;
        }

        .filters {
            margin-bottom: 30px;
        }

        .filter-btn {
            background: transparent;
            border: 1px solid #444;
            color: white;
            padding: 10px 18px;
            margin: 0 7px 8px 0;
            cursor: pointer;
            border-radius: 25px;
        }

        .filter-btn.active,
        .filter-btn:hover {
            background: #d5b88a;
            color: #10110f;
            border-color: #d5b88a;
        }

        .gallery {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .photo {
            position: relative;
            height: 350px;
            overflow: hidden;
        }

        .photo img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform .5s;
        }

        .photo:hover img {
            transform: scale(1.08);
        }

        .photo-info {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            padding: 35px 18px 18px;
            background: linear-gradient(transparent, rgba(0,0,0,.85));
        }

        .photo-info h3 {
            font-size: 25px;
        }

        .photo-info p {
            color: #d5b88a;
            margin-top: 5px;
            font-size: 12px;
            text-transform: uppercase;
        }

        .photo.hide {
            display: none;
        }

        .services {
            background: #191a17;
        }

        .service-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
            margin-top: 35px;
        }

        .service-card {
            padding: 30px;
            border: 1px solid #383832;
        }

        .service-card h3 {
            font-size: 25px;
            margin: 20px 0 12px;
        }

        .service-card p,
        .about p {
            color: #aaa;
            line-height: 1.8;
        }

        .number {
            color: #d5b88a;
        }

        .about {
            display: grid;
            grid-template-columns: 1fr 1fr;
            align-items: center;
            gap: 50px;
        }

        .about img {
            width: 100%;
            height: 400px;
            object-fit: cover;
        }

        .about p {
            margin: 20px 0;
        }

        .contact {
            text-align: center;
            background: #d5b88a;
            color: #10110f;
        }

        .contact .subtitle {
            color: #59472f;
        }

        .contact h2 {
            font-size: clamp(35px, 5vw, 55px);
            margin: 20px 0;
        }

        .contact p {
            margin-bottom: 25px;
        }

        .contact .btn {
            border: 1px solid #10110f;
            background: transparent;
        }

        .contact .btn:hover {
            background: #10110f;
            color: white;
        }

        footer {
            padding: 25px 8%;
            color: #aaa;
            display: flex;
            justify-content: space-between;
            gap: 15px;
            flex-wrap: wrap;
            font-size: 13px;
        }

        @media (max-width: 768px) {
            header {
                flex-direction: column;
                gap: 20px;
            }

            nav a {
                margin: 0 8px;
            }

            .hero,
            .about {
                grid-template-columns: 1fr;
            }

            .hero img {
                height: 380px;
            }

            .gallery {
                grid-template-columns: repeat(2, 1fr);
            }

            .photo {
                height: 280px;
            }

            .service-grid {
                grid-template-columns: 1fr;
            }
        }

        @media (max-width: 480px) {
            .gallery {
                grid-template-columns: 1fr;
            }

            .photo {
                height: 350px;
            }

            .section-title {
                font-size: 36px;
            }
        }
    </style>
</head>

<body>

    <header>
        <div class="logo">FR<span>A</span>ME.</div>

        <nav>
            <a href="#home">Home</a>
            <a href="#work">Portfolio</a>
            <a href="#services">Services</a>
            <a href="#about">About</a>
            <a href="#contact">Contact</a>
        </nav>
    </header>

    <main>
        <section class="hero" id="home">
            <div>
                <div class="subtitle">Photography · Visual Stories</div>

                <h1>
                    Moments that<br>
                    feel like <span>forever.</span>
                </h1>

                <p>
                    Honest moments, beautiful light, and stories worth
                    remembering. I create timeless photographs that
                    bring your memories back to life.
                </p>

                <a href="#work" class="btn">Explore My Work ↗</a>
            </div>

            <img
                src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=1000&q=85"
                alt="Portrait photography">
        </section>

        <section id="work">
            <div class="subtitle">Selected Stories</div>
            <h2 class="section-title">Through My Lens.</h2>

            <div class="filters">
                <button class="filter-btn active" data-filter="all">All Work</button>
                <button class="filter-btn" data-filter="portrait">Portraits</button>
                <button class="filter-btn" data-filter="travel">Travel</button>
                <button class="filter-btn" data-filter="lifestyle">Lifestyle</button>
            </div>

            <div class="gallery">

                <div class="photo" data-category="portrait">
                    <img src="https://images.unsplash.com/photo-1524504388940-b1c1722653e1?auto=format&fit=crop&w=800&q=85" alt="Portrait">
                    <div class="photo-info">
                        <h3>Golden Hour</h3>
                        <p>Portraits</p>
                    </div>
                </div>

                <div class="photo" data-category="travel">
                    <img src="https://images.unsplash.com/photo-1470770841072-f978cf4d019e?auto=format&fit=crop&w=800&q=85" alt="Mountain landscape">
                    <div class="photo-info">
                        <h3>Somewhere Quiet</h3>
                        <p>Travel</p>
                    </div>
                </div>

                <div class="photo" data-category="lifestyle">
                    <img src="https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?auto=format&fit=crop&w=800&q=85" alt="Fashion photography">
                    <div class="photo-info">
                        <h3>Everyday Poetry</h3>
                        <p>Lifestyle</p>
                    </div>
                </div>

                <div class="photo" data-category="travel">
                    <img src="https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=800&q=85" alt="Nature photography">
                    <div class="photo-info">
                        <h3>Open Roads</h3>
                        <p>Travel</p>
                    </div>
                </div>

                <div class="photo" data-category="portrait">
                    <img src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&w=800&q=85" alt="Creative portrait">
                    <div class="photo-info">
                        <h3>Soft Focus</h3>
                        <p>Portraits</p>
                    </div>
                </div>

                <div class="photo" data-category="lifestyle">
                    <img src="https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=800&q=85" alt="Fashion details">
                    <div class="photo-info">
                        <h3>Quiet Details</h3>
                        <p>Lifestyle</p>
                    </div>
                </div>

            </div>
        </section>

        <section class="services" id="services">
            <div class="subtitle">What I Capture</div>
            <h2 class="section-title">Made for Your Moments.</h2>

            <div class="service-grid">
                <div class="service-card">
                    <div class="number">01 / PORTRAITS</div>
                    <h3>People & Portraits</h3>
                    <p>Personal portraits, couples, and candid expressions captured with warmth.</p>
                </div>

                <div class="service-card">
                    <div class="number">02 / TRAVEL</div>
                    <h3>Places & Journeys</h3>
                    <p>Landscapes, city stories, and beautiful details from every journey.</p>
                </div>

                <div class="service-card">
                    <div class="number">03 / LIFESTYLE</div>
                    <h3>Brands & Lifestyle</h3>
                    <p>Creative imagery for brands, small businesses, and personal projects.</p>
                </div>
            </div>
        </section>

        <section class="about" id="about">
            <img
                src="https://images.unsplash.com/photo-1452587925148-ce544e77e70d?auto=format&fit=crop&w=900&q=85"
                alt="Camera and photography">

            <div>
                <div class="subtitle">Behind the Camera</div>
                <h2 class="section-title">Hi, I'm Your Photographer.</h2>

                <p>
                    I believe the best photographs don't just show how
                    a moment looked — they bring back how it felt.
                </p>

                <p>
                    My approach is relaxed, thoughtful, and focused on
                    the little details that make every story unique.
                </p>
            </div>
        </section>

        <section class="contact" id="contact">
            <div class="subtitle">Have a Story in Mind?</div>
            <h2>Let's Create Something Worth Remembering.</h2>
            <p>Tell me what you're dreaming up, and let's plan a session.</p>

            <a class="btn"
               href="mailto:hello@example.com?subject=Photography%20Inquiry">
                Book a Session ↗
            </a>
        </section>
    </main>

    <footer>
        <p>© <span id="year"></span> FRAME Photography</p>
        <a href="#home">Back to Top ↑</a>
    </footer>

    <script>
        const filterButtons = document.querySelectorAll(".filter-btn");
        const photos = document.querySelectorAll(".photo");

        filterButtons.forEach(button => {
            button.addEventListener("click", () => {
                const category = button.dataset.filter;

                filterButtons.forEach(btn => {
                    btn.classList.remove("active");
                });

                button.classList.add("active");

                photos.forEach(photo => {
                    if (
                        category === "all" ||
                        photo.dataset.category === category
                    ) {
                        photo.classList.remove("hide");
                    } else {
                        photo.classList.add("hide");
                    }
                });
            });
        });

        document.getElementById("year").textContent =
            new Date().getFullYear();
    </script>

</body>
</html>
