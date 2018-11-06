<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="depoisLogin.aspx.cs" Inherits="projeto.depoisLogin" %>
<link href="//cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<html>
<head runat="server">
    <title>Jovem Saudável</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/estilo.css">
    <link rel='stylesheet' href='css/estilo2.css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    
    <!-- My CSS -->
    <link rel="stylesheet" href="css/login.css">

    <style>
    html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
    </style>
</head>
<body class="w3-light-grey">
    <form id="form3" runat="server">

        <!-- Page Container -->
        <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

          <!-- The Grid -->
          <div class="w3-row-padding">

              <!--menu-->                
              <div class="w3-container w3-card w3-white w3-margin-bottom"">
                    <center>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/menu.aspx">Menu</asp:HyperLink>
                        &nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/cadastro.aspx">Cadastrar</asp:HyperLink>
                        &nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/menu.aspx">Medicos</asp:HyperLink>
                        &nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/cadastro.aspx">Exames</asp:HyperLink>

				        <asp:Menu ID="Menu1" runat="server">
                            <Items>
                                <asp:MenuItem Text="Medicos" Value="Medicos"></asp:MenuItem>
                            </Items>
                        </asp:Menu>

				    </center>
                  
                </div>
              <!--menu-->
               
              <h1>Cadastro de Médicos</h1>

               <!-- LOGAR -->
                <div class="w3-container w3-card w3-white w3-margin-bottom"">
                    <center>
                        <table>
                            <tr>
                                <td>
                                    <!--login-->  
					                    <div class="input-field col m12 s12">
					                        <asp:TextBox ID="txt_login" class="validate" runat="server"></asp:TextBox>
                                            <label for="txt_login">Nome de login</label>
					                    </div>
                                </td>

                                <td>
                                    <!--senha-->
					                <div class="input-field col m12 s12">
                                        <asp:TextBox ID="txt_password" TextMode="password" class="validate" runat="server"></asp:TextBox>
					                    <label for="txt_password">Senha</label>
					                </div>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <!--email-->
					                <div class="input-field col m12 s12">
                                        <asp:TextBox ID="txtEmail" class="validate" runat="server"></asp:TextBox>
					                    <label for="txtEmail">Email</label>
					                </div>
                                </td>

                                <td>
                                    <!--categoria-->
					                <div class="input-field col m12 s12">
                                        <asp:TextBox ID="txtCategoria" class="validate" runat="server"></asp:TextBox>
					                    <label for="txtCategoria">Categoria</label>
					                </div>
                                </td>
                            </tr>
			            
                        </table>

                        <asp:HyperLink ID="hl_voltarmenu" runat="server" NavigateUrl="~/menu.aspx">Menu</asp:HyperLink>
                        <br /><br />

                        <!--botao cadastrar-->    
				        <div class="row">
                            <asp:Button ID="btn_cadastrar2"  class="btn waves-effect waves-light" type="submit" runat="server" name="action" Text="Cadastrar"/>
				        </div>


				    </center>
                  
                </div>
              <!-- FIM LOGAR-->


            
    
          <!-- End Grid -->
          </div>
  
          <!-- End Page Container -->
        </div>

        <footer class="w3-container w3-teal w3-center w3-margin-top">
          <p>Nossas redes sociais.</p>
          <i class="fa fa-facebook-official w3-hover-opacity"></i>
          <i class="fa fa-instagram w3-hover-opacity"></i>
          <i class="fa fa-snapchat w3-hover-opacity"></i>
          <i class="fa fa-pinterest-p w3-hover-opacity"></i>
          <i class="fa fa-twitter w3-hover-opacity"></i>
          <i class="fa fa-linkedin w3-hover-opacity"></i>
          <p>Powered by Minoru</p>
        </footer>
    </form>


     <!-- jQuery first, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script src="mySpxript.js"></script>
    <!-- LOGIN -->


</body>
</html>
