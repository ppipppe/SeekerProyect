<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FormularioRegistroUsuario.aspx.cs" Inherits="AplicacionWeb.Formulario_web14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 182px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:100%;">
        <tr>
            <td >
                &nbsp;</td>
            <td >
                Nuevo registro</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                Nombre</td>
            <td >
                <asp:TextBox ID="txtNombreUsuario" runat="server" ValidationGroup="registrar"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtNombreUsuario" Display="Dynamic" 
                    ErrorMessage="Campo obligatorio" SetFocusOnError="True" 
                    ValidationGroup="registrar"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class=>
                RUT</td>
            <td class=>
                <asp:TextBox ID="txtRutUsuario" runat="server" ValidationGroup="registrar" 
                    MaxLength="12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtRutUsuario" Display="Dynamic" 
                    ErrorMessage="Campo obligatorio" SetFocusOnError="True" 
                    ValidationGroup="registrar"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtRutUsuario" Display="Dynamic" 
                    ErrorMessage="Rut no tiene formato" SetFocusOnError="True" 
                    ValidationExpression="\b\d{1,8}\-[K|k|0-9]" 
                    ValidationGroup="siguiente"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                Número (movil o telefono)</td>
            <td >
                <asp:TextBox ID="txtNumeroUsuario" runat="server" ValidationGroup="registrar" 
                    MaxLength="8" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtNumeroUsuario" Display="Dynamic" 
                    ErrorMessage="Campo obligatorio" SetFocusOnError="True" 
                    ValidationGroup="registrar"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator4" runat="server" 
                    ControlToValidate="txtNumeroUsuario" Display="Dynamic" 
                    ErrorMessage="Ingrese un número válido" MaximumValue="10000000" MinimumValue="0" 
                    Type="Integer" ValidationGroup="registrar" SetFocusOnError="True"></asp:RangeValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                Correo electronico</td>
            <td >
                <asp:TextBox ID="txtCorreoUsuario" runat="server" ValidationGroup="registrar"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtCorreoUsuario" Display="Dynamic" 
                    ErrorMessage="Campo obligatorio" SetFocusOnError="True" 
                    ValidationGroup="registrar"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtCorreoUsuario" Display="Dynamic" 
                    ErrorMessage="Correo no tiene formato" SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="siguiente"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                Password</td>
            <td >
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="15"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="txtPassword" Display="Dynamic" 
                    ErrorMessage="Campo obligatorio" SetFocusOnError="True" 
                    ValidationGroup="registrar"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtPassword" Display="Dynamic" 
                    ErrorMessage="Password debe tener entre 5 a 15 caracteres" SetFocusOnError="True" 
                    ValidationExpression="^[\s\S]{5,15}$" 
                    ValidationGroup="siguiente"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                Confirmar Passsword</td>
            <td >
                <asp:TextBox ID="txtConfirmarPassword" runat="server" MaxLength="15" 
                    TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPassword" ControlToValidate="txtConfirmarPassword" 
                    ErrorMessage="Las contraseñas no coinciden" SetFocusOnError="True" 
                    ValidationGroup="registrar"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="txtConfirmarPassword" Display="Dynamic" 
                    ErrorMessage="Campo obligatorio" SetFocusOnError="True" 
                    ValidationGroup="registrar"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                Area</td>
            <td >
                <asp:DropDownList ID="cmbAreaUsuario" runat="server" Height="16px" 
                    ValidationGroup="registrar" Width="126px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                Fecha nacimiento</td>
            <td >
                <asp:Calendar ID="Calendar" runat="server" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="200px" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td >
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" 
                    ValidationGroup="registrar" onclick="btnRegistrar_Click" />
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" 
                    onclick="btnLimpiar_Click" />
            </td>
            <td>
                &nbsp;</td>
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
                &nbsp;
            </td>
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

