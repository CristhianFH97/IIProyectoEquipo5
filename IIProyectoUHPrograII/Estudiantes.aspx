<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Estudiantes.aspx.cs" Inherits="IIProyectoUHPrograII.Estudiantes" %>

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
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            width: 500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Agregar Estudiantes</strong></td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="335px" ImageUrl="~/Imagenes/Estudiantes.jpg" Width="788px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>ID Estudiante:</strong>
                    <asp:TextBox ID="TIDEstudianteES" runat="server"></asp:TextBox>
                    &nbsp;
                    <br />
                    <asp:Button ID="BT4EST" runat="server" Text="CONSULTAR" OnClick="BT4EST_Click" />
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LIMPIAR CONSULTA" />
                    <br />
                    <br />
                    <strong>ID Clase:
                    </strong>
                    <asp:DropDownList ID="DDIdClsES" runat="server" DataSourceID="SqlIdClsES" DataTextField="ClassId" DataValueField="ClassId" OnSelectedIndexChanged="DDIdClsES_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlIdClsES" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" SelectCommand="SELECT [ClassId] FROM [CLASS]"></asp:SqlDataSource>
                    <br />
                    <br />
                    <strong>Nombre del Estudiante:
                    </strong>
                    <asp:TextBox ID="TNombreEstudianteES" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Numero de Estudiante:</strong>
                    <asp:TextBox ID="TNumeroEstudiante" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Nota Total:</strong>
                    <asp:TextBox ID="TNotaTotalEST" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Dirección:</strong>
                    <asp:TextBox ID="TDireccionES" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Telefono:</strong>
                    <asp:TextBox ID="TTelefonoES" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>E-Mail:</strong>&nbsp;
                    <asp:TextBox ID="TEMailES" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="BT1EST" runat="server" OnClick="BT1EST_Click" Text="AGREGAR" />
&nbsp;
                    <asp:Button ID="BT2EST" runat="server" OnClick="BT2EST_Click" Text="MODIFICAR" />
&nbsp;
                    <asp:Button ID="BT3EST" runat="server" OnClick="BT3EST_Click" Text="ELIMINAR" />
                </td>
                <td class="auto-style4">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentId" DataSourceID="SqlStudent" Width="800px">
                        <Columns>
                            <asp:BoundField DataField="StudentId" HeaderText="StudentId" ReadOnly="True" SortExpression="StudentId" />
                            <asp:BoundField DataField="ClassId" HeaderText="ClassId" SortExpression="ClassId" />
                            <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                            <asp:BoundField DataField="StudentNumber" HeaderText="StudentNumber" SortExpression="StudentNumber" />
                            <asp:BoundField DataField="TotalGrade" HeaderText="TotalGrade" SortExpression="TotalGrade" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                            <asp:BoundField DataField="EMail" HeaderText="EMail" SortExpression="EMail" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlStudent" runat="server" ConnectionString="<%$ ConnectionStrings:UNIVERSITYConnectionString %>" DeleteCommand="DELETE FROM STUDENT WHERE StudentId = @StudentIdToDelete;" InsertCommand="INSERT INTO STUDENT (StudentId, ClassId, StudentName, StudentNumber, TotalGrade, Address, Phone, EMail) VALUES (@StudentId, @ClassId, @StudentName, @StudentNumber, @TotalGrade, @Address, @Phone, @EMail);" SelectCommand="SELECT * FROM [STUDENT]" UpdateCommand="UPDATE STUDENT SET
ClassId = @ClassIdToUpdate,
StudentName = @StudentNameToUpdate,
StudentNumber = @StudentNumberToUpdate,
TotalGrade = @TotalGradeToUpdate,
Address = @AddressToUpdate,
Phone = @PhoneToUpdate,
EMail = @EMailToUpdate
WHERE StudentId = @StudentIdToUpdate;">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="TIDEstudianteES" Name="StudentIdToDelete" PropertyName="Text" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TIDEstudianteES" Name="StudentId" PropertyName="Text" />
                            <asp:ControlParameter ControlID="DDIdClsES" Name="ClassId" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="TNombreEstudianteES" Name="StudentName" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TNumeroEstudiante" Name="StudentNumber" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TNotaTotalEST" Name="TotalGrade" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TDireccionES" Name="Address" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TTelefonoES" Name="Phone" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TEMailES" Name="EMail" PropertyName="Text" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="DDIdClsES" Name="ClassIdToUpdate" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="TNombreEstudianteES" Name="StudentNameToUpdate" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TNumeroEstudiante" Name="StudentNumberToUpdate" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TNotaTotalEST" Name="TotalGradeToUpdate" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TDireccionES" Name="AddressToUpdate" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TTelefonoES" Name="PhoneToUpdate" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TEMailES" Name="EMailToUpdate" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TIDEstudianteES" Name="StudentIdToUpdate" PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
