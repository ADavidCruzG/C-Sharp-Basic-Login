<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-co">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Inicio de sesión</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap-theme.min.css" type="text/css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="css/styles.css" type="text/css" />
    <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap-3.3.7.min.js" type="text/javascript"></script>
</head>
<body>
    <div class="container">
        <div class="row margin-top-50">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <h1 class="text-center login-title">Iniciar sesión</h1>
                <div class="account-wall">
                    <img src="img/login.png" class="profile-img img-responsive" role="presentation"/>
                    <form id="loginForm" runat="server" class="form-signin">
                        <div class="form-group">
                            <label class="control-label" for="txtEmail">E-mail</label>
                            <span class="input-icon">
                                <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="E-mail" TextMode="Email" required="true"></asp:TextBox>
                                <i class="fa fa-at"></i>
                            </span>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="txtPasssword">Contraseña</label>
                            <span class="input-icon">
                                <asp:TextBox ID="txtPasssword" runat="server" class="form-control" placeholder="Contraseña" TextMode="Password" required="true"></asp:TextBox>
                                <i class="fa fa-lock"></i>
                            </span>
                        </div>
                        <div class="form-group text-center">
                            <button id="btnLogin" runat="server" class="btn btn-lg btn-success btn-block" type="submit" onserverclick="userLogin">
                                <i class="fa fa-sign-in "></i>
                                <span class="hidden-xs"><b>Ingresar</b></span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
