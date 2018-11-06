<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cadastrarConsulta.aspx.cs" Inherits="projeto.cadastrarConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

        <!-- The Grid -->
        <div class="w3-row-padding">

            <h1>CONSULTAS</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cpf" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="cpf" HeaderText="cpf" ReadOnly="True" SortExpression="cpf" />
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="foto" HeaderText="foto" SortExpression="foto" />
                    <asp:BoundField DataField="dt_nascimento" HeaderText="dt_nascimento" SortExpression="dt_nascimento" />
                    <asp:BoundField DataField="crm" HeaderText="crm" SortExpression="crm" />
                    <asp:BoundField DataField="id_Esp" HeaderText="id_Esp" SortExpression="id_Esp" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csBanco %>" SelectCommand="SELECT * FROM [Medico]"></asp:SqlDataSource>
            <br />
            <!-- CADASTRAR -->
            <div class="w3-container w3-card w3-white w3-margin-bottom">
                

                  

                  
                <asp:Button ID="btn_consulta" runat="server" Text="nova consulta" />

                
                

                  
            </div>
            <!-- FIM CADASTRAR-->

            
    
        <!-- End Grid -->
        </div>
  
    <!-- End Page Container -->
    </div>

    </asp:Content>
