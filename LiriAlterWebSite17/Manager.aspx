<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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

        .la17-manager * { box-sizing: border-box; margin: 0; padding: 0; }
        .la17-manager {
            font-family: 'Jost', sans-serif;
            background: var(--cream);
            color: var(--crimson-deep);
            display: flex;
            flex-direction: column;
        }

        /* ── Hero ── */
        .mgr-hero {
            background: var(--crimson-deep);
            padding: 72px 40px 64px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .mgr-hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(ellipse at 50% 60%, rgba(140,44,44,0.45) 0%, transparent 70%);
            pointer-events: none;
        }
        .mgr-hero-eyebrow {
            font-size: 10px;
            font-weight: 300;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--text-muted);
            margin-bottom: 20px;
        }
        .mgr-hero-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(44px, 7vw, 72px);
            font-weight: 300;
            color: var(--text-on-dark);
            line-height: 1.0;
        }
        .mgr-hero-title em {
            font-style: italic;
            color: var(--crimson-light);
        }
        .mgr-hero-sub {
            font-family: 'Cormorant Garamond', serif;
            font-style: italic;
            font-size: 16px;
            color: var(--text-muted);
            margin-top: 12px;
            letter-spacing: 0.05em;
        }

        /* ── Body ── */
        .mgr-body {
            padding: 64px 40px;
            max-width: 680px;
            margin: 0 auto;
            width: 100%;
        }

        /* ── Card ── */
        .mgr-card {
            background: var(--cream-dark);
            border-left: 3px solid var(--crimson-warm);
            padding: 52px 56px;
        }
        .mgr-card-label {
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            margin-bottom: 12px;
        }
        .mgr-card-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: 32px;
            font-weight: 300;
            color: var(--crimson-deep);
            margin-bottom: 36px;
            line-height: 1.1;
        }

        /* ── Table (original untouched, only styled) ── */
        #inputDiv table {
            width: 100%;
            border-collapse: collapse;
            table-layout: fixed;
        }
        #inputDiv table tr td {
            padding: 0;
            vertical-align: middle;
        }

        /* Label column */
        #inputDiv table tr td:first-child {
            font-size: 11px;
            font-weight: 400;
            letter-spacing: 0.15em;
            text-transform: uppercase;
            color: var(--crimson-mid);
            padding-bottom: 24px;
            padding-right: 20px;
            white-space: nowrap;
            width: 200px;
            vertical-align: middle;
        }

        /* Input column */
        #inputDiv table tr td:last-child {
            padding-bottom: 24px;
            width: auto;
            overflow: hidden;
        }

        /* colspan rows */
        #inputDiv table tr td[colspan="2"] {
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.35em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            padding: 28px 0 14px;
            border-top: 1px solid var(--cream);
        }

        /* ── Text inputs ── */
        #inputDiv input[type="text"] {
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
        #inputDiv input[type="text"]::placeholder {
            color: var(--text-muted);
            font-weight: 300;
        }
        #inputDiv input[type="text"]:focus {
            border-bottom-color: var(--crimson-deep);
        }

        /* ── Select ── */
        #inputDiv select {
            background: transparent;
            border: none;
            border-bottom: 1px solid var(--crimson-light);
            padding: 8px 0;
            font-family: 'Jost', sans-serif;
            font-size: 14px;
            font-weight: 300;
            color: var(--crimson-deep);
            outline: none;
            cursor: pointer;
            min-width: 160px;
            letter-spacing: 0.05em;
        }

        /* ── Checkboxes ── */
        #inputDiv input[type="checkbox"] {
            appearance: none;
            width: 16px;
            height: 16px;
            border: 1px solid var(--crimson-light);
            background: transparent;
            cursor: pointer;
            position: relative;
            vertical-align: middle;
            transition: background 0.2s ease;
            flex-shrink: 0;
        }
        #inputDiv input[type="checkbox"]:checked {
            background: var(--crimson-warm);
            border-color: var(--crimson-warm);
        }
        #inputDiv input[type="checkbox"]:checked::after {
            content: '';
            position: absolute;
            left: 4px; top: 1px;
            width: 5px; height: 9px;
            border: 2px solid var(--text-on-dark);
            border-top: none;
            border-left: none;
            transform: rotate(45deg);
        }

        /* Checkbox label text */
        #inputDiv table tr td:last-child {
            font-size: 13px;
            font-weight: 300;
            color: var(--crimson-mid);
            letter-spacing: 0.05em;
        }

        /* ── Submit ── */
        #inputDiv input[type="submit"] {
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
        #inputDiv input[type="submit"]:hover {
            background: var(--crimson-warm);
        }

        /* ── msg output ── */
        .mgr-msg {
            font-size: 13px;
            font-weight: 300;
            color: var(--crimson-warm);
            margin-top: 20px;
            letter-spacing: 0.05em;
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
            .mgr-card { padding: 36px 24px; }
            .mgr-body { padding: 40px 16px; }
            #inputDiv table tr td:first-child { width: 140px; }
        }
    </style>

    <%-- Original script — untouched --%>
    <script type="text/javascript">
        function checkCompany() {
            var company = document.getElementById("Company").value;
            var name = document.getElementById("Name").value;

            if (company != "xerjoff" && company != "louis vuitton" && company != "maison margiela" && company != "parfums de marly" && company != "french avenue" && company != "chanel" && company != "dior" && company != "ysl" && company != "jean paul gaultier" && company != "versace" && company != "stephane humbert lucas" && company != "giorgio armani" && company != "tom ford" && company != "creed" && company != "maison francis kurkdjian" && company != "acqua di parma" && company != "kilian" && company != "mancera" && company != "montale" && company != "valentino" && company != "paco rabanne" && company != "prada" && company != "azzaro" && company != "dolce & gabbana" && company != "ralph lauren" && company != "juliette has a gun" && company != "nishane" && company != "amouage") {
                alert("This companey seems to not be on our list, try one of those: xerjoff, louis vuitton, maison margiela, parfums de marly, french avenue, chanel, dior, ysl, jean paul gaultier, versace, stephane humbert lucas, giorgio armani, tom ford, creed, maison francis kurkdjian, acqua di parma, kilian, mancera, montale, valentino, paco rabanne, prada, azzaro, dolce & gabbana, ralph lauren, juliette has a gun, nishane, amouage.");
                return false;
            }
            if (name == "") {
                alert("Please enter a name for the fragrance.");
                return false;
            }
            return true;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="la17-manager">

    <!-- ═══ HERO ═══ -->
    <div class="mgr-hero">
        <p class="mgr-hero-eyebrow">Admin panel</p>
        <h1 class="mgr-hero-title">Manager<em>.</em></h1>
        <p class="mgr-hero-sub">Add a new fragrance to the collection.</p>
    </div>

    <!-- ═══ FORM ═══ -->
    <div class="mgr-body">
        <div class="mgr-card">
            <p class="mgr-card-label">New entry</p>
            <h2 class="mgr-card-title">Enter a new fragrance to the list</h2>

            <%-- Original form — code untouched --%>
            <form name="formPage1" method="post" runat="server">
                <div name="inputDiv" id="inputDiv">
                    <table>
                        <tr>
                            <td>Company:</td>
                            <td>
                                <input type="text" name="Company" id="Company" placeholder="Enter company here">
                            </td>
                        </tr>
                        <tr>
                            <td>Name:</td>
                            <td>
                                <input type="text" name="Name" id="Name" placeholder="Enter name here">
                            </td>
                        </tr>
                        <tr>
                            <td>Scent Profile:</td>
                            <td>
                                <input type="text" name="ScentProfile" id="ScentProfile" placeholder="Enter first scent profile here">
                            </td>
                        </tr>
                        <tr>
                            <td>Market Value (USD):</td>
                            <td>
                                <input type="text" name="MarketValue(USD)" id="MarketValue(USD)" placeholder="Enter Market Value (USD) here">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">Gender Leaning:</td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <input type="checkbox" name="GenderLeaning" value="Male" id="MaleGenderLeaning" /></td>
                            <td>Male</td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <input type="checkbox" name="GenderLeaning" value="Unisex" id="UnisexGenderLeaning" /></td>
                            <td>Unisex</td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <input type="checkbox" name="GenderLeaning" value="Female" id="FemaleGenderLeaning" /></td>
                            <td>Female</td>
                        </tr>
                        <tr>
                            <td>Lasting Time (Hours):</td>
                            <td>
                                <select name="LastingTime(Hours)" id="LastingTime(Hours)">
                                    <option value="0">--select--</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: right">
                                <input id="Submit1" type="submit" value="send" onclick="return checkCompany();"/>
                            </td>
                        </tr>
                    </table>

                    <div class="mgr-msg"><% =msg%></div>

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
