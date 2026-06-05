<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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

        .la17-login * { box-sizing: border-box; margin: 0; padding: 0; }
        .la17-login {
            font-family: 'Jost', sans-serif;
            background: var(--cream);
            color: var(--crimson-deep);
            min-height: 80vh;
            display: flex;
            flex-direction: column;
        }

        /* ── Hero ── */
        .login-hero {
            background: var(--crimson-deep);
            padding: 72px 40px 64px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .login-hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(ellipse at 50% 60%, rgba(140,44,44,0.45) 0%, transparent 70%);
            pointer-events: none;
        }
        .login-hero-eyebrow {
            font-size: 10px;
            font-weight: 300;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--text-muted);
            margin-bottom: 20px;
        }
        .login-hero-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(44px, 7vw, 72px);
            font-weight: 300;
            color: var(--text-on-dark);
            line-height: 1.0;
        }
        .login-hero-title em {
            font-style: italic;
            color: var(--crimson-light);
        }
        .login-hero-sub {
            font-family: 'Cormorant Garamond', serif;
            font-style: italic;
            font-size: 16px;
            color: var(--text-muted);
            margin-top: 12px;
            letter-spacing: 0.05em;
        }

        /* ── Form wrapper ── */
        .login-body {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 72px 40px;
        }

        .login-card {
            background: var(--cream-dark);
            border-left: 3px solid var(--crimson-warm);
            padding: 48px 52px;
            width: 100%;
            max-width: 460px;
        }

        .login-card-label {
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            margin-bottom: 12px;
        }

        .login-card-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: 32px;
            font-weight: 300;
            color: var(--crimson-deep);
            margin-bottom: 36px;
            line-height: 1.1;
        }

        /* ── Table (original code kept, only styled) ── */
        .login-card table {
            width: 100%;
            border-collapse: collapse;
        }

        .login-card table tr td {
            padding: 0;
            vertical-align: middle;
        }

        /* Label cells */
        .login-card table tr td:first-child {
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
        .login-card table tr td:last-child {
            padding-bottom: 28px;
            width: 100%;
        }

        /* Inputs */
        .login-card input[type="email"],
        .login-card input[type="password"] {
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
        .login-card input[type="email"]::placeholder,
        .login-card input[type="password"]::placeholder {
            color: var(--text-muted);
            font-weight: 300;
        }
        .login-card input[type="email"]:focus,
        .login-card input[type="password"]:focus {
            border-bottom-color: var(--crimson-deep);
        }

        /* Submit button */
        .login-card input[type="submit"] {
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
        .login-card input[type="submit"]:hover {
            background: var(--crimson-warm);
        }

        /* msg1 feedback text */
        .login-card .login-msg {
            font-size: 13px;
            font-weight: 300;
            color: var(--crimson-warm);
            margin-top: 16px;
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

        @media (max-width: 520px) {
            .login-card { padding: 36px 28px; }
            .login-card table tr td:first-child { display: none; }
        }
    </style>

    <%-- Original validation script — untouched --%>
    <script type="text/javascript">
        function validateFields() {
            if (document.getElementById("email").value == '') {
                alert('email is invalid');
                return false;
            }
            if (document.getElementById("password").value == '') {
                alert('password is invalid');
                return false;
            }
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="la17-login">

    <!-- ═══ HERO ═══ -->
    <div class="login-hero">
        <p class="login-hero-eyebrow">Welcome back</p>
        <h1 class="login-hero-title">Login<em>.</em></h1>
        <p class="login-hero-sub">Sign in to your account.</p>
    </div>

    <!-- ═══ FORM ═══ -->
    <div class="login-body">
        <div class="login-card">
            <p class="login-card-label">Your account</p>
            <h2 class="login-card-title">Enter your details</h2>

            <%-- Original form — code untouched --%>
            <form name="LoginPage" method="post" runat="server">

                <table>
                    <tr>
                        <td>Email:</td>
                        <td>
                            <input type="email" name="email" id="email" placeholder="Enter email here">
                        </td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td>
                            <input type="password" name="password" id="password" placeholder="Enter password here">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: right">
                            <input id="Submit1" type="submit" value="send" onclick="return validateFields()" />
                        </td>
                    </tr>
                </table>

                <div class="login-msg"><% =msg1%></div>

            </form>
        </div>
    </div>

    <!-- ═══ FOOTER ═══ -->
    <div class="footer-strip">
        <span class="footer-brand">LA17 Fragrances</span>
    </div>

</div>
</asp:Content>
