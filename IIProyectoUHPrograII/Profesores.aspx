<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profesores.aspx.cs" Inherits="IIProyectoUHPrograII.Profesores" %>

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
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Agregar Profesor</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="335px" ImageUrl="~/Imagenes/Profesores.jpg" Width="788px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>ID Profesor:</strong>
                        <asp:TextBox ID="TIDProfesorPF" runat="server"></asp:TextBox>
                        &nbsp;
                        <br />
                        <asp:Button ID="BT4PF" runat="server" Text="CONSULTAR" OnClick="BT4PF_Click" />
                        &nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LIMPIAR CONSULTA" />
                        <br />
                        <br />
                        <strong>ID Escuela:
                        </strong>
                        <asp:DropDownList ID="DDIdEscPF" runat="server" DataSourceID="SqlEscPF" DataTextField="SchoolId" DataValueField="SchoolId">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlEscPF" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" SelectCommand="SELECT [SchoolId] FROM [SCHOOL]"></asp:SqlDataSource>
                        <br />
                        <br />
                        <strong>Nombre del Profesor:</strong> <asp:TextBox ID="TNombreProfesorPF" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <strong>Descripción:</strong>
                        <asp:TextBox ID="TDescripcionPF" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="BT1PF" runat="server" OnClick="BT1PF_Click" Text="AGREGAR" />
&nbsp;
                        <asp:Button ID="BT2PF" runat="server" OnClick="BT2PF_Click" Text="MODIFICAR" />
&nbsp;
                        <asp:Button ID="BT3PF" runat="server" OnClick="BT3PF_Click" Text="ELIMINAR" />
                    </td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TeacherId" DataSourceID="SqlTeacher" Width="800px">
                            <Columns>
                                <asp:BoundField DataField="TeacherId" HeaderText="TeacherId" ReadOnly="True" SortExpression="TeacherId" />
                                <asp:BoundField DataField="SchoolId" HeaderText="SchoolId" SortExpression="SchoolId" />
                                <asp:BoundField DataField="TeacherName" HeaderText="TeacherName" SortExpression="TeacherName" />
                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlTeacher" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" DeleteCommand="DELETE FROM TEACHER WHERE TeacherId = @TeacherIdToDelete;" InsertCommand="INSERT INTO TEACHER (TeacherId, SchoolId, TeacherName, Description) VALUES (@TeacherId, @SchoolId, @TeacherName, @Description);" SelectCommand="SELECT * FROM [TEACHER]" UpdateCommand="UPDATE TEACHER SET
SchoolId = @SchoolIdToUpdate,
TeacherName = @TeacherNameToUpdate,
Description = @DescriptionToUpdate
WHERE TeacherId = @TeacherIdToUpdate;">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="TIDProfesorPF" Name="TeacherIdToDelete" PropertyName="Text" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TIDProfesorPF" Name="TeacherId" PropertyName="Text" />
                                <asp:ControlParameter ControlID="DDIdEscPF" Name="SchoolId" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="TNombreProfesorPF" Name="TeacherName" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TDescripcionPF" Name="Description" PropertyName="Text" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="DDIdEscPF" Name="SchoolIdToUpdate" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="TNombreProfesorPF" Name="TeacherNameToUpdate" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TDescripcionPF" Name="DescriptionToUpdate" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TIDProfesorPF" Name="TeacherIdToUpdate" PropertyName="Text" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
