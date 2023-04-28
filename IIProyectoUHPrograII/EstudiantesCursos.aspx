<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EstudiantesCursos.aspx.cs" Inherits="IIProyectoUHPrograII.EstudiantesCursos" %>

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
                    <td class="auto-style2" colspan="2"><strong>Asignar Estudiante A Curso</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="335px" ImageUrl="~/Imagenes/Estudiantes.jpg" Width="788px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>ID Estudiante:</strong>
                        <asp:DropDownList ID="DDIdEstEC" runat="server" DataSourceID="SqlIDEstEC" DataTextField="StudentId" DataValueField="StudentId">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlIDEstEC" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" SelectCommand="SELECT [StudentId] FROM [STUDENT]"></asp:SqlDataSource>
                        <br />
&nbsp;<asp:Button ID="BT4EC" runat="server" Text="CONSULTAR" OnClick="BT4EC_Click" />
                        &nbsp;
                        <asp:Button ID="BT5EC" runat="server" OnClick="BT5EC_Click" Text="LIMPIAR CONSULTA" />
                        <br />
                        <br />
                        <strong>ID Curso:</strong>
                        <asp:DropDownList ID="DDIdCsEC" runat="server" DataSourceID="SqlIdCsEC" DataTextField="CourseId" DataValueField="CourseId">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlIdCsEC" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" SelectCommand="SELECT [CourseId] FROM [COURSE]"></asp:SqlDataSource>
                        <br />
                        <br />
                        <asp:Button ID="BT1EC" runat="server" OnClick="BT1EC_Click" Text="AGREGAR" />
&nbsp;
                        <asp:Button ID="BT2EC" runat="server" OnClick="BT2EC_Click" Text="MODIFICAR" />
&nbsp;
                        <asp:Button ID="BT3EC" runat="server" OnClick="BT3EC_Click" Text="ELIMINAR" />
                    </td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentId,CourseId" DataSourceID="SqlStudentCourse" Width="799px">
                            <Columns>
                                <asp:BoundField DataField="StudentId" HeaderText="StudentId" ReadOnly="True" SortExpression="StudentId" />
                                <asp:BoundField DataField="CourseId" HeaderText="CourseId" ReadOnly="True" SortExpression="CourseId" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlStudentCourse" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" DeleteCommand="DELETE FROM STUDENT_COURSE WHERE StudentId = @StudentIdToDelete AND CourseId = @CourseIdToDelete;" InsertCommand="INSERT INTO STUDENT_COURSE (StudentId, CourseId) VALUES (@StudentId, @CourseId);" SelectCommand="SELECT * FROM [STUDENT_COURSE]" UpdateCommand="DELETE FROM STUDENT_COURSE WHERE StudentId = @StudentIdToUpdate AND CourseId = @CourseIdToUpdate;

INSERT INTO STUDENT_COURSE (StudentId, CourseId) VALUES (@StudentIdToUpdate, @CourseIdToUpdate);">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="DDIdEstEC" Name="StudentIdToDelete" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="DDIdCsEC" Name="CourseIdToDelete" PropertyName="SelectedValue" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="DDIdEstEC" Name="StudentId" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="DDIdCsEC" Name="CourseId" PropertyName="SelectedValue" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="DDIdEstEC" Name="StudentIdToUpdate" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="DDIdCsEC" Name="CourseIdToUpdate" PropertyName="SelectedValue" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
