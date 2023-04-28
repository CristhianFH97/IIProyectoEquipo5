<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfesoresCursos.aspx.cs" Inherits="IIProyectoUHPrograII.ProfesoresCursos" %>

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
            height: 124px;
        }
        .auto-style4 {
            height: 23px;
            text-align: center;
        }
        .auto-style5 {
            height: 124px;
            width: 500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Asignar Profesor A Curso</strong></td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="335px" ImageUrl="~/Imagenes/Profesores.jpg" Width="788px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>ID Profesor:</strong>
                    <asp:DropDownList ID="DDIdPfPC" runat="server" DataSourceID="SqlPIDPC" DataTextField="TeacherId" DataValueField="TeacherId" OnSelectedIndexChanged="DDIdPfPC_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlPIDPC" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" SelectCommand="SELECT [TeacherId] FROM [TEACHER]"></asp:SqlDataSource>
                    <br />
&nbsp;<asp:Button ID="BT4PC" runat="server" Text="CONSULTAR" OnClick="BT4PC_Click" />
                    &nbsp;
                    <asp:Button ID="BT5PC" runat="server" OnClick="BT5PC_Click" Text="LIMPIAR CONSULTA" />
                    <br />
                    <br />
                    <strong>ID Curso:</strong>
                    <asp:DropDownList ID="DDIdCsPC" runat="server" DataSourceID="SqlIdCsPC" DataTextField="CourseId" DataValueField="CourseId">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlIdCsPC" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" SelectCommand="SELECT [CourseId] FROM [COURSE]"></asp:SqlDataSource>
                    <br />
                    <br />
                    <asp:Button ID="BT1PC" runat="server" OnClick="BT1PC_Click" Text="AGREGAR" />
&nbsp;
                    <asp:Button ID="BT2PC" runat="server" OnClick="BT2PC_Click" Text="MODIFICAR" />
&nbsp;
                    <asp:Button ID="BT3PC" runat="server" OnClick="BT3PC_Click" Text="ELIMINAR" />
                </td>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TeacherId,CourseId" DataSourceID="SqlTeacherCourse" Width="800px">
                        <Columns>
                            <asp:BoundField DataField="TeacherId" HeaderText="TeacherId" ReadOnly="True" SortExpression="TeacherId" />
                            <asp:BoundField DataField="CourseId" HeaderText="CourseId" ReadOnly="True" SortExpression="CourseId" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlTeacherCourse" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" DeleteCommand="DELETE FROM TEACHER_COURSE WHERE TeacherId = @TeacherIdToDelete AND CourseId = @CourseIdToDelete;" InsertCommand="INSERT INTO TEACHER_COURSE (TeacherId, CourseId) VALUES (@TeacherId, @CourseId);" ProviderName="<%$ ConnectionStrings:UNIVERSITYConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TEACHER_COURSE]" UpdateCommand="DELETE FROM TEACHER_COURSE WHERE TeacherId = @TeacherIdToUpdate AND CourseId = @CourseIdToUpdate;

INSERT INTO TEACHER_COURSE (TeacherId, CourseId) VALUES (@TeacherIdToUpdate, @CourseIdToUpdate);">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="DDIdPfPC" Name="TeacherIdToDelete" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="DDIdCsPC" Name="CourseIdToDelete" PropertyName="SelectedValue" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="DDIdPfPC" Name="TeacherId" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="DDIdCsPC" Name="CourseId" PropertyName="SelectedValue" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="DDIdPfPC" Name="TeacherIdToUpdate" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="DDIdCsPC" Name="CourseIdToUpdate" PropertyName="SelectedValue" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
