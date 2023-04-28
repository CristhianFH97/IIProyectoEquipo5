<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notas.aspx.cs" Inherits="IIProyectoUHPrograII.Notas" %>

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
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Agregar Notas</strong></td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="335px" ImageUrl="~/Imagenes/Notas.PNG" Width="788px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>ID Nota:
                    <asp:TextBox ID="TIDNotaNT" runat="server"></asp:TextBox>
                    &nbsp;
                    <br />
                    <asp:Button ID="BT4N" runat="server" Text="CONSULTAR" OnClick="BT4N_Click" />
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LIMPIAR CONSULTA" />
                    <br />
                    <br />
                    ID Estudiante:
                    <asp:DropDownList ID="DDIdEstNT" runat="server" DataSourceID="SqlIdEstNT" DataTextField="StudentId" DataValueField="StudentId" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlIdEstNT" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" SelectCommand="SELECT [StudentId] FROM [STUDENT]"></asp:SqlDataSource>
                    <br />
                    <br />
                    ID Curso:
                    <asp:DropDownList ID="DDIdCsNT" runat="server" DataSourceID="SqlIdCsNT" DataTextField="CourseId" DataValueField="CourseId">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlIdCsNT" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" SelectCommand="SELECT [CourseId] FROM [STUDENT_COURSE] WHERE StudentId = @StudentId">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DDIdEstNT" Name="StudentId" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    Nota:
                    <asp:TextBox ID="TNotaNT" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Comentario:
                    <asp:TextBox ID="TComentarioNT" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="BT1NT" runat="server" OnClick="BT1NT_Click" Text="AGREGAR" />
                    &nbsp;
                    <asp:Button ID="BT2NT" runat="server" OnClick="BT2NT_Click" Text="MODIFICAR" />
                    &nbsp;
                    <asp:Button ID="BT3NT" runat="server" OnClick="BT3NT_Click" Text="ELIMINAR" />
                &nbsp;
                </strong></td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GradeId" DataSourceID="SqlGrade" Width="800px">
                        <Columns>
                            <asp:BoundField DataField="GradeId" HeaderText="GradeId" ReadOnly="True" SortExpression="GradeId" />
                            <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                            <asp:BoundField DataField="CourseId" HeaderText="CourseId" SortExpression="CourseId" />
                            <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                            <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlGrade" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" DeleteCommand="DELETE FROM GRADE WHERE GradeId = @GradeIdToDelete;" InsertCommand="INSERT INTO GRADE (GradeId, StudentId, CourseId, Grade, Comment) VALUES (@GradeId, @StudentId, @CourseId, @Grade, @Comment);" SelectCommand="SELECT * FROM [GRADE]" UpdateCommand="UPDATE GRADE SET
StudentId = @StudentIdToUpdate,
CourseId = @CourseIdToUpdate,
Grade = @GradeToUpdate,
Comment = @CommentToUpdate
WHERE GradeId = @GradeIdToUpdate;">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="TIDNotaNT" Name="GradeIdToDelete" PropertyName="Text" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TIDNotaNT" Name="GradeId" PropertyName="Text" />
                            <asp:ControlParameter ControlID="DDIdEstNT" Name="StudentId" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="DDIdCsNT" Name="CourseId" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="TNotaNT" Name="Grade" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TComentarioNT" Name="Comment" PropertyName="Text" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="DDIdEstNT" Name="StudentIdToUpdate" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="DDIdCsNT" Name="CourseIdToUpdate" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="TNotaNT" Name="GradeToUpdate" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TComentarioNT" Name="CommentToUpdate" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TIDNotaNT" Name="GradeIdToUpdate" PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
