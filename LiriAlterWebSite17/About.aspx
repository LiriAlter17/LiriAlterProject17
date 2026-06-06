<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,600;1,300;1,400&family=Jost:wght@300;400;500&display=swap" rel="stylesheet" />
    <style>
        :root {
            --crimson-deep:  #3D0C0C;
            --crimson-dark:  #5C1A1A;
            --crimson-mid:   #8B2C2C;
            --crimson-warm:  #A63D2F;
            --crimson-light: #C4694F;
            --cream:         #FAF6F0;
            --cream-dark:    #EDE4D8;
            --text-on-dark:  #F5EDE3;
            --text-muted:    #C4A98A;
        }

        .la17-about * { box-sizing: border-box; margin: 0; padding: 0; }
        .la17-about {
            font-family: 'Jost', sans-serif;
            color: var(--crimson-deep);
            background: var(--cream);
        }

        /* ── Page header ── */
        .about-hero {
            background: var(--crimson-deep);
            padding: 72px 40px 64px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .about-hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(ellipse at 40% 60%, rgba(140,44,44,0.45) 0%, transparent 70%);
            pointer-events: none;
        }
        .about-hero-eyebrow {
            font-size: 10px;
            font-weight: 300;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--text-muted);
            margin-bottom: 20px;
        }
        .about-hero-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(44px, 7vw, 72px);
            font-weight: 300;
            color: var(--text-on-dark);
            line-height: 1.0;
            letter-spacing: -0.01em;
        }
        .about-hero-title em {
            font-style: italic;
            color: var(--crimson-light);
        }
        .about-hero-sub {
            font-family: 'Cormorant Garamond', serif;
            font-style: italic;
            font-size: 16px;
            color: var(--text-muted);
            margin-top: 12px;
            letter-spacing: 0.05em;
        }

        /* ── Shared section wrapper ── */
        .about-section {
            padding: 64px 40px;
            max-width: 760px;
            margin: 0 auto;
        }
        .section-label {
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            margin-bottom: 12px;
        }
        .section-divider {
            width: 40px;
            height: 1px;
            background: var(--crimson-light);
            margin: 28px 0;
        }

        /* ── Developer card ── */
        .dev-card {
            display: flex;
            align-items: center;
            gap: 32px;
            background: var(--cream-dark);
            border-left: 3px solid var(--crimson-warm);
            padding: 28px 32px;
            flex-wrap: wrap;
        }
        .dev-photo {
            width: 96px;
            height: 96px;
            object-fit: cover;
            border-radius: 50%;
            border: 2px solid var(--crimson-light);
            flex-shrink: 0;
            background: var(--crimson-dark);
        }
        .dev-info-name {
            font-family: 'Cormorant Garamond', serif;
            font-size: 28px;
            font-weight: 400;
            color: var(--crimson-deep);
            line-height: 1.1;
        }
        .dev-info-role {
            font-size: 11px;
            font-weight: 300;
            letter-spacing: 0.25em;
            text-transform: uppercase;
            color: var(--crimson-light);
            margin-top: 6px;
        }

        /* ── Story text ── */
        .story-heading {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(26px, 3.5vw, 36px);
            font-weight: 300;
            color: var(--crimson-deep);
            line-height: 1.2;
            margin-bottom: 20px;
        }
        .story-body {
            font-size: 15px;
            font-weight: 300;
            line-height: 1.9;
            color: var(--crimson-mid);
        }
        .story-body p + p { margin-top: 16px; }

        /* ── Wishlist ── */
        .wishlist-section {
            background: var(--crimson-dark);
            padding: 64px 40px;
        }
        .wishlist-inner {
            max-width: 760px;
            margin: 0 auto;
        }
        .wishlist-section .section-label { color: var(--crimson-light); }
        .wishlist-heading {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(26px, 3.5vw, 36px);
            font-weight: 300;
            color: var(--text-on-dark);
            margin-bottom: 32px;
        }
        .wishlist-list {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 2px;
        }
        .wishlist-list li {
            display: flex;
            align-items: center;
            gap: 20px;
            padding: 18px 24px;
            background: rgba(255,255,255,0.04);
            transition: background 0.2s;
        }
        .wishlist-list li:hover { background: rgba(255,255,255,0.08); }
        .wishlist-num {
            font-family: 'Cormorant Garamond', serif;
            font-size: 28px;
            font-weight: 300;
            color: var(--crimson-light);
            opacity: 0.6;
            min-width: 28px;
            line-height: 1;
        }
        .wishlist-name {
            font-size: 15px;
            font-weight: 300;
            color: var(--text-on-dark);
            letter-spacing: 0.03em;
        }
        .wishlist-footer {
            font-size: 14px;
            font-weight: 300;
            font-style: italic;
            color: var(--text-muted);
            margin-top: 28px;
        }

        /* ── Closing note ── */
        .closing-section {
            padding: 64px 40px;
            max-width: 760px;
            margin: 0 auto;
            text-align: center;
        }
        .closing-quote {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(20px, 2.8vw, 28px);
            font-weight: 300;
            font-style: italic;
            color: var(--crimson-mid);
            line-height: 1.5;
        }
        .closing-sub {
            font-size: 13px;
            font-weight: 300;
            color: var(--crimson-light);
            margin-top: 16px;
            letter-spacing: 0.1em;
        }

        /* ── Footer ── */
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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="la17-about">

    <!-- ═══ HEADER ═══ -->
    <div class="about-hero">
        <p class="about-hero-eyebrow">The person behind the bottle</p>
        <h1 class="about-hero-title">About<em>.</em></h1>
        <p class="about-hero-sub">A fragrance enthusiast, a guide.</p>
    </div>


    <!-- ═══ DEVELOPER CARD ═══ -->
    <div class="about-section">
        <p class="section-label">Site Developer</p>
        <div class="dev-card">
            <img class="dev-photo" src="images/LiriAlterPic.jpg" alt="A photo of Liri Alter" />
            <div>
                <p class="dev-info-name">Liri Alter</p>
                <p class="dev-info-role">Founder &amp; Developer</p>
            </div>
        </div>

        <div class="section-divider"></div>

        <!-- ═══ STORY ═══ -->
        <p class="section-label">Why I built this</p>
        <h2 class="story-heading">The reason I chose to make this website</h2>
        <div class="story-body">
            <p>I was born in 28/6/2010, currently 15 years old.</p>
            <p>Fragrances is something that I've been taking interest in for about 4 years now.</p>
            <p>Personally, I have a pretty large collection with 14 fragrances at the moment which I all love.</p>
            <p>But I know that it's a huge amount of fragrances for any other person that doesn't specialize in that topic. That's why I created this website!</p>
            <p>I wanted to make your choice of fragrance — one of the most important decisions you'll make — just the right one for you!</p>
        </div>
    </div>


    <!-- ═══ WISHLIST ═══ -->
    <div class="wishlist-section">
        <div class="wishlist-inner">
            <p class="section-label">On my radar</p>
            <h2 class="wishlist-heading">Some of my favorite fragrances at the moment that I hope on buying soon</h2>
            <ol class="wishlist-list">
                <li>
                    <span class="wishlist-num">01</span>
                    <span class="wishlist-name">Kilian — Apple Brandy On The Rocks</span>
                </li>
                <li>
                    <span class="wishlist-num">02</span>
                    <span class="wishlist-name">Xerjoff — Starlight</span>
                </li>
                <li>
                    <span class="wishlist-num">03</span>
                    <span class="wishlist-name">Louis Vuitton — Afternoon Swim</span>
                </li>
            </ol>
            <p class="wishlist-footer">And there are so many more that I want!</p>
        </div>
    </div>


    <!-- ═══ CLOSING ═══ -->
    <div class="closing-section">
        <p class="closing-quote">"I wanted to make your choice of fragrance just the right one for you."</p>
        <p class="closing-sub">— Liri Alter, LA17 Fragrances</p>
    </div>


    <!-- ═══ FOOTER ═══ -->
    <div class="footer-strip">
        <span class="footer-brand">LA17 Fragrances</span>
    </div>

</div>
</asp:Content>
