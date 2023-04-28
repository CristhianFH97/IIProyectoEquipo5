<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Escuelas.aspx.cs" Inherits="IIProyectoUHPrograII.Escuelas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: left;
            width: 500px;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Agregar Escuelas</strong></td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="335px" ImageUrl="~/Imagenes/Escuelas.jpg" Width="788px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>ID Escuela:</strong>
                    <asp:TextBox ID="TIDEscuelaEsc" runat="server"></asp:TextBox>
                    &nbsp;
                    <br />
                    <asp:Button ID="BT4ESC" runat="server" Text="CONSULTAR" OnClick="BT4ESC_Click" />
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LIMPIAR CONSULTA" />
                    <br />
                    <br />
                    <strong>Nombre de Escuela:</strong>
                    <asp:TextBox ID="TNombreEscuelaEsc" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Descripción:</strong>
                    <asp:TextBox ID="TDescripcionEsc" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Dirección:
                    </strong>
                    <asp:TextBox ID="TDireccionEsc" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Telefono:
                    </strong>
                    <asp:TextBox ID="TTelefonoEsc" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Codigo Postal:</strong>
                    <asp:TextBox ID="TCodigoPostalEsc" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Dirección Postal:
                    </strong>
                    <asp:TextBox ID="TDireccionPostalEsc" runat="server"></asp:TextBox>
                    <br />
                    .<br />
                    <asp:Button ID="BT1ESC" runat="server" OnClick="BT1ESC_Click" Text="AGREGAR" />
&nbsp;
                    <asp:Button ID="BT2ESC" runat="server" OnClick="BT2ESC_Click" Text="MODIFICAR" />
&nbsp;
                    <asp:Button ID="BT3ESC" runat="server" OnClick="BT3ESC_Click" Text="ELIMINAR" />
                </td>
                <td class="auto-style3">
                    <div class="auto-style5">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SchoolId" DataSourceID="SqlSchool" Width="800px">
                            <Columns>
                                <asp:BoundField DataField="SchoolId" HeaderText="SchoolId" ReadOnly="True" SortExpression="SchoolId" />
                                <asp:BoundField DataField="SchoolName" HeaderText="SchoolName" SortExpression="SchoolName" />
                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                <asp:BoundField DataField="PostCode" HeaderText="PostCode" SortExpression="PostCode" />
                                <asp:BoundField DataField="PostAddress" HeaderText="PostAddress" SortExpression="PostAddress" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlSchool" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" DeleteCommand="DELETE FROM SCHOOL WHERE SchoolId = @SchoolIdToDelete;" InsertCommand="INSERT INTO SCHOOL (SchoolId, SchoolName, Description, Address, Phone, PostCode, PostAddress) VALUES (@SchoolId, @SchoolName, @Description, @Address, @Phone, @PostCode, @PostAddress);" SelectCommand="SELECT * FROM [SCHOOL]" UpdateCommand="UPDATE SCHOOL
SET SchoolName = @SchoolName,
Description = @Description,
Address = @Address,
Phone = @Phone,
PostCode = @PostCode,
PostAddress = @PostAddress
WHERE SchoolId = @SchoolIdToUpdate;">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="TIDEscuelaEsc" Name="SchoolIdToDelete" PropertyName="Text" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TIDEscuelaEsc" Name="SchoolId" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TNombreEscuelaEsc" Name="SchoolName" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TDescripcionEsc" Name="Description" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TDireccionEsc" Name="Address" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TTelefonoEsc" Name="Phone" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TCodigoPostalEsc" Name="PostCode" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TDireccionPostalEsc" Name="PostAddress" PropertyName="Text" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="TNombreEscuelaEsc" Name="SchoolName" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TDescripcionEsc" Name="Description" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TDireccionEsc" Name="Address" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TTelefonoEsc" Name="Phone" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TCodigoPostalEsc" Name="PostCode" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TDireccionPostalEsc" Name="PostAddress" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TIDEscuelaEsc" Name="SchoolIdToUpdate" PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
