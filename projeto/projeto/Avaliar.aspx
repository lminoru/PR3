<%@ Page Title="" Language="C#" MasterPageFile="~/pacientes.Master" AutoEventWireup="true" CodeBehind="Avaliar.aspx.cs" Inherits="projeto.Avaliar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <!-- Page Container -->
        <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

          <!-- The Grid -->
          <div class="w3-row-padding">

                <h1>AVALIAR CONSULTAS</h1><br />
               <!-- CADASTRAR -->
                <div class="w3-container w3-card w3-white w3-margin-bottom">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="bd_avaliar" DataKeyNames="id_consulta">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:TemplateField HeaderText="Satisfação" SortExpression="satisfacao">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("satisfacao") %>' TextMode="Number"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("satisfacao") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="dia" HeaderText="Dia" SortExpression="dia" DataFormatString="{0:dd/MM/yyyy}" />
                                <asp:BoundField DataField="horario" HeaderText="Horário" SortExpression="horario" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="bd_avaliar" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" DeleteCommand="DELETE FROM [ConsultaMedica] WHERE [id_consulta] = @id_consulta" InsertCommand="INSERT INTO [ConsultaMedica] ([satisfacao], [dia], [horario]) VALUES (@satisfacao, @dia, @horario)" SelectCommand="SELECT [id_consulta], [satisfacao], [dia], [horario] FROM [ConsultaMedica] WHERE ([id_paciente] = @id_paciente)" UpdateCommand="UPDATE [ConsultaMedica] SET [satisfacao] = @satisfacao, [dia] = @dia, [horario] = @horario WHERE [id_consulta] = @id_consulta">
                            <DeleteParameters>
                                <asp:Parameter Name="id_consulta" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="satisfacao" Type="String" />
                                <asp:Parameter DbType="Date" Name="dia" />
                                <asp:Parameter DbType="Time" Name="horario" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="id_paciente" SessionField="id_paciente" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="satisfacao" Type="String" />
                                <asp:Parameter DbType="Date" Name="dia" />
                                <asp:Parameter DbType="Time" Name="horario" />
                                <asp:Parameter Name="id_consulta" Type="Int32" />
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
