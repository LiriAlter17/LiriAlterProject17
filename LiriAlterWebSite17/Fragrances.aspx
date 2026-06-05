<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Fragrances.aspx.cs" Inherits="Fragrances" %>

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

        .la17-fragrances * { box-sizing: border-box; margin: 0; padding: 0; }
        .la17-fragrances {
            font-family: 'Jost', sans-serif;
            background: var(--cream);
            color: var(--crimson-deep);
            min-height: 80vh;
            display: flex;
            flex-direction: column;
        }

        /* ── Hero ── */
        .frag-hero {
            background: var(--crimson-deep);
            padding: 72px 40px 64px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .frag-hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(ellipse at 50% 60%, rgba(140,44,44,0.45) 0%, transparent 70%);
            pointer-events: none;
        }
        .frag-hero-eyebrow {
            font-size: 10px;
            font-weight: 300;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--text-muted);
            margin-bottom: 20px;
        }
        .frag-hero-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(44px, 7vw, 72px);
            font-weight: 300;
            color: var(--text-on-dark);
            line-height: 1.0;
        }
        .frag-hero-title em {
            font-style: italic;
            color: var(--crimson-light);
        }
        .frag-hero-sub {
            font-family: 'Cormorant Garamond', serif;
            font-style: italic;
            font-size: 16px;
            color: var(--text-muted);
            margin-top: 12px;
            letter-spacing: 0.05em;
        }

        /* ── Body ── */
        .frag-body {
            flex: 1;
            padding: 64px 40px;
            max-width: 1000px;
            margin: 0 auto;
            width: 100%;
        }

        .frag-list-label {
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            margin-bottom: 32px;
        }

        /* ── Style the database table (st1) ── */
        .frag-table-wrap {
            width: 100%;
            overflow-x: auto;
        }

        .frag-table-wrap table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
            font-weight: 300;
        }

        .frag-table-wrap table th {
            font-family: 'Jost', sans-serif;
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.3em;
            text-transform: uppercase;
            color: var(--text-on-dark);
            background: var(--crimson-dark);
            padding: 16px 20px;
            text-align: left;
            border: none;
        }

        .frag-table-wrap table td {
            font-family: 'Jost', sans-serif;
            font-size: 14px;
            font-weight: 300;
            color: var(--crimson-mid);
            padding: 16px 20px;
            border-bottom: 1px solid var(--cream-dark);
            letter-spacing: 0.03em;
        }

        .frag-table-wrap table tr:nth-child(even) td {
            background: var(--cream-dark);
        }

        .frag-table-wrap table tr:hover td {
            background: #e0d4c4;
            color: var(--crimson-deep);
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

        @media (max-width: 600px) {
            .frag-body { padding: 40px 20px; }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="la17-fragrances">

    <!-- ═══ HERO ═══ -->
    <div class="frag-hero">
        <p class="frag-hero-eyebrow">The full list</p>
        <h1 class="frag-hero-title">Fragrances<em>.</em></h1>
        <p class="frag-hero-sub">Every scent, curated for you.</p>
    </div>

    <!-- ═══ TABLE ═══ -->
    <div class="frag-body">
        <p class="frag-list-label">The Collection</p>
        <div class="frag-table-wrap">
            <%=st1 %>
        </div>
    </div>

    <!-- ═══ FOOTER ═══ -->
    <div class="footer-strip">
        <span class="footer-brand">LA17 Fragrances</span>
    </div>

</div>
</asp:Content>

