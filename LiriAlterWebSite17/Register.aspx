<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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

        .la17-register * { box-sizing: border-box; margin: 0; padding: 0; }
        .la17-register {
            font-family: 'Jost', sans-serif;
            background: var(--cream);
            color: var(--crimson-deep);
            display: flex;
            flex-direction: column;
        }

        /* ── Hero ── */
        .reg-hero {
            background: var(--crimson-deep);
            padding: 72px 40px 64px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .reg-hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(ellipse at 50% 60%, rgba(140,44,44,0.45) 0%, transparent 70%);
            pointer-events: none;
        }
        .reg-hero-eyebrow {
            font-size: 10px;
            font-weight: 300;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--text-muted);
            margin-bottom: 20px;
        }
        .reg-hero-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(44px, 7vw, 72px);
            font-weight: 300;
            color: var(--text-on-dark);
            line-height: 1.0;
        }
        .reg-hero-title em {
            font-style: italic;
            color: var(--crimson-light);
        }
        .reg-hero-sub {
            font-family: 'Cormorant Garamond', serif;
            font-style: italic;
            font-size: 16px;
            color: var(--text-muted);
            margin-top: 12px;
            letter-spacing: 0.05em;
        }

        /* ── Body ── */
        .reg-body {
            padding: 64px 40px;
            max-width: 700px;
            margin: 0 auto;
            width: 100%;
        }

        /* ── Card ── */
        .reg-card {
            background: var(--cream-dark);
            border-left: 3px solid var(--crimson-warm);
            padding: 52px 56px;
        }
        .reg-card-label {
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.4em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            margin-bottom: 12px;
        }
        .reg-card-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: 32px;
            font-weight: 300;
            color: var(--crimson-deep);
            margin-bottom: 8px;
            line-height: 1.1;
        }
        .reg-card-desc {
            font-size: 12px;
            font-weight: 300;
            color: var(--crimson-light);
            margin-bottom: 40px;
            letter-spacing: 0.05em;
        }

        /* ── Section headers inside the form ── */
        .reg-section-title {
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.35em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            padding: 28px 0 16px;
            border-top: 1px solid var(--cream);
            margin-top: 8px;
            display: block;
        }

        /* ── Table (original untouched, only styled) ── */
        #inputDiv table {
            width: 100%;
            border-collapse: collapse;
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
            vertical-align: middle;
        }

        /* Input column */
        #inputDiv table tr td:last-child {
            padding-bottom: 24px;
            width: 100%;
        }

        /* colspan rows (section labels) */
        #inputDiv table tr td[colspan="2"] {
            font-size: 10px;
            font-weight: 400;
            letter-spacing: 0.35em;
            text-transform: uppercase;
            color: var(--crimson-warm);
            padding: 28px 0 14px;
            border-top: 1px solid var(--cream);
        }

        /* ── Text / password inputs ── */
        #inputDiv input[type="text"],
        #inputDiv input[type="password"] {
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
        #inputDiv input[type="text"]::placeholder,
        #inputDiv input[type="password"]::placeholder {
            color: var(--text-muted);
            font-weight: 300;
        }
        #inputDiv input[type="text"]:focus,
        #inputDiv input[type="password"]:focus {
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

        /* ── Textarea ── */
        #inputDiv textarea {
            width: 100%;
            background: var(--cream);
            border: 1px solid var(--cream-dark);
            border-bottom: 1px solid var(--crimson-light);
            padding: 12px;
            font-family: 'Jost', sans-serif;
            font-size: 13px;
            font-weight: 300;
            color: var(--crimson-deep);
            outline: none;
            resize: vertical;
            letter-spacing: 0.03em;
            line-height: 1.7;
            transition: border-color 0.25s ease;
        }
        #inputDiv textarea::placeholder { color: var(--text-muted); }
        #inputDiv textarea:focus { border-color: var(--crimson-mid); }

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
        #inputDiv table tr td:has(input[type="checkbox"]) + td,
        #inputDiv table tr td + td:has(~ td input[type="checkbox"]) {
            font-size: 13px;
            font-weight: 300;
            color: var(--crimson-mid);
            letter-spacing: 0.05em;
        }

        /* ── Radio buttons ── */
        #inputDiv input[type="radio"] {
            appearance: none;
            width: 16px;
            height: 16px;
            border: 1px solid var(--crimson-light);
            border-radius: 50%;
            background: transparent;
            cursor: pointer;
            position: relative;
            transition: border-color 0.2s ease;
        }
        #inputDiv input[type="radio"]:checked {
            border-color: var(--crimson-warm);
        }
        #inputDiv input[type="radio"]:checked::after {
            content: '';
            position: absolute;
            inset: 3px;
            background: var(--crimson-warm);
            border-radius: 50%;
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
        .reg-msg {
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
        #inputDiv table {
            table-layout: fixed;
            width: 100%;
        }

        #inputDiv table tr td:first-child {
            width: 200px;
        }

        #inputDiv table tr td:last-child {
            width: auto;
            overflow: hidden;
        }

        #inputDiv textarea {
            width: 100% !important;
            max-width: 100%;
        }
        @media (max-width: 560px) {
            .reg-card { padding: 36px 24px; }
            .reg-body { padding: 40px 16px; }
        }
    </style>

    <%-- Original validation script — untouched --%>
    <script type="text/javascript">
        function validateForm() {
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            var firstName = document.getElementById("firstName").value;
            var lastName = document.getElementById("lastName").value;
            var age = document.getElementById("age").value;

            var selectedValue = false;
            document.getElementsByName("Gender").forEach(radio => {
                if (radio.checked) {
                    selectedValue = true;
                }
            });

            if (email == "" || password == "" || firstName == "" || lastName == "" || age == "" || !selectedValue) {
                alert("Please fill in all required fields.");
                return false;
            }

            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            var passwordPattern = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,}$/;
            if (!passwordPattern.test(password)) {
                alert("Please enter a valid password. requirements: at least 1 lower case letter, at least 1 upper case letter , at least 1 number, min 8 characters.");
                return false;
            }

            return true;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="la17-register">

    <!-- ═══ HERO ═══ -->
    <div class="reg-hero">
        <p class="reg-hero-eyebrow">Join the collection</p>
        <h1 class="reg-hero-title">Register<em>.</em></h1>
        <p class="reg-hero-sub">Create your account and find your perfect scent.</p>
    </div>

    <!-- ═══ FORM ═══ -->
    <div class="reg-body">
        <div class="reg-card">
            <p class="reg-card-label">New account</p>
            <h2 class="reg-card-title">Tell us about yourself</h2>
            <p class="reg-card-desc">* Required fields</p>

            <%-- Original form — code untouched --%>
            <form name="formPage" method="post" runat="server">
                <div name="inputDiv" id="inputDiv">
                    <table>
                        <tr>
                            <td>* Email:</td>
                            <td>
                                <input type="text" name="email" id="email" placeholder="Enter email here">
                            </td>
                        </tr>
                        <tr>
                            <td>* Password:</td>
                            <td>
                                <input type="password" name="password" id="password" placeholder="Enter password here">
                            </td>
                        </tr>
                        <tr>
                            <td>* First name:</td>
                            <td>
                                <input type="text" name="firstName" id="firstName" placeholder="Enter first name here">
                            </td>
                        </tr>
                        <tr>
                            <td>* Last name:</td>
                            <td>
                                <input type="text" name="lastName" id="lastName" placeholder="Enter last name here">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">Fragrance Notes you find good smelling:</td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><input type="checkbox" name="CB" checked value="Vanilla" id="VanillaCB"/></td>
                            <td>Vanilla</td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><input type="checkbox" name="CB" value="Bergamot" id="BergamotCB"/></td>
                            <td>Bergamot</td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><input type="checkbox" name="CB" value="Sandalwood" id="SandalwoodCB"/></td>
                            <td>Sandalwood</td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><input type="checkbox" name="CB" value="Jasmine" id="JasmineCB"/></td>
                            <td>Jasmine</td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><input type="checkbox" name="CB" value="Musk" id="MuskCB"/></td>
                            <td>Musk</td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><input type="checkbox" name="CB" value="Patchouli" id="PatchouliCB"/></td>
                            <td>Patchouli</td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><input type="checkbox" name="CB" value="Oud" id="OudCB"/></td>
                            <td>Oud</td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><input type="checkbox" name="CB" value="Rose" id="RoseCB"/></td>
                            <td>Rose</td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><input type="checkbox" name="CB" value="Amber" id="AmberCB"/></td>
                            <td>Amber</td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><input type="checkbox" name="CB" value="Vetiver" id="VetiverCB"/></td>
                            <td>Vetiver</td>
                        </tr>
                        <tr>
                            <td colspan="2">* Gender:</td>
                        </tr>
                        <tr>
                            <td style="padding-left:20px">Female</td>
                            <td><input type="radio" name="Gender" value="Female" id="FemaleRB"/></td>
                        </tr>
                        <tr>
                            <td style="padding-left:20px">Male</td>
                            <td><input type="radio" name="Gender" value="Male" id="MaleRB"/></td>
                        </tr>
                        <tr>
                            <td style="padding-left:20px">Other</td>
                            <td><input type="radio" name="Gender" value="Other" id="OtherRB"/></td>
                        </tr>
                        <tr>
                            <td>* Age:</td>
                            <td>
                                <select name="age" id="age">
                                    <option value="">--select--</option>
                                    <option value="-12">-12</option>
                                    <option value="13-17">13-17</option>
                                    <option value="18+">18+</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top">Tell us what's your
                                <br />
                                favorite fragrance and 3
                                <br />
                                notes from it:
                                <br />
                                (max 50 characters)
                            </td>
                            <td>
                                <textarea rows="5" name="freeTextTA" id="freeTextTA" placeholder="Example: Fragrance Name - note 1, note 2, note 3."></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: right">
                                <input id="Submit1" type="submit" value="send" onclick="return validateForm();" />
                            </td>
                        </tr>
                    </table>

                    <div class="reg-msg"><% =msg%></div>

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
