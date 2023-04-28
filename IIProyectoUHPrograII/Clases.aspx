<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clases.aspx.cs" Inherits="IIProyectoUHPrograII.Clases" %>

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
            width: 500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Agregar Clases</strong></td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="335px" ImageUrl="~/Imagenes/Clases.jpg" Width="788px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>ID Clase:</strong>
                    <asp:TextBox ID="TIDClaseCLS" runat="server"></asp:TextBox>
                    &nbsp;<br />
                    <asp:Button ID="BT4CS" runat="server" Text="CONSULTAR" OnClick="BT4CS_Click" />
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LIMPIAR CONSULTA" />
                    <br />
                    <br />
                    <strong>ID Escuela:
                    </strong>
                    <asp:DropDownList ID="DDCLS" runat="server" DataSourceID="SqlIDEscCLS" DataTextField="SchoolId" DataValueField="SchoolId">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlIDEscCLS" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" SelectCommand="SELECT [SchoolId] FROM [SCHOOL]"></asp:SqlDataSource>
                    <br />
                    <br />
                    <strong>Nombre de la Clase:</strong>
                    <asp:TextBox ID="TNombreClaseCLS" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Descripción:</strong>
                    <asp:TextBox ID="TDescripcionCLS" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="BT1CS" runat="server" OnClick="BT1CS_Click" Text="AGREGAR" />
&nbsp;
                    <asp:Button ID="BT2CS" runat="server" Height="26px" OnClick="BT2CS_Click" Text="MODIFICAR" />
&nbsp;
                    <asp:Button ID="BT3CS" runat="server" OnClick="BT3CS_Click" Text="ELIMINAR" />
                </td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ClassId" DataSourceID="SqlClass" Width="800px">
                        <Columns>
                            <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" SortExpression="ClassId" />
                            <asp:BoundField DataField="SchoolId" HeaderText="SchoolId" SortExpression="SchoolId" />
                            <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlClass" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" DeleteCommand="DELETE FROM CLASS WHERE ClassId = @ClassId" InsertCommand="INSERT INTO CLASS (ClassId, SchoolId, ClassName, Description) VALUES (@ClassId, @SchoolId, @ClassName, @Description);" SelectCommand="SELECT * FROM [CLASS]" UpdateCommand="UPDATE CLASS
SET SchoolId = @SchoolId,
ClassName = @ClassName,
Description = @Description
WHERE ClassId = @ClassIdToUpdate;
">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="TIDClaseCLS" Name="ClassId" PropertyName="Text" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TIDClaseCLS" Name="ClassId" PropertyName="Text" />
                            <asp:ControlParameter ControlID="DDCLS" Name="SchoolId" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="TNombreClaseCLS" Name="ClassName" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TDescripcionCLS" Name="Description" PropertyName="Text" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="DDCLS" Name="SchoolId" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="TNombreClaseCLS" Name="ClassName" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TDescripcionCLS" Name="Description" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TIDClaseCLS" Name="ClassIdToUpdate" PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
