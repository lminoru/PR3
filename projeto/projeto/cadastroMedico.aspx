<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cadastroMedico.aspx.cs" Inherits="projeto.cadastroMedico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

        <!-- The Grid -->
        <div class="w3-row-padding">

            <h1>Cadastrar medico</h1>
            <br />
            <!-- CADASTRAR -->
            <div class="w3-container w3-card w3-white w3-margin-bottom">
                <center>
                    <table>
                        <tr>
                            <td>
                                <!--nome-->  
					            <div class="input-field col m12 s12">
					                <asp:TextBox ID="txt_nome" class="validate" runat="server" TabIndex="1"></asp:TextBox>
                                    <label for="txt_nome">Nome Completo</label>
					            </div>
                            </td>

                            <td>
                                <!--cpf-->
					            <div class="input-field col m12 s12">
                                    <asp:TextBox ID="txt_cpf" class="validate" runat="server" TabIndex="2"></asp:TextBox>
					                <label for="txt_cpf">CPF</label>
					            </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <!--data de nascimento-->  
					            <div class="input-field col m12 s12">
					                <asp:TextBox ID="txt_datadenascimento" class="validate" runat="server" TabIndex="1"></asp:TextBox>
                                    <label for="txt_datadenascimento">Data de Nascimento</label>
					            </div>
                            </td>

                            <td>
                                <!--telefone-->
					            <div class="input-field col m12 s12">
                                    <asp:TextBox ID="txt_telefone" class="validate" runat="server" TabIndex="2"></asp:TextBox>
					                <label for="txt_telefone">Telefone</label>
					            </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <!--login-->  
					            <div class="input-field col m12 s12">
					                <asp:TextBox ID="txt_login" class="validate" runat="server" TabIndex="1"></asp:TextBox>
                                    <label for="txt_login">Nome de email</label>
					            </div>
                            </td>

                            <td>
                                <!--senha-->
					            <div class="input-field col m12 s12">
                                    <asp:TextBox ID="txt_password" TextMode="password" class="validate" runat="server" TabIndex="3"></asp:TextBox>
					                <label for="txt_password">Senha</label>
					            </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <!--crm-->
					            <div class="input-field col m12 s12">
                                    <asp:TextBox ID="txtCRM" class="validate" runat="server" TabIndex="2"></asp:TextBox>
					                <label for="txtCRM">CRM</label>
					            </div>
                            </td>

                            <td>
                                <!--confirmar senha-->
					            <div class="input-field col m12 s12">
                                    <asp:TextBox ID="txtConfirmarSenha" TextMode="password" class="validate" runat="server" TabIndex="4"></asp:TextBox>
					                <label for="txt_password">Confimar Senha</label>
					            </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <!--id especialidade-->
					            <div class="input-field col m12 s12">     		                

					                <asp:DropDownList ID="ddl_especialidade" runat="server" DataSourceID="SqlDataSource1" DataTextField="nome" DataValueField="idEspecialidade" style="display:block">
                                    </asp:DropDownList>

					            </div>
                            </td>
                            <td>
                                <!--foto-->
					            <div class="input-field col m12 s12">
                                        
					                <asp:FileUpload ID="FileUpload1" runat="server" />
                                        
					            </div>
                            </td>
                        </tr>
			            
                    </table>

                    <br /><br />

                    <!--botao cadastrar-->    
				    <div class="row">

                        <asp:Button ID="btn_cadastrarMedico"  class="btn waves-effect waves-light" type="submit" runat="server" name="action" Text="Cadastrar" TabIndex="5" OnClick="btn_cadastrarMedico_Click"/>
				    </div>


				</center>
                  
            </div>
            <!-- FIM LOGAR-->

            
    
        <!-- End Grid -->
        </div>
  
    <!-- End Page Container -->
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Especialidade] ORDER BY [nome]"></asp:SqlDataSource>
</asp:Content>
