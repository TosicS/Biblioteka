<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" Inherits="Biblioteka.Pocetna" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <header>
            <p>Biblioteka</p>
        </header>
        </div>

        <div class="menu">
            <asp:Button class="dumge" ID="Button1" runat="server" Text="Pocetna"  />
            <asp:Button class="dumge" ID="Button4" runat="server" Text="Pregled" OnClick="Button4_Click"   />
            <asp:Button class="dumge" ID="Button2" runat="server" Text="O autoru" />
            <asp:Button class="dumge" ID="Button3" runat="server" Text="Uputstvo"  />
        </div>

        <div class="container">

            <table class="auto-style1">
                <tr>
                    <td >Mozete se logovati sa sledecim nalozima</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Korisnicko ime: Test</td>
                    <td>Korisnicko ime: Test2</td>
                </tr>
                <tr>
                    <td>Lozinka: test123</td>
                    <td>Lozinka: test2123</td>
                </tr>
            </table>

            <div class="line"></div>

            <p>Unesite parametre za logovanje <span style="color:blue">Registruj se</span> ako nemas nalog</p>

            <div class="legenda">
                <fieldset>
                    <legend>Forma za logovanje</legend>

                    <span>Korisnicko ime</span><br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                    <br />
                    <br />

                    <span>Lozinka:</span><br />
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </fieldset>
                <br />
            </div>

            <asp:Button ID="ButtonPrijava" class="ButtonPrijava"  runat="server" Text="Prijava" OnClick="ButtonPrijava_Click" />

        </div>



        <div class="footer">
            <p>@Gradska biblioteka</p>
        </div>
            
    </form>
</body>
</html>
