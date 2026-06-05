<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

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

        .la17-search * { box-sizing: border-box; margin: 0; padding: 0; }
        .la17-search {
            font-family: 'Jost', sans-serif;
            background: var(--cream);
            color: var(--crimson-deep);
            min-height: 80vh;
            display: flex;
            flex-direction: column;
        }

        /* ── Hero ── */
        .search-hero {
            background: var(--crimson-deep);
            padding: 72px 40px 64px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .search-hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(ellipse at 50% 60%, rgba(140,44,44,0.45) 0%, transparent 70%);
            pointer-events: none;
        }
        .search-hero-eyebrow {
            font-size: 10px;
            font-weight: 300;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--text-muted);
            margin-bottom: 20px;
        }
        .search-hero-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(44px, 7vw, 72px);
            font-weight: 300;
            color: var(--text-on-dark);
            line-height: 1.0;
        }
        .search-hero-title em {
            font-style: italic;
            color: var(--crimson-light);
        }
        .search-hero-sub {
            font-family: 'Cormorant Garamond', serif;
            font-style: italic;
            font-size: 16px;
            color: var(--text-muted);
            margin-top: 12px;
            letter-spacing: 0.05em;
        }

        /* ── Body ── */
        .search-body {
            flex: 1;
            display: flex;
            align-items: flex-start;
            justify-content: center;
            padding: 72px 40px;
        }

        .search-card {
            background: var(--cream-dark);
            border-left: 3px solid var(--crimson-warm);
            padding: 48px 52px;
            width: 100%;
            max-width: 500px;
        }

        .search-card-label {
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            margin-bottom: 12px;
        }

        .search-card-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: 32px;
            font-weight: 300;
            color: var(--crimson-deep);
            margin-bottom: 8px;
            line-height: 1.1;
        }

        .search-card-desc {
            font-size: 13px;
            font-weight: 300;
            color: var(--crimson-mid);
            margin-bottom: 36px;
            letter-spacing: 0.03em;
            line-height: 1.7;
        }

        /* ── Table (original code kept, only styled) ── */
        .search-card table {
            width: 100%;
            border-collapse: collapse;
        }

        .search-card table tr td {
            padding: 0;
            vertical-align: middle;
        }

        /* Label cells */
        .search-card table tr td:first-child {
            font-size: 11px;
            font-weight: 400;
            letter-spacing: 0.2em;
            text-transform: uppercase;
            color: var(--crimson-mid);
            padding-bottom: 28px;
            padding-right: 16px;
            white-space: nowrap;
        }

        /* Input cells */
        .search-card table tr td:last-child {
            padding-bottom: 28px;
            width: 100%;
        }

        /* Inputs */
        .search-card input[type="text"] {
            width: 100%;
            background: transparent;
            border: none;
            border-bottom: 1px solid var(--crimson-light);
            padding: 8px 0;
            font-family: 'Jost', sans-serif;
            font-size: 14px;
            font-weight: 300;
            color: var(--crimson-deep);
            outline: none;
            transition: border-color 0.25s ease;
            letter-spacing: 0.05em;
        }
        .search-card input[type="text"]::placeholder {
            color: var(--text-muted);
            font-weight: 300;
        }
        .search-card input[type="text"]:focus {
            border-bottom-color: var(--crimson-deep);
        }

        /* Submit button */
        .search-card input[type="submit"] {
            background: var(--crimson-deep);
            color: var(--text-on-dark);
            border: none;
            padding: 12px 36px;
            font-family: 'Jost', sans-serif;
            font-size: 11px;
            font-weight: 400;
            letter-spacing: 0.3em;
            text-transform: uppercase;
            cursor: pointer;
            transition: background 0.25s ease;
            margin-top: 8px;
        }
        .search-card input[type="submit"]:hover {
            background: var(--crimson-warm);
        }

        /* ── Results (st2) ── */
        .search-results {
            margin-top: 40px;
            padding-top: 32px;
            border-top: 1px solid var(--cream-dark);
        }
        .search-results-label {
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            margin-bottom: 16px;
        }
        .search-results-content {
            font-size: 14px;
            font-weight: 300;
            color: var(--crimson-mid);
            line-height: 1.9;
            letter-spacing: 0.03em;
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

        @media (max-width: 520px) {
            .search-card { padding: 36px 28px; }
            .search-card table tr td:first-child { display: none; }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="la17-search">

    <!-- ═══ HERO ═══ -->
    <div class="search-hero">
        <p class="search-hero-eyebrow">Find your scent</p>
        <h1 class="search-hero-title">Search<em>.</em></h1>
        <p class="search-hero-sub">Explore the collection.</p>
    </div>

    <!-- ═══ FORM ═══ -->
    <div class="search-body">
        <div class="search-card">
            <p class="search-card-label">Fragrance finder</p>
            <h2 class="search-card-title">Search for a fragrance on the list</h2>
            <p class="search-card-desc">Enter a brand or fragrance name below to find what you're looking for.</p>

            <%-- Original form — code untouched --%>
            <form name="formPage1" method="post" runat="server">

                <table>
                    <tr>
                        <td>Company:</td>
                        <td>
                            <input type="text" name="Company1" id="Company1" placeholder="Enter company here">
                        </td>
                    </tr>
                    <tr>
                        <td>Name:</td>
                        <td>
                            <input type="text" name="Name1" id="Name1" placeholder="Enter name here">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: right">
                            <input id="Submit1" type="submit" value="send" />
                        </td>
                    </tr>
                </table>

                <%-- Results section --%>
                <div class="search-results">
                    <p class="search-results-label">Results</p>
                    <div class="search-results-content"><%=st2 %></div>
                </div>

            </form>
        </div>
    </div>

    <!-- ═══ FOOTER ═══ -->
    <div class="footer-strip">
        <span class="footer-brand">LA17 Fragrances</span>
    </div>

</div>
</asp:Content>