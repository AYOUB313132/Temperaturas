<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="conversorTemperaturas.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="style.css" />
<title>Conversor de Temperatora</title>
</head>
<body>
    <form id="form1" runat="server">
       <div class="pagina">
            <div class="encabezado">
                <h1>Conversor de Temperaturas</h1>
            </div>
            <div class="cuerpo">
                <asp:Label ID="lblCentigrados" runat="server" Text="Grados Centígrados" CssClass="elemento"></asp:Label>
                <asp:TextBox ID="txtCentigrados" runat="server" CssClass="elemento"></asp:TextBox>
                <asp:Label ID="lblFarenheit" runat="server" Text="Grados Farenheiht" CssClass="elemento"></asp:Label>
                <asp:TextBox  ID="txtFarenheit" runat="server" CssClass="elemento"></asp:TextBox>
                <asp:Button ID="btnCalcular" runat="server" Text="CALCULAR" CssClass="elemento1" OnClick="btnCalcular_Click" />
                <asp:Button ID="btnLimpiar" runat="server" Text="LIMPIAR"  CssClass="elemento2" OnClick="btnLimpiar_Click" />
            </div>
        </div>
        
    </form>
    <script src="Scripte/js1.js"></script>
</body>
</html>
