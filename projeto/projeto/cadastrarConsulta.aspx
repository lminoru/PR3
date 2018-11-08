<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cadastrarConsulta.aspx.cs" Inherits="projeto.cadastrarConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

        <!-- The Grid -->
        <div class="w3-row-padding">
            <!-- CADASTRAR -->
            <div class="w3-container w3-card w3-white w3-margin-bottom">
                

                   <h1>CONSULTAS</h1>

                    <asp:DropDownList ID="ddl_medico" runat="server" style="display: block;" DataSourceID="bd_medico" DataTextField="nome" DataValueField="cpf">
                    </asp:DropDownList>

                    <asp:SqlDataSource ID="bd_medico" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" SelectCommand="SELECT * FROM [Medico]"></asp:SqlDataSource>


                    
                    

                  
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="bd_consulta">
                        <Columns>
                            <asp:BoundField DataField="dia" DataFormatString="{0: dd/MM/yyyy}" HeaderText="dia" SortExpression="dia" />
                            <asp:BoundField DataField="horario" HeaderText="horario" SortExpression="horario" />
                            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                        </Columns>
                   </asp:GridView>
                   <asp:SqlDataSource ID="bd_consulta" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" SelectCommand="SELECT ConsultaMedica.dia, ConsultaMedica.horario, Paciente.nome FROM ConsultaMedica, Paciente WHERE ConsultaMedica.id_paciente = Paciente.cpf and ConsultaMedica.id_medico=@id_medico">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="ddl_medico" Name="id_medico" PropertyName="SelectedValue" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                   <br />


                    
                    

                  
                    <asp:Button ID="btn_consulta" runat="server" Text="nova consulta" />

                
                

                  
            </div>
            <!-- FIM CADASTRAR-->

            
    
        <!-- End Grid -->
        </div>
  
    <!-- End Page Container -->
    </div>

    </asp:Content>
