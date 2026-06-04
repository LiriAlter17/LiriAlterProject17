<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,600;1,300;1,400&family=Jost:wght@300;400;500&display=swap" rel="stylesheet" />
    <style>
        /* ── Color Tokens ── */
        :root {
            --crimson-deep:   #3D0C0C;
            --crimson-dark:   #5C1A1A;
            --crimson-mid:    #8B2C2C;
            --crimson-warm:   #A63D2F;
            --crimson-light:  #C4694F;
            --cream:          #FAF6F0;
            --cream-dark:     #EDE4D8;
            --text-on-dark:   #F5EDE3;
            --text-muted:     #C4A98A;
        }

        /* ── Reset for this page scope ── */
        .la17-page * { box-sizing: border-box; margin: 0; padding: 0; }
        .la17-page { font-family: 'Jost', sans-serif; color: var(--crimson-deep); background: var(--cream); }

        /* ── Hero ── */
        .hero {
            background: var(--crimson-deep);
            color: var(--text-on-dark);
            padding: 90px 40px 80px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(ellipse at 60% 40%, rgba(140,44,44,0.45) 0%, transparent 70%);
            pointer-events: none;
        }
        .hero-eyebrow {
            font-family: 'Jost', sans-serif;
            font-weight: 300;
            font-size: 11px;
            letter-spacing: 0.35em;
            text-transform: uppercase;
            color: var(--text-muted);
            margin-bottom: 24px;
        }
        .hero-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(52px, 8vw, 88px);
            font-weight: 300;
            line-height: 1.0;
            letter-spacing: -0.01em;
            margin-bottom: 10px;
        }
        .hero-title em {
            font-style: italic;
            color: var(--crimson-light);
        }
        .hero-subtitle {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(14px, 2vw, 18px);
            font-weight: 300;
            font-style: italic;
            color: var(--text-muted);
            margin-bottom: 48px;
            letter-spacing: 0.05em;
        }
        .hero-divider {
            width: 48px;
            height: 1px;
            background: var(--crimson-light);
            margin: 0 auto 48px;
        }
        .hero-desc {
            max-width: 520px;
            margin: 0 auto;
            font-size: 14px;
            font-weight: 300;
            line-height: 1.9;
            color: var(--text-on-dark);
            opacity: 0.8;
            letter-spacing: 0.03em;
        }

        /* ── Section shared ── */
        .section { padding: 72px 40px; }
        .section-label {
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            margin-bottom: 16px;
        }
        .section-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(32px, 4vw, 48px);
            font-weight: 300;
            color: var(--crimson-deep);
            line-height: 1.15;
            margin-bottom: 20px;
        }
        .section-body {
            font-size: 14px;
            font-weight: 300;
            line-height: 1.9;
            color: var(--crimson-mid);
            max-width: 560px;
        }

        /* ── Collections Grid ── */
        .collections-section { background: var(--cream); }
        .collections-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 2px;
            margin-top: 48px;
        }
        .collection-card {
            position: relative;
            background: var(--cream-dark);
            aspect-ratio: 3/4;
            overflow: hidden;
            cursor: pointer;
            transition: transform 0.4s ease;
        }
        .collection-card:hover { transform: scale(1.015); }
        .collection-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
            transition: transform 0.6s ease;
        }
        .collection-card:hover img { transform: scale(1.06); }

        /* Placeholder shown when no image is provided */
        .card-placeholder {
            width: 100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            gap: 10px;
            background: linear-gradient(160deg, var(--crimson-dark) 0%, var(--crimson-deep) 100%);
        }
        .card-placeholder-icon {
            width: 36px;
            height: 36px;
            opacity: 0.25;
        }
        .card-placeholder-text {
            font-size: 11px;
            letter-spacing: 0.25em;
            text-transform: uppercase;
            color: var(--text-muted);
            opacity: 0.5;
        }

        .card-info {
            position: absolute;
            bottom: 0; left: 0; right: 0;
            padding: 28px 20px 20px;
            background: linear-gradient(to top, rgba(30,5,5,0.92) 0%, transparent 100%);
        }
        .card-name {
            font-family: 'Cormorant Garamond', serif;
            font-size: 20px;
            font-weight: 400;
            color: var(--text-on-dark);
            line-height: 1.2;
        }
        .card-note {
            font-size: 11px;
            font-weight: 300;
            letter-spacing: 0.15em;
            color: var(--text-muted);
            margin-top: 4px;
        }

        /* ── About Strip ── */
        .about-section {
            background: var(--crimson-dark);
            color: var(--text-on-dark);
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 0;
        }
        @media (max-width: 680px) {
            .about-section { grid-template-columns: 1fr; }
        }
        .about-left {
            padding: 72px 48px;
        }
        .about-left .section-label { color: var(--crimson-light); }
        .about-left .section-title { color: var(--text-on-dark); }
        .about-left .section-body { color: rgba(245,237,227,0.7); max-width: 100%; }
        .about-right {
            background: var(--crimson-mid);
            padding: 72px 48px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            gap: 36px;
        }
        .about-stat { border-left: 2px solid var(--crimson-light); padding-left: 20px; }
        .about-stat-num {
            font-family: 'Cormorant Garamond', serif;
            font-size: 42px;
            font-weight: 300;
            color: var(--text-on-dark);
            line-height: 1;
        }
        .about-stat-label {
            font-size: 11px;
            letter-spacing: 0.25em;
            text-transform: uppercase;
            color: var(--text-muted);
            margin-top: 6px;
        }

        /* ── Footer strip ── */
        .footer-strip {
            background: var(--crimson-deep);
            padding: 28px 40px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 12px;
        }
        .footer-brand {
            font-family: 'Cormorant Garamond', serif;
            font-size: 22px;
            font-weight: 300;
            color: var(--text-on-dark);
            letter-spacing: 0.08em;
        }
        .footer-copy {
            font-size: 11px;
            font-weight: 300;
            letter-spacing: 0.12em;
            color: var(--text-muted);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="la17-page">

    <!-- ═══ HERO ═══ -->
    <section class="hero">
        <p class="hero-eyebrow">Est. 2024 &nbsp;·&nbsp; Artisan Perfumery</p>
        <h1 class="hero-title">LA<em>17</em></h1>
        <p class="hero-subtitle">Fragrances for those who remember</p>
        <div class="hero-divider"></div>
        <p class="hero-desc">
            Every bottle tells a story. We talk about rare, intimate scents from the finest
            raw materials — aged woods, pressed petals, and resins that carry memory
            across time. This is not mass perfumery. This is something personal.
        </p>
    </section>


    <!-- ═══ FEATURED COLLECTION ═══ -->
    <section class="section collections-section">
        <p class="section-label">The Stars Of The Show</p>
        <h2 class="section-title">Scents that linger</h2>

        <div class="collections-grid">

            <%--
                TO ADD AN IMAGE: replace the <div class="card-placeholder">...</div>
                with an <img src="~/Images/your-image.jpg" alt="Description" />
                inside the .collection-card div.
                Example:
                <div class="collection-card">
                    <img src="~/Images/rouge-nuit.jpg" alt="Rouge Nuit fragrance bottle" />
                    <div class="card-info">
                        <p class="card-name">Rouge Nuit</p>
                        <p class="card-note">Oud · Rose · Amber</p>
                    </div>
                </div>
            --%>

            <div class="collection-card">
                <img src="images/KilianAngelsShareParadis.jpg" alt="Kilian Angels Share Paradis"/>
                <div class="card-info">
                    <p class="card-name">Kilian Angels Share Paradis</p>
                    <p class="card-note">Raspberry · Cognac · Caramel</p>
                </div>
            </div>

            <div class="collection-card">
                <img src="images/XerjoffAlexandriaII.jpg" alt="Xerjoff Alexandria II"/>
                <div class="card-info">
                    <p class="card-name">Xerjoff Alexandria II</p>
                    <p class="card-note">Apple · Cinnamon · Vanilla</p>
                </div>
            </div>

            <div class="collection-card">
                <img src="images/TomFordLostCherry.jpg" alt="Tom Ford Lost Cherry"/>
                <div class="card-info">
                    <p class="card-name">Tom Ford Lost Cherry</p>
                    <p class="card-note">Black Cherry · Cherry Liqueur · Tonka Bean</p>
                </div>
            </div>

            <div class="collection-card">
                <img src="images/GiorgioArmaniStrongerWithYouPowerfully.jpg" alt="Giorgio Armani Stronger With You Powerfully"/>
                <div class="card-info">
                    <p class="card-name">Giorgio Armani Stronger With You Powerfully</p>
                    <p class="card-note">Cherry · Spices · Amberwood</p>
                </div>
            </div>

        </div>
    </section>


    <!-- ═══ ABOUT STRIP ═══ -->
    <section class="about-section">
        <div class="about-left">
            <p class="section-label">Our Philosophy</p>
            <h2 class="section-title">Crafted with intention. Worn with memory.</h2>
            <p class="section-body">
                LA17 was born from a single belief: that a scent can hold an entire world.
                Each fragrance is built from the ground up — raw materials sourced across
                continents, blended by hand, and bottled with restraint. No shortcuts.
                No filler notes. Just depth.
            </p>
        </div>
        <div class="about-right">
            <div class="about-stat">
                <div class="about-stat-num">17+</div>
                <div class="about-stat-label">Signature accords</div>
            </div>
            <div class="about-stat">
                <div class="about-stat-num">100%</div>
                <div class="about-stat-label">Natural base materials</div>
            </div>
            <div class="about-stat">
                <div class="about-stat-num">4–12</div>
                <div class="about-stat-label">Hours of wear per application</div>
            </div>
        </div>
    </section>


    <!-- ═══ FOOTER STRIP ═══ -->
    <div class="footer-strip">
        <span class="footer-brand">LA17 Fragrances</span>
    </div>

</div>
</asp:Content>

