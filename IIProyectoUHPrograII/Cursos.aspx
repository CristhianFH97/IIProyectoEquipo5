<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cursos.aspx.cs" Inherits="IIProyectoUHPrograII.Cursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            font-size: xx-large;
            text-align: center;
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
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Agregar Cursos</strong></td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="335px" ImageUrl="~/Imagenes/Cursos.png" Width="788px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>ID Curso:</strong>
                    <asp:TextBox ID="TIDCursoCS" runat="server"></asp:TextBox>
                    &nbsp;
                    <br />
                    <asp:Button ID="BT4CS" runat="server" Text="CONSULTAR" OnClick="BT4CS_Click" />
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LIMPIAR CONSULTA" />
                    <br />
                    <br />
                    <strong>Nombre del Curso:</strong>
                    <asp:TextBox ID="TNombreCursoCS" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>ID Escuela:
                    </strong>
                    <asp:DropDownList ID="DDEscCS" runat="server" DataSourceID="SqlEscCS" DataTextField="SchoolId" DataValueField="SchoolId">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlEscCS" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" SelectCommand="SELECT [SchoolId] FROM [SCHOOL]"></asp:SqlDataSource>
                    <br />
                    <br />
                    <strong>Descripción:</strong>
                    <asp:TextBox ID="TDescripcionCS" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="BT1CS" runat="server" OnClick="BT1CS_Click" Text="AGREGAR" />
&nbsp;
                    <asp:Button ID="BT2CS" runat="server" OnClick="BT2CS_Click" Text="MODIFICAR" />
&nbsp;
                    <asp:Button ID="BT3CS" runat="server" OnClick="BT3CS_Click" Text="ELIMINAR" style="height: 26px" />
                    <td class="auto-style4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseId" DataSourceID="SqlCS" Width="800px">
                            <Columns>
                                <asp:BoundField DataField="CourseId" HeaderText="CourseId" ReadOnly="True" SortExpression="CourseId" />
                                <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                                <asp:BoundField DataField="SchoolId" HeaderText="SchoolId" SortExpression="SchoolId" />
                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlCS" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" DeleteCommand="DELETE FROM COURSE WHERE CourseId = @CourseIdToDelete;" InsertCommand="INSERT INTO COURSE (CourseId, CourseName, SchoolId, Description) VALUES (@CourseId, @CourseName, @SchoolId, @Description);" SelectCommand="SELECT * FROM [COURSE]" UpdateCommand="UPDATE COURSE
SET CourseName = @CourseName,
SchoolId = @SchoolId,
Description = @Description
WHERE CourseId = @CourseIdToUpdate;">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="TIDCursoCS" Name="CourseIdToDelete" PropertyName="Text" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TIDCursoCS" Name="CourseId" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TNombreCursoCS" Name="CourseName" PropertyName="Text" />
                                <asp:ControlParameter ControlID="DDEscCS" Name="SchoolId" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="TDescripcionCS" Name="Description" PropertyName="Text" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="TNombreCursoCS" Name="CourseName" PropertyName="Text" />
                                <asp:ControlParameter ControlID="DDEscCS" Name="SchoolId" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="TDescripcionCS" Name="Description" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TIDCursoCS" Name="CourseIdToUpdate" PropertyName="Text" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
            </tr>
        </table>
    </form>
</body>
</html>
