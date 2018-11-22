<%@ Page Title="" Language="C#" MasterPageFile="~/medicos.Master" AutoEventWireup="true" CodeBehind="PerfilM.aspx.cs" Inherits="projeto.PerfilM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <!-- Page Container -->
        <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

          <!-- The Grid -->
          <div class="w3-row-padding">

                <h1>MÉDICO - Perfil</h1><br />
               <!-- CADASTRAR -->
                <div class="w3-container w3-card w3-white w3-margin-bottom">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cpf" DataSourceID="bd_perfilM">
                            <Columns>
                                <asp:BoundField DataField="nome" HeaderText="Nome Completo" SortExpression="nome" />
                                <asp:BoundField DataField="cpf" HeaderText="CPF" ReadOnly="True" SortExpression="cpf" />
                                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                <asp:BoundField DataField="dt_nascimento" HeaderText="Data de Nascimento" SortExpression="dt_nascimento" DataFormatString="{0:dd/MM/yyyy}" />
                                <asp:BoundField DataField="crm" HeaderText="CRM" SortExpression="crm" />
                                <asp:BoundField DataField="nome1" HeaderText="Especialidade" SortExpression="nome1" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="bd_perfilM" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" SelectCommand="SELECT m.[nome], m.[cpf],  m.[email], m.[dt_nascimento], m.[crm], e.[nome]FROM [Medico] m, [Especialidade] e WHERE m.[id_Esp] = e.[idEspecialidade] AND m.[email] = @email">
                            <SelectParameters>
                                <asp:SessionParameter Name="email" SessionField="USUARIO_LOGIN" />
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
