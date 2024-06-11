<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pregled.aspx.cs" Inherits="Biblioteka.Pregled" %>

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
            <asp:Button class="dumge" ID="Button4" runat="server" Text="Pregled" />
            <asp:Button class="dumge" ID="Button2" runat="server" Text="O autoru" />
            <asp:Button class="dumge" ID="Button3" runat="server" Text="Uputstvo"  />
        </div>

        <div class="prikaz">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                    <asp:BoundField DataField="naslov" HeaderText="Naslov" />
                    <asp:BoundField DataField="stanje" HeaderText="Stanje" />
                    <asp:BoundField DataField="citano" HeaderText="Čitano" />
                </Columns>
            </asp:GridView>
        </div>

        <div class="footer">
            <p>@Gradska biblioteka</p>
        </div>
    </form>
</body>
</html>
