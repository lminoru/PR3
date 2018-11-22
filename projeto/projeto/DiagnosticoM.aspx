<%@ Page Title="" Language="C#" MasterPageFile="~/medicos.Master" AutoEventWireup="true" CodeBehind="DiagnosticoM.aspx.cs" Inherits="projeto.DiagnosticoM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <!-- Page Container -->
        <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

          <!-- The Grid -->
          <div class="w3-row-padding">

                <h1>DIAGNÓSTICO</h1><br />
               <!-- CADASTRAR -->
                <div class="w3-container w3-card w3-white w3-margin-bottom">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_Diagnostico" DataSourceID="bd_diag">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="id_Diagnostico" HeaderText="ID do Diagnóstico" SortExpression="id_Diagnostico" ReadOnly="True" />
                                <asp:BoundField DataField="estado" HeaderText="Estado" SortExpression="estado" />
                                <asp:BoundField DataField="remedios" HeaderText="Rémedios" SortExpression="remedios" />
                                <asp:BoundField DataField="doenca" HeaderText="Doença" SortExpression="doenca" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="bd_diag" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" DeleteCommand="DELETE FROM [Diagnostico] WHERE [id_Diagnostico] = @id_Diagnostico" InsertCommand="INSERT INTO [Diagnostico] ([id_Diagnostico], [estado], [remedios], [doenca]) VALUES (@id_Diagnostico, @estado, @remedios, @doenca)" SelectCommand="SELECT * FROM [Diagnostico]" UpdateCommand="UPDATE [Diagnostico] SET [estado] = @estado, [remedios] = @remedios, [doenca] = @doenca WHERE [id_Diagnostico] = @id_Diagnostico">
                            <DeleteParameters>
                                <asp:Parameter Name="id_Diagnostico" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="id_Diagnostico" Type="Int32" />
                                <asp:Parameter Name="estado" Type="String" />
                                <asp:Parameter Name="remedios" Type="String" />
                                <asp:Parameter Name="doenca" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="estado" Type="String" />
                                <asp:Parameter Name="remedios" Type="String" />
                                <asp:Parameter Name="doenca" Type="String" />
                                <asp:Parameter Name="id_Diagnostico" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />        
                  
                </div>
              <!-- FIM LOGAR-->


            
    
          <!-- End Grid -->
          </div>
  
        <!-- End Page Container -->
        </div>
</asp:Content>
