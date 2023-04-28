<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="IIProyectoUHPrograII.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        body {
            background-image: url('C:\Users\Cris\Desktop\UH\Progra II\IIProyectoUHPrograII\IIProyectoUHPrograII\Imagenes\Background.PNG');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        h1 {
            text-align: center;
            color: #fff;
            text-shadow: 3px 3px #000;
        }

        label {
            display: block;
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #333;
        }

        input[type="text"], input[type="password"] {
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: none;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #3498db;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: background-color 0.2s ease-in-out;
        }

            .btn:hover {
                background-color: #2980b9;
            }

        .error {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            color: #0099FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
        <h1 class="auto-style3">Login</h1>
        <label for="tcorreo">Correo:</label>
        <asp:TextBox ID="tcorreo" runat="server"></asp:TextBox>
        <label for="tclave">Clave:</label>
        <asp:TextBox ID="tclave" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID="lmensaje" runat="server" CssClass="error"></asp:Label>
        <asp:Button id="Bingresar" runat="server" value="Ingresar" cssclass="btn" onclick="Bingresar_Click" ForeColor="White" Text="INGRESAR" />
        </div>
    </form>
</body>
</html>
