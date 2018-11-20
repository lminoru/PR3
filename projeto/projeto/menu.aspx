<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="projeto.menu" %>
<!--<link href="//cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css" rel="stylesheet" id="bootstrap-css">-->
<link rel="stylesheet" href="css/estilo0982.css">
<script src="js/materialize.min.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>


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
    <form id="form2" runat="server">

        <!-- Page Container -->
        <div class="w3-content w3-margin-top" style="max-width:1400px;">

          <!-- The Grid -->
          <div class="w3-row-padding">
  
            <!-- Left Column -->
            <div class="w3-third">
    
              <div class="w3-white w3-text-grey w3-card-4">
                <div class="w3-display-container">
                  <img src="imagens/logo_hospital.png" style="width:100%; position:center" alt="Avatar">
                  <div class="w3-display-bottomleft w3-container w3-text-black">
                    <h2 color="white">Jovem Saudável</h2>
                  </div>
                </div>
                <div class="w3-container">
                  <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>Hebiatria e Pediatria</p>
                  <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>Campinas, BR</p>
                  <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>JovemSaudavel@gmail.com</p>
                  <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>+55 19 3300-9115</p>
                  <hr>

                  <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Especialidades</b></p>
                  <p>Pediatras</p>
                  <div class="w3-light-grey w3-round-xlarge w3-small">
                    <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:90%">90%</div>
                  </div>
                  <p>Hebiatras</p>
                  <div class="w3-light-grey w3-round-xlarge w3-small">
                    <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:80%">
                      <div class="w3-center w3-text-white">80%</div>
                    </div>
                  </div>
                  <p>Cardiologista</p>
                  <div class="w3-light-grey w3-round-xlarge w3-small">
                    <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:75%">75%</div>
                  </div>
                  <p>Geral</p>
                  <div class="w3-light-grey w3-round-xlarge w3-small">
                    <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:50%">50%</div>
                  </div>
                </div>
                <br />
              </div>

            <!-- End Left Column -->
            </div>

            <!-- Right Column -->
            <div class="w3-twothird">
                <!-- LOGAR -->
                <div class="w3-container w3-card w3-white w3-margin-bottom"">

                    <center>
			            <!--login-->  
					    <div class="input-field col m12 s12">
					        <i class="material-icons iconis prefix">account_box</i>
					        <asp:TextBox ID="txtLogin" class="validate" runat="server"></asp:TextBox>
                            <label for="txtLogin">Nome de login</label>
					    </div>

                        <!--senha-->
					    <div class="input-field col m12 s12">
					        <i class="material-icons iconis prefix">enhanced_encryption</i>
                            <asp:TextBox ID="txtPassword" TextMode="password" class="validate" runat="server"></asp:TextBox>
					        <label for="txtPassword">Senha</label>
					    </div>

				        <asp:HyperLink ID="hl_cadastro" runat="server" NavigateUrl="~/cadastro.aspx">Cadastre-se</asp:HyperLink>
                        <br /><br />

                        <!--botao logar-->
				        <div class="row">
                            <asp:Button ID="btn_logar"  class="btn waves-effect waves-light" type="submit" runat="server" name="action" Text="Iniciar sessão" OnClick="btn_login_Click" />
				        </div>
				    </center>
                  
                </div>
              <!-- FIM LOGAR-->

              <div class="w3-container w3-card w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Experiência Renomada</h2>
                <div class="w3-container">
                  <h5 class="w3-opacity"><b>Tratamento de doenças cardiovasculares | Cardiologia</b></h5>
                  <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Jan 2000</h6>
                  <p>Desde cedo deve-se fazer os exames certos sobre o coração</p>
                </div>
                <div class="w3-container">
                  <h5 class="w3-opacity"><b>Tratamento de DSTs | Hebiatria</b></h5>
                  <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Jan 2000</h6>
                  <p>As DSTs afetam e muito a vida dos adolescentes, já que não detêm muito conhecimento sobre os cuidados que devem ter. O contato com um especialista é essencial.</p>
                  <br />                  
                </div>
              </div>
                
              <div class="w3-container w3-card w3-white w3-margin-bottom">
                 <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Línguas</b></p>
                  <p>Português</p>
                  <div class="w3-light-grey w3-round-xlarge">
                    <div class="w3-round-xlarge w3-teal" style="height:2%;width:100%"></div>
                  </div>
                  <p>Inglês</p>
                  <div class="w3-light-grey w3-round-xlarge">
                    <div class="w3-round-xlarge w3-teal" style="height:2%;width:100%"></div>
                  </div>
                  <br />
              </div>
            <!-- End Right Column -->
            </div>
    
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