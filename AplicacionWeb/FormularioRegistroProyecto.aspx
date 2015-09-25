<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FormularioRegistroProyecto.aspx.cs" Inherits="AplicacionWeb.Formulario_web13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            height: 23px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
            </td>
            <td >
                Nuevo Proyecto</td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                Nombre</td>
            <td>
                <asp:TextBox ID="txtNombreProyecto" runat="server" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtNombreProyecto" Display="Dynamic" 
                    ErrorMessage="Campo Obligatorio" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Descripcion</td>
            <td>
                <asp:TextBox ID="txtDescripcion" runat="server" Height="91px" 
                    TextMode="MultiLine" Width="212px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtDescripcion" Display="Dynamic" 
                    ErrorMessage="CampoObligatorio" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Area del Proyecto</td>
            <td>
                <asp:CheckBox ID="chkInformatica" runat="server" Text="Informática" />
                <asp:CheckBox ID="chkSalud" runat="server" Text="Salud" />
                <asp:CheckBox ID="chkDiseño" runat="server" Text="Diseño" />
                <asp:CheckBox ID="chkOtros" runat="server" Text="Otros" />
&nbsp;<asp:Label ID="lblValidar" runat="server" Text="Seleccione"></asp:Label>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Cantidad de Personas</td>
            <td>
                <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtCantidad" Display="Dynamic" 
                    ErrorMessage="Campo Obligatorio" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtCantidad" Display="Dynamic" ErrorMessage="Fuera de rango" 
                    MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td >
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="btnRegistrar" runat="server" onclick="btnRegistrar_Click" 
                    Text="Registrar" />
                <asp:Button ID="btnLimpiar" runat="server" onclick="btnLimpiar_Click" 
                    Text="Limpiar" />
            </td>
            <td >
            </td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table style="width: 100%; border: thin double #000000; width: 100%; box-shadow:10px 10px 5px grey; ">
        <tr>
            <td class="style1">
                <asp:SiteMapPath ID="SiteMapPath1" runat="server">
                </asp:SiteMapPath>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:TextBox ID="txtBuscar" runat="server" Width="201px"></asp:TextBox>
                <asp:Button ID="btnBuscar" runat="server" 
                            Text="Buscar Proyecto" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                <img alt="" class="style2" src="splogo1.png" /></td>
        </tr>
    </table>
</asp:Content>

