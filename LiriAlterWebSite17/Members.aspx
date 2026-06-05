<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Members.aspx.cs" Inherits="Members" %>

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

        .la17-members * { box-sizing: border-box; margin: 0; padding: 0; }
        .la17-members {
            font-family: 'Jost', sans-serif;
            background: var(--cream);
            color: var(--crimson-deep);
            min-height: 80vh;
            display: flex;
            flex-direction: column;
        }

        /* ── Hero ── */
        .mem-hero {
            background: var(--crimson-deep);
            padding: 72px 40px 64px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .mem-hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(ellipse at 50% 60%, rgba(140,44,44,0.45) 0%, transparent 70%);
            pointer-events: none;
        }
        .mem-hero-eyebrow {
            font-size: 10px;
            font-weight: 300;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--text-muted);
            margin-bottom: 20px;
        }
        .mem-hero-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(44px, 7vw, 72px);
            font-weight: 300;
            color: var(--text-on-dark);
            line-height: 1.0;
        }
        .mem-hero-title em {
            font-style: italic;
            color: var(--crimson-light);
        }
        .mem-hero-sub {
            font-family: 'Cormorant Garamond', serif;
            font-style: italic;
            font-size: 16px;
            color: var(--text-muted);
            margin-top: 12px;
            letter-spacing: 0.05em;
        }

        /* ── Body ── */
        .mem-body {
            flex: 1;
            padding: 64px 40px;
            width: 100%;
            max-width: 100%;
        }

        /* ── st1 — members table ── */
        .mem-list-label {
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            margin-bottom: 32px;
        }

        .mem-table-wrap {
            width: 100%;
            margin-bottom: 56px;
        }

        /* Force the table ASP outputs to be responsive */
        .mem-table-wrap table,
        .mem-results-content table {
            width: 100% !important;
            border-collapse: collapse;
            table-layout: fixed;
        }

        .mem-table-wrap table th,
        .mem-results-content table th {
            font-family: 'Jost', sans-serif;
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.3em;
            text-transform: uppercase;
            color: var(--text-on-dark);
            background: var(--crimson-dark);
            padding: 14px 12px;
            text-align: left;
            border: none;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .mem-table-wrap table td,
        .mem-results-content table td {
            font-family: 'Jost', sans-serif;
            font-size: 12px;
            font-weight: 300;
            color: var(--crimson-mid);
            padding: 12px;
            border-bottom: 1px solid var(--cream-dark);
            letter-spacing: 0.02em;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            max-width: 0;
        }

        .mem-table-wrap table tr:nth-child(even) td,
        .mem-results-content table tr:nth-child(even) td {
            background: var(--cream-dark);
        }

        .mem-table-wrap table tr:hover td,
        .mem-results-content table tr:hover td {
            background: #e0d4c4;
            color: var(--crimson-deep);
        }

        /* ── Divider ── */
        .mem-divider {
            width: 40px;
            height: 1px;
            background: var(--crimson-light);
            margin-bottom: 48px;
        }

        /* ── Search card ── */
        .mem-search-card {
            background: var(--cream-dark);
            border-left: 3px solid var(--crimson-warm);
            padding: 48px 52px;
            width: 100%;
        }
        .mem-search-card-label {
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            margin-bottom: 12px;
        }
        .mem-search-card-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: 32px;
            font-weight: 300;
            color: var(--crimson-deep);
            margin-bottom: 36px;
            line-height: 1.1;
        }

        /* ── Search form table ── */
        .mem-search-card table {
            width: 100% !important;
            border-collapse: collapse;
            table-layout: fixed;
        }
        .mem-search-card table tr td {
            padding: 0;
            vertical-align: middle;
        }
        .mem-search-card table tr td:first-child {
            font-size: 11px;
            font-weight: 400;
            letter-spacing: 0.2em;
            text-transform: uppercase;
            color: var(--crimson-mid);
            padding-bottom: 28px;
            padding-right: 16px;
            white-space: nowrap;
            width: 130px;
        }
        .mem-search-card table tr td:last-child {
            padding-bottom: 28px;
            overflow: hidden;
        }

        .mem-search-card input[type="text"] {
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
        .mem-search-card input[type="text"]::placeholder {
            color: var(--text-muted);
            font-weight: 300;
        }
        .mem-search-card input[type="text"]:focus {
            border-bottom-color: var(--crimson-deep);
        }

        .mem-search-card input[type="submit"] {
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
        .mem-search-card input[type="submit"]:hover {
            background: var(--crimson-warm);
        }

        /* ── st2 results ── */
        .mem-results {
            margin-top: 48px;
            padding-top: 32px;
            border-top: 1px solid var(--crimson-light);
            width: 100%;
        }
        .mem-results-label {
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            margin-bottom: 16px;
        }
        .mem-results-content {
            width: 100%;
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

        @media (max-width: 560px) {
            .mem-search-card { padding: 36px 24px; }
            .mem-body { padding: 40px 16px; }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="la17-members">

    <!-- ═══ HERO ═══ -->
    <div class="mem-hero">
        <p class="mem-hero-eyebrow">Admin panel</p>
        <h1 class="mem-hero-title">Members<em>.</em></h1>
        <p class="mem-hero-sub">Browse and search registered members.</p>
    </div>

    <!-- ═══ BODY ═══ -->
    <div class="mem-body">

        <%-- st1 — full members table --%>
        <p class="mem-list-label">All Members</p>
        <div class="mem-table-wrap">
            <%=st1 %>
        </div>

        <div class="mem-divider"></div>

        <%-- Search form — original code untouched --%>
        <div class="mem-search-card">
            <p class="mem-search-card-label">Member finder</p>
            <h2 class="mem-search-card-title">Search for a member</h2>

            <form name="formPage" method="post" runat="server">
                <table>
                    <tr>
                        <td>First name:</td>
                        <td>
                            <input type="text" name="firstName" id="firstName" placeholder="Enter first name here">
                        </td>
                    </tr>
                    <tr>
                        <td>Last name:</td>
                        <td>
                            <input type="text" name="lastName" id="lastName" placeholder="Enter last name here">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: right">
                            <input id="Submit1" type="submit" value="send" />
                        </td>
                    </tr>
                </table>

            </form>
        </div>

        <%-- st2 results — outside the card so it uses full width --%>
        <div class="mem-results">
            <p class="mem-results-label">Results</p>
            <div class="mem-results-content"><%=st2 %></div>
        </div>

    </div>

    <!-- ═══ FOOTER ═══ -->
    <div class="footer-strip">
        <span class="footer-brand">LA17 Fragrances</span>
    </div>

</div>
</asp:Content>
