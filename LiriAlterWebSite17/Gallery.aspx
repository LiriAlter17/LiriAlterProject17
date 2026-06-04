<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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

            --font-serif:    Georgia, 'Times New Roman', Times, serif;
            --font-sans:     'Trebuchet MS', Tahoma, Geneva, Verdana, sans-serif;
        }

        .la17-gallery * { box-sizing: border-box; margin: 0; padding: 0; }
        .la17-gallery {
            font-family: var(--font-sans);
            background: var(--cream);
            color: var(--crimson-deep);
        }

        /* ── Hero ── */
        .gallery-hero {
            background: var(--crimson-deep);
            padding: 72px 40px 64px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .gallery-hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(ellipse at 70% 30%, rgba(140,44,44,0.45) 0%, transparent 70%);
            pointer-events: none;
        }
        .gallery-hero-eyebrow {
            font-family: var(--font-sans);
            font-size: 10px;
            font-weight: 300;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--text-muted);
            margin-bottom: 20px;
        }
        .gallery-hero-title {
            font-family: var(--font-serif);
            font-size: clamp(44px, 7vw, 72px);
            font-weight: 300;
            color: var(--text-on-dark);
            line-height: 1.0;
        }
        .gallery-hero-title em {
            font-style: italic;
            color: var(--crimson-light);
        }
        .gallery-hero-sub {
            font-family: var(--font-serif);
            font-style: italic;
            font-size: 16px;
            color: var(--text-muted);
            margin-top: 12px;
            letter-spacing: 0.05em;
        }

        /* ── Grid ── */
        .gallery-body {
            padding: 64px 40px;
            max-width: 1100px;
            margin: 0 auto;
        }
        .section-label {
            font-family: var(--font-sans);
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            margin-bottom: 32px;
        }

        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 3px;
        }

        /* ── Items use position:relative + padding-bottom instead of aspect-ratio ── */
        .gallery-item {
            position: relative;
            overflow: hidden;
            background: var(--crimson-dark);
            cursor: pointer;
        }

        /* Inner wrapper holds the padding-bottom trick */
        .gallery-item-inner {
            position: relative;
            width: 100%;
            height: 0;
        }

        /* 4/5 ratio  = (5/4)*100  = 125% */
        .ratio-portrait .gallery-item-inner  { padding-bottom: 125%; }

        /* 16/10 ratio = (10/16)*100 = 62.5% */
        .ratio-wide .gallery-item-inner      { padding-bottom: 62.5%; }

        /* Spanning items */
        .gallery-item.span2 { grid-column: span 2; }

        .gallery-item img {
            position: absolute;
            top: 0; left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
            transition: transform 0.6s cubic-bezier(0.25, 0.46, 0.45, 0.94);
            filter: saturate(0.9) brightness(0.95);
        }
        .gallery-item:hover img {
            transform: scale(1.07);
            filter: saturate(1.05) brightness(1.0);
        }

        /* Subtle overlay on hover */
        .gallery-item::after {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(to top, rgba(30,5,5,0.55) 0%, transparent 50%);
            opacity: 0;
            transition: opacity 0.4s ease;
            z-index: 1;
        }
        .gallery-item:hover::after { opacity: 1; }

        /* Caption on hover */
        .gallery-caption {
            position: absolute;
            bottom: 0; left: 0; right: 0;
            padding: 20px 20px 18px;
            transform: translateY(8px);
            opacity: 0;
            transition: opacity 0.35s ease, transform 0.35s ease;
            z-index: 2;
        }
        .gallery-item:hover .gallery-caption {
            opacity: 1;
            transform: translateY(0);
        }
        .gallery-caption-name {
            font-family: var(--font-serif);
            font-size: 18px;
            font-weight: 400;
            color: var(--text-on-dark);
            line-height: 1.2;
        }
        .gallery-caption-note {
            font-family: var(--font-sans);
            font-size: 11px;
            font-weight: 300;
            letter-spacing: 0.18em;
            text-transform: uppercase;
            color: var(--text-muted);
            margin-top: 4px;
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
            font-family: var(--font-serif);
            font-size: 22px;
            font-weight: 300;
            color: var(--text-on-dark);
            letter-spacing: 0.08em;
        }
        .footer-copy {
            font-family: var(--font-sans);
            font-size: 11px;
            font-weight: 300;
            letter-spacing: 0.12em;
            color: var(--text-muted);
        }

        /* ── Responsive ── */
        @media (max-width: 640px) {
            .gallery-grid {
                grid-template-columns: 1fr 1fr;
            }
            .gallery-item.span2 { grid-column: span 2; }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="la17-gallery">

    <!-- ═══ HERO ═══ -->
    <div class="gallery-hero">
        <p class="gallery-hero-eyebrow">A visual collection</p>
        <h1 class="gallery-hero-title">Gallery<em>.</em></h1>
        <p class="gallery-hero-sub">Bottles worth admiring.</p>
    </div>

    <!-- ═══ GRID ═══ -->
    <div class="gallery-body">
        <p class="section-label">The Collection</p>

        <div class="gallery-grid">

            <!-- Row 1: wide (spans 2) + portrait -->
            <div class="gallery-item span2 ratio-wide">
                <div class="gallery-item-inner"></div>
                <img src="images/54.2.jpg" alt="Parfums de Marly Althair" />
                <div class="gallery-caption">
                    <p class="gallery-caption-name">Parfums de Marly — Althair</p>
                    <p class="gallery-caption-note">Woody · Aromatic</p>
                </div>
            </div>

            <div class="gallery-item ratio-portrait">
                <div class="gallery-item-inner"></div>
                <img src="images/16.jpg" alt="Fragrance" />
                <div class="gallery-caption">
                    <p class="gallery-caption-name">Fragrance No. 16</p>
                    <p class="gallery-caption-note">Signature Scent</p>
                </div>
            </div>

            <!-- Row 2: portrait + wide (spans 2) -->
            <div class="gallery-item ratio-portrait">
                <div class="gallery-item-inner"></div>
                <img src="images/M1_PACIFIC_CHILL_VISUAL_LVCOM_1600x2000_DII.jpg" alt="Louis Vuitton Pacific Chill" />
                <div class="gallery-caption">
                    <p class="gallery-caption-name">Louis Vuitton — Pacific Chill</p>
                    <p class="gallery-caption-note">Fresh · Aquatic</p>
                </div>
            </div>

            <div class="gallery-item span2 ratio-wide">
                <div class="gallery-item-inner"></div>
                <img src="images/Parfumsamples_Noten_Stephane_Humbert_Lucas_777_God_Of_Fire_Eau_de_Parfum_4.jpg" alt="Stephane Humbert Lucas 777 God of Fire" />
                <div class="gallery-caption">
                    <p class="gallery-caption-name">SHL 777 — God of Fire</p>
                    <p class="gallery-caption-note">Oriental · Smoky</p>
                </div>
            </div>

            <!-- Row 3: wide (spans 2) + portrait -->
            <div class="gallery-item span2 ratio-wide">
                <div class="gallery-item-inner"></div>
                <img src="images/p465332-av-05-zoom.jpg" alt="Fragrance" />
                <div class="gallery-caption">
                    <p class="gallery-caption-name">Curated Pick</p>
                    <p class="gallery-caption-note">Rare · Refined</p>
                </div>
            </div>

            <div class="gallery-item ratio-portrait">
                <div class="gallery-item-inner"></div>
                <img src="images/images.jpg" alt="Fragrance" />
                <div class="gallery-caption">
                    <p class="gallery-caption-name">Curated Pick</p>
                    <p class="gallery-caption-note">Rare · Refined</p>
                </div>
            </div>

            <!-- Row 4: portrait + wide (spans 2) -->
            <div class="gallery-item ratio-portrait">
                <div class="gallery-item-inner"></div>
                <img src="images/images.jpg" alt="Fragrance name" />
                <div class="gallery-caption">
                    <p class="gallery-caption-name">Brand — Fragrance Name</p>
                    <p class="gallery-caption-note">Note · Note</p>
                </div>
            </div>

            <div class="gallery-item span2 ratio-wide">
                <div class="gallery-item-inner"></div>
                <img src="images/images.jpg" alt="Fragrance name" />
                <div class="gallery-caption">
                    <p class="gallery-caption-name">Brand — Fragrance Name</p>
                    <p class="gallery-caption-note">Note · Note</p>
                </div>
            </div>

            <!-- Row 5: three portraits -->
            <div class="gallery-item ratio-portrait">
                <div class="gallery-item-inner"></div>
                <img src="images/images.jpg" alt="Fragrance name" />
                <div class="gallery-caption">
                    <p class="gallery-caption-name">Brand — Fragrance Name</p>
                    <p class="gallery-caption-note">Note · Note</p>
                </div>
            </div>

            <div class="gallery-item ratio-portrait">
                <div class="gallery-item-inner"></div>
                <img src="images/images.jpg" alt="Fragrance name" />
                <div class="gallery-caption">
                    <p class="gallery-caption-name">Brand — Fragrance Name</p>
                    <p class="gallery-caption-note">Note · Note</p>
                </div>
            </div>

            <div class="gallery-item ratio-portrait">
                <div class="gallery-item-inner"></div>
                <img src="images/images.jpg" alt="Fragrance name" />
                <div class="gallery-caption">
                    <p class="gallery-caption-name">Brand — Fragrance Name</p>
                    <p class="gallery-caption-note">Note · Note</p>
                </div>
            </div>

            <div class="gallery-item ratio-portrait">
                <div class="gallery-item-inner"></div>
                <img src="images/images.jpg" alt="Fragrance name" />
                <div class="gallery-caption">
                    <p class="gallery-caption-name">Brand — Fragrance Name</p>
                    <p class="gallery-caption-note">Note · Note</p>
                </div>
            </div>

        </div>
    </div>

    <!-- ═══ FOOTER ═══ -->
    <div class="footer-strip">
        <span class="footer-brand">LA17 Fragrances</span>
        <span class="footer-copy">&copy; 2024 &nbsp;·&nbsp; All rights reserved</span>
    </div>

</div>
</asp:Content>
