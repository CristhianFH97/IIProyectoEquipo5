<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="IIProyectoUHPrograII.Inicio" %>

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
            text-decoration: underline;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            font-size: medium;
        }
        .auto-style5 {
            font-weight: bold;
            font-size: small;
        }
        .auto-style6 {
            font-size: small;
        }
        .auto-style7 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><strong>Sistema Educativo</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="Image1" runat="server" Height="335px" ImageUrl="~/Imagenes/Inicio.jpg" Width="788px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>
                        <br class="auto-style4" />
                        <span class="auto-style7">Por favor seleccione la sección que desea visitar. Los datos deben ser ingresados en el orden que se muestra a continuación:</span><span class="auto-style4"><br />
                        </span>
                        <br class="auto-style6" />
                        <span class="auto-style4">
                        <asp:Button ID="BTAgregarEscuela" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Agregar Escuela" />
                        <span class="auto-style6">
                        <br />
                        <br />
                        </span>
                        <asp:Button ID="BTAgregarClase" runat="server" CssClass="auto-style5" OnClick="BTAgregarClase_Click" Text="Agregar Clase" />
                        <span class="auto-style6">
                        <br />
                        <br />
                        </span>
                        <asp:Button ID="BTAgregarCurso" runat="server" CssClass="auto-style5" OnClick="Button3_Click" Text="Agregar Curso" />
                        <span class="auto-style6">
                        <br />
                        <br />
                        </span>
                        <asp:Button ID="BTAgregarProfesor" runat="server" CssClass="auto-style5" OnClick="BTAgregarProfesor_Click" Text="Agregar Profesor" />
                        <span class="auto-style6">
                        <br />
                        <br />
                        </span>
                        <asp:Button ID="BTAgregarEstudiante" runat="server" CssClass="auto-style5" OnClick="BTAgregarEstudiante_Click" Text="Agregar Estudiante" />
                        <span class="auto-style6">
                        <br />
                        <br />
                        </span>
                        <asp:Button ID="BTAsignarProfesorACurso" runat="server" CssClass="auto-style5" OnClick="BTAsignarProfesorACurso_Click" Text="Asignar Profesor A Curso" />
                        <span class="auto-style6">
                        <br />
                        <br />
                        </span>
                        <asp:Button ID="BTAsignarEstudianteACurso" runat="server" CssClass="auto-style5" OnClick="BTAsignarEstudianteACurso_Click" Text="Asignar Estudiante A Curso" />
                        <span class="auto-style6">
                        <br />
                        <br />
                        </span>
                        <asp:Button ID="BTAsignarNotas" runat="server" CssClass="auto-style5" OnClick="BTAsignarNotas_Click" Text="Asignar Notas" />
                        <br />
                        </span></strong></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
