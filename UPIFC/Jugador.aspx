<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jugador.aspx.cs" Inherits="UPIFC.Jugador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UPI Futbol Club</title>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #8c004b;
 
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #ffffff;
  color: purple;
}

.active {
  background-color: #04AA6D;

}
    .auto-style1 {
        text-align: center;
        font-size: xx-large;
    }
</style>
</head>
<body>

    <form id="form2" runat="server">
        <div class="auto-style1">
            SISTEMA DEL UPI FUTBOL CLUB
        </div>
        <div>
            <ul>
  <li><a href="principal.aspx">Home</a></li>
  <li><a href="Jugador.aspx">Jugadores</a></li>
  <li><a href="Entrenador.aspx">Entrenadores</a></li>
  <li><a href="#about">Salir</a></li>
</ul>
        </div>
        <div>
      
      id:
      <asp:TextBox ID="id" runat="server"></asp:TextBox>Codigo:
      Nombre:
      <asp:TextBox ID="Nombre" runat="server"></asp:TextBox>Codigo:
      CV:
      <asp:TextBox ID="CV" runat="server"></asp:TextBox>Codigo:
        </div>

        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SQLJugadores" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SQLJugadores" runat="server" ConnectionString="<%$ ConnectionStrings:UPIFCConnectionStringSQL2 %>" SelectCommand="SELECT * FROM [Jugador]"></asp:SqlDataSource>
        </div>

    </form>
</body>
</html>
