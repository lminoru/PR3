<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cadastrarConsulta.aspx.cs" Inherits="projeto.cadastrarConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

        <!-- The Grid -->
        <div class="w3-row-padding">
            <h1>CONSULTAS</h1>
            <br />
            <!-- CADASTRAR -->
            <div class="w3-container w3-card w3-white w3-margin-bottom">
                <CENTER>

                    <p><b>Médico</b></p>

                    <asp:DropDownList ID="ddl_medico" runat="server" style="display: block;" DataSourceID="bd_medico" DataTextField="nome" DataValueField="cpf" AutoPostBack="True" OnTextChanged="ddl_medico_TextChanged">
                    </asp:DropDownList>

                    <asp:SqlDataSource ID="bd_medico" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" SelectCommand="SELECT * FROM [Medico]"></asp:SqlDataSource>


                    
                    

                  
                    <asp:GridView ID="gv_consultasPmedico" runat="server" AutoGenerateColumns="False" DataSourceID="bd_consulta">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="dia" HeaderText="Dia" SortExpression="dia" />
                            <asp:BoundField DataField="horario" HeaderText="Horário" SortExpression="horario" />
                            <asp:BoundField DataField="nome" HeaderText="Paciente" SortExpression="nome" />
                        </Columns>
                   </asp:GridView>
                   
                   

                    <asp:SqlDataSource ID="bd_consulta" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" SelectCommand="SELECT ConsultaMedica.dia, ConsultaMedica.horario, Paciente.nome FROM ConsultaMedica, Paciente WHERE ConsultaMedica.id_paciente = Paciente.cpf and ConsultaMedica.id_medico=@id_medico" UpdateCommand="UPDATE ConsultaMedica SET ConsultaMedica.horario = @horario, ConsultaMedica.dia = @dia WHERE ConsultaMedica.id_consulta = @id_consulta">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="ddl_medico" Name="id_medico" PropertyName="SelectedValue" />
                       </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="horario" />
                            <asp:Parameter Name="dia" />
                            <asp:Parameter Name="id_consulta" />
                        </UpdateParameters>
                   </asp:SqlDataSource>
                   
                    
                   <table>
                            <tr>
                                <td>
                                    <!--dia-->  
					                <div class="input-field col m12 s12">
                                        <asp:TextBox ID="txtDia" runat="server" TextMode="Date" style="display:block;" OnTextChanged="txtDia_TextChanged" AutoPostBack="True"></asp:TextBox>
                                        <!--<label for="txtDia">Dia</label>-->
					                </div>
                                </td>

                                <td>
                                    <!--horario-->
					                <div class="input-field col m12 s12">
                                        
					                    <asp:DropDownList ID="ddl_horarios" runat="server" style="display:block" Enabled="False">
                                            <asp:ListItem>09:00</asp:ListItem>
                                            <asp:ListItem>09:30</asp:ListItem>
                                            <asp:ListItem>10:00</asp:ListItem>
                                            <asp:ListItem>10:30</asp:ListItem>
                                            <asp:ListItem>11:00</asp:ListItem>
                                            <asp:ListItem>11:30</asp:ListItem>
                                            <asp:ListItem>14:00</asp:ListItem>
                                            <asp:ListItem>14:30</asp:ListItem>
                                            <asp:ListItem>15:00</asp:ListItem>
                                            <asp:ListItem>15:30</asp:ListItem>
                                            <asp:ListItem>16:00</asp:ListItem>
                                            <asp:ListItem>16:30</asp:ListItem>
                                        </asp:DropDownList>
                                        
					                </div>
                                </td>

                                <td>
                                    <!---paciente-->
					                <div class="input-field col m12 s12">
                                        <asp:DropDownList ID="ddl_pacientes" runat="server" style="display:block" DataSourceID="bd_paciente" DataTextField="nome" DataValueField="cpf">
                                        </asp:DropDownList>
					                    <asp:SqlDataSource ID="bd_paciente" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" SelectCommand="SELECT * FROM [Paciente] ORDER BY [nome]"></asp:SqlDataSource>
					                </div>
                                </td>
                            </tr>
                   
                   </table>
                   <br />

                    <!--botao cadastrar-->    
				    <div class="row">
                        <asp:Button ID="btn_consulta" class="btn waves-effect waves-light" runat="server" Text="nova consulta" style="position:relative" OnClick="btn_consulta_Click" />
                    </div>


                
                

                </CENTER>  
            </div>
            <!-- FIM CADASTRAR-->

            
    
        <!-- End Grid -->
        </div>
  
    <!-- End Page Container -->

    </asp:Content>
