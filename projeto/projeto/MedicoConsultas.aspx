<%@ Page Title="" Language="C#" MasterPageFile="~/medicos.Master" AutoEventWireup="true" CodeBehind="MedicoConsultas.aspx.cs" Inherits="projeto.MedicoConsultas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

        <!-- The Grid -->
        <div class="w3-row-padding">
            <!-- CADASTRAR -->
            <div class="w3-container w3-card w3-white w3-margin-bottom">
                <CENTER>
                   <h1>CONSULTAS</h1>

                  
                    

                  
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="bd_consultas" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:BoundField DataField="dia" HeaderText="dia" SortExpression="dia" DataFormatString="{0:dd-MM-yyyy}" />
                            <asp:BoundField DataField="horario" HeaderText="horario" SortExpression="horario" />
                            <asp:BoundField DataField="nome" HeaderText="paciente" SortExpression="nome" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="bd_consultas" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" SelectCommand="SELECT ConsultaMedica.dia, ConsultaMedica.horario, Paciente.nome FROM ConsultaMedica, Paciente WHERE ConsultaMedica.id_paciente = Paciente.cpf and ConsultaMedica.id_medico=@id_medico">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="" Name="id_medico" SessionField="ID" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                   
                    
                    

                  
                   
                    
               


                
                

                </CENTER>  
            </div>
            <!-- FIM CADASTRAR-->

            
    
        <!-- End Grid -->
        </div>
  
    <!-- End Page Container -->
</asp:Content>
