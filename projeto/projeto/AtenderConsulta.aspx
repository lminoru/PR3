<%@ Page Title="" Language="C#" MasterPageFile="~/medicos.Master" AutoEventWireup="true" CodeBehind="AtenderConsulta.aspx.cs" Inherits="projeto.AtenderConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

        <!-- The Grid -->
        <div class="w3-row-padding">
            <!-- CADASTRAR -->
            <div class="w3-container w3-card w3-white w3-margin-bottom">
                <CENTER>

                   <h1>ATENDIMENTO</h1>


                    <asp:Label ID="lbDia" runat="server" Text="Dia"></asp:Label>
                    <br />
                    <asp:Label ID="lbHorario" runat="server" Text="Horario"></asp:Label>


                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id_consulta" DataSourceID="bd_atendimento" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="estatus" HeaderText="estatus" SortExpression="estatus" />
                            <asp:BoundField DataField="exame" HeaderText="exame" SortExpression="exame" />
                            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="bd_atendimento" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" SelectCommand="SELECT * FROM [ConsultaMedica] WHERE ([dia] = @dia)" DeleteCommand="DELETE FROM [ConsultaMedica] WHERE [id_consulta] = @id_consulta" InsertCommand="INSERT INTO [ConsultaMedica] ([id_medico], [id_paciente], [dia], [horario], [estatus], [exame], [diagnostico]) VALUES (@id_medico, @id_paciente, @dia, @horario, @estatus, @exame, @diagnostico)" UpdateCommand="UPDATE [ConsultaMedica] SET [id_medico] = @id_medico, [id_paciente] = @id_paciente, [dia] = @dia, [horario] = @horario, [estatus] = @estatus, [exame] = @exame, [diagnostico] = @diagnostico WHERE [id_consulta] = @id_consulta">
                        <DeleteParameters>
                            <asp:Parameter Name="id_consulta" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="id_medico" Type="String" />
                            <asp:Parameter Name="id_paciente" Type="String" />
                            <asp:Parameter DbType="Date" Name="dia" />
                            <asp:Parameter DbType="Time" Name="horario" />
                            <asp:Parameter Name="estatus" Type="String" />
                            <asp:Parameter Name="exame" Type="String" />
                            <asp:Parameter Name="diagnostico" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lbDia" DbType="Date" Name="dia" PropertyName="Text" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="id_medico" Type="String" />
                            <asp:Parameter Name="id_paciente" Type="String" />
                            <asp:Parameter DbType="Date" Name="dia" />
                            <asp:Parameter DbType="Time" Name="horario" />
                            <asp:Parameter Name="estatus" Type="String" />
                            <asp:Parameter Name="exame" Type="String" />
                            <asp:Parameter Name="diagnostico" Type="Int32" />
                            <asp:Parameter Name="id_consulta" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    
                   
                    
                   

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
