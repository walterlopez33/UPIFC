<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Entrenador.aspx.cs" Inherits="UPIFC.Entrenador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UPI Futbol CLub</title>
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
             <asp:GridView ID="Datos_Entrenador" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SQLEntrenadores" GridLines="Horizontal" Height="114px" Width="292px">
                 <AlternatingRowStyle BackColor="#F7F7F7" />
                 <Columns>
                     <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                     <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                     <asp:BoundField DataField="CV" HeaderText="CV" SortExpression="CV" />
                 </Columns>
                 <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                 <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                 <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                 <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                 <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                 <SortedAscendingCellStyle BackColor="#F4F4FD" />
                 <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                 <SortedDescendingCellStyle BackColor="#D8D8F0" />
                 <SortedDescendingHeaderStyle BackColor="#3E3277" />
             </asp:GridView>
             <asp:SqlDataSource ID="SQL_Entrenadores_Good" runat="server"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SQLEntrenadores" runat="server" ConnectionString="<%$ ConnectionStrings:UPIFCConnectionStringSQL2 %>" SelectCommand="SELECT [id], [nombre], [CV] FROM [Entrenador]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
         </div>
         <div>
             <asp:Button ID="Agregar" runat="server" Text="Agregar" />
             <asp:Button ID="Remover" runat="server" Text="Remover" />
             <asp:Button ID="Editar" runat="server" Text="Editar" />
        </div>

    </form>
</body>
</html>
