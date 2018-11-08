<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cadastrarConsulta.aspx.cs" Inherits="projeto.cadastrarConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

        <!-- The Grid -->
        <div class="w3-row-padding">

            <h1>CONSULTAS</h1>

            <asp:DropDownList ID="ddl_medico" runat="server" style="display: block;" DataSourceID="bd_medico" DataTextField="nome" DataValueField="cpf">
            </asp:DropDownList>

            <asp:SqlDataSource ID="bd_medico" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" SelectCommand="SELECT * FROM [Medico]"></asp:SqlDataSource>
            
            
            <br />
            <!-- CADASTRAR -->
            <div class="w3-container w3-card w3-white w3-margin-bottom">
                

                  

                  
                <asp:Button ID="btn_consulta" runat="server" Text="nova consulta" />

                
                

                  
                <!--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_consulta" DataSourceID="bd_consulta">
                    <Columns>
                        <asp:BoundField DataField="dia" HeaderText="dia" SortExpression="dia" />
                        <asp:BoundField DataField="horario" HeaderText="horario" SortExpression="horario" />
                        <asp:BoundField DataField="id_consulta" HeaderText="id_consulta" InsertVisible="False" ReadOnly="True" SortExpression="id_consulta" />
                        <asp:BoundField DataField="id_medico" HeaderText="id_medico" SortExpression="id_medico" />
                        <asp:BoundField DataField="id_paciente" HeaderText="id_paciente" SortExpression="id_paciente" />
                        <asp:BoundField DataField="estatus" HeaderText="estatus" SortExpression="estatus" />
                        <asp:BoundField DataField="exame" HeaderText="exame" SortExpression="exame" />
                        <asp:BoundField DataField="diagnostico" HeaderText="diagnostico" SortExpression="diagnostico" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="bd_consulta" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" OnSelecting="bd_consulta_Selecting" SelectCommand="SELECT ConsultaMedica.dia, ConsultaMedica.horario, Paciente.nome FROM ConsultaMedica, Paciente WHERE ConsultaMedica.id_paciente = Paciente.cpf AND ConsultaMedica.id_medico = @id_medico">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddl_medico" Name="id_medico" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>-->

                
                

                  
            </div>
            <!-- FIM CADASTRAR-->

            
    
        <!-- End Grid -->
        </div>
  
    <!-- End Page Container -->
    </div>

    </asp:Content>
