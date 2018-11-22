<%@ Page Title="" Language="C#" MasterPageFile="~/pacientes.Master" AutoEventWireup="true" CodeBehind="PerfilP.aspx.cs" Inherits="projeto.PerfilP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <!-- Page Container -->
        <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

          <!-- The Grid -->
          <div class="w3-row-padding">

                <h1>PACIENTE - Perfil</h1><br />
               <!-- CADASTRAR -->
                <div class="w3-container w3-card w3-white w3-margin-bottom">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cpf" DataSourceID="bd_perfilP">
                    <Columns>
                        <asp:BoundField DataField="cpf" HeaderText="CPF" SortExpression="cpf" ReadOnly="True" />
                        <asp:BoundField DataField="nome" HeaderText="Nome Completo" SortExpression="nome" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="dt_aviversario" HeaderText="Data de Aniversário" SortExpression="dt_aviversario" DataFormatString="{0:dd/MM/yyyy}" />
                    </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="bd_perfilP" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" SelectCommand="SELECT [cpf], [nome], [email], [dt_aviversario] FROM [Paciente] WHERE ([email] = @email)">
                        <SelectParameters>
                            <asp:SessionParameter Name="email" SessionField="USUARIO_LOGIN" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                     <br /> 
                  
                </div>
              <!-- FIM LOGAR-->


            
    
          <!-- End Grid -->
          </div>
  
        <!-- End Page Container -->
        </div>

</asp:Content>
