<%@ Page Title="" Language="C#" MasterPageFile="~/pacientes.Master" AutoEventWireup="true" CodeBehind="DiagnosticoP.aspx.cs" Inherits="projeto.DiagnosticoP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <!-- Page Container -->
        <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

          <!-- The Grid -->
          <div class="w3-row-padding">

                <h1>DIAGNÓSTICO</h1><br />
               <!-- CADASTRAR -->
                <div class="w3-container w3-card w3-white w3-margin-bottom">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="bd_diag">
                            <Columns>
                                <asp:BoundField DataField="Dia" HeaderText="Dia" SortExpression="Dia" />
                                <asp:BoundField DataField="Horario" HeaderText="Horario" SortExpression="Horario" />
                                <asp:BoundField DataField="estado" HeaderText="Estado" SortExpression="estado" />
                                <asp:BoundField DataField="remedios" HeaderText="Rémedios" SortExpression="remedios" />
                                <asp:BoundField DataField="doenca" HeaderText="Doença" SortExpression="doenca" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="bd_diag" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" SelectCommand="SELECT c.[Dia], c.[Horario], d.[estado], d.[remedios], d.[doenca] FROM [Diagnostico] d, [ConsultaMedica] c WHERE [id_Diagnostico] in (SELECT [diagnostico] FROM [ConsultaMedica] WHERE [id_paciente] = ( SELECT cpf FROM [Paciente] WHERE [email] = @email)) AND [id_paciente] = (SELECT cpf FROM [Paciente] WHERE [email] = @email)">
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
