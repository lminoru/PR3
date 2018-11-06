<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inicial.aspx.cs" Inherits="projeto.Inicial" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

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
                <!-- LOGADO -->
                <div class="w3-container w3-card w3-white w3-margin-bottom"">

                    BEM VINDO&nbsp;
                    <asp:Label ID="lb_user" runat="server" Text="Label"></asp:Label>
                    !</div>
                <!-- FIM LOGADO-->

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

</asp:Content>
