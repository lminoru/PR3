<%@ Page Title="" Language="C#" MasterPageFile="~/medicos.Master" AutoEventWireup="true" CodeBehind="AtenderConsulta.aspx.cs" Inherits="projeto.AtenderConsulta" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

        <!-- The Grid -->
        <div class="w3-row-padding">
            <!-- CADASTRAR -->
            <div class="w3-container w3-card w3-white w3-margin-bottom">
                <CENTER>

                   <h1>ATENDIMENTO
                    </h1>

                    <table style="width: 35%">
                        <tr>
                            <td>
                                 <b><asp:Label ID="label1" runat="server" Text="Paciente:"></asp:Label></b>
                            </td>
                            <td>
                                 <b><asp:Label ID="lbPaciente" runat="server" Text=""></asp:Label></b>
                            </td>
                           
                        </tr>
                        <tr>
                            <td>
                                <b>dia</b>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDia" runat="server" TextMode="Date" style="display:block"></asp:TextBox>
                            </td>
                        <tr>
                            <td>
                                <b>horario</b>
                            </td>
                            <td>
                                <asp:TextBox ID="txtHorario" runat="server" TextMode="Time" style="display:block;"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                   
                    <br />
                    <asp:Button ID="btn_pesquisar" class="btn waves-effect waves-light" runat="server" Text="PESQUISAR" style="position:relative; left: 0px; top: 0px; height: 29px;" OnClick="btn_pesquisar_Click" />
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_consulta" DataSourceID="bd_atend">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="estatus" HeaderText="estatus" SortExpression="estatus" />
                            <asp:BoundField DataField="exame" HeaderText="exame" SortExpression="exame" />
                            <asp:BoundField DataField="diagnostico" HeaderText="diagnostico" SortExpression="diagnostico" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="bd_atend" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" DeleteCommand="DELETE FROM [ConsultaMedica] WHERE [id_consulta] = @id_consulta" InsertCommand="INSERT INTO [ConsultaMedica] ([estatus], [exame], [diagnostico]) VALUES (@estatus, @exame, @diagnostico)" SelectCommand="SELECT [id_consulta], [estatus], [exame], [diagnostico] FROM [ConsultaMedica] WHERE (([id_medico] = @id_medico) AND ([dia] = @dia) AND ([horario] = @horario))" UpdateCommand="UPDATE [ConsultaMedica] SET [estatus] = @estatus, [exame] = @exame, [diagnostico] = @diagnostico WHERE [id_consulta] = @id_consulta">
                        <DeleteParameters>
                            <asp:Parameter Name="id_consulta" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="estatus" Type="String" />
                            <asp:Parameter Name="exame" Type="String" />
                            <asp:Parameter Name="diagnostico" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="id_medico" SessionField="id_medico" Type="String" />
                            <asp:ControlParameter ControlID="txtDia" DbType="Date" Name="dia" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtHorario" DbType="Time" Name="horario" PropertyName="Text" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="estatus" Type="String" />
                            <asp:Parameter Name="exame" Type="String" />
                            <asp:Parameter Name="diagnostico" Type="Int32" />
                            <asp:Parameter Name="id_consulta" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />

                   
                    
                   

                    <!--botao cadastrar-->    


                
                

                </CENTER>  
            </div>
            <!-- FIM CADASTRAR-->

            
    
        <!-- End Grid -->
        </div>
  
    <!-- End Page Container -->
</asp:Content>
