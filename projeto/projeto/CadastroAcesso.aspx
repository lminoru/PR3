<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroAcesso.aspx.cs" Inherits="projeto.CadastroAcesso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Container -->
        <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

          <!-- The Grid -->
          <div class="w3-row-padding">

                <h1>Cadastrar paciente</h1><br />
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
                                        <asp:TextBox ID="txt_telefone" class="validate" runat="server" TabIndex="2" TextMode="Phone"></asp:TextBox>
					                    <label for="txt_telefone">Telefone</label>
					                </div>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <!--login-->  
					                <div class="input-field col m12 s12">
					                    <asp:TextBox ID="txt_login" class="validate" runat="server" TabIndex="1" TextMode="Email"></asp:TextBox>
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
                                <td style="width: 50%;"> <!-- são dois inputs, mas o espaço dever de um input (50%)-->
                                    <!--foto-->
					                <div class="input-field col m12 s12">
                                        
					                    <asp:FileUpload ID="fu_foto" runat="server" />
                                        
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
			            
                        </table>

                        <br /><br />

                        <!--botao cadastrar-->    
				        <div class="row">
                            <asp:Button ID="btn_cadastrarAcesso"  class="btn waves-effect waves-light" type="submit" runat="server" name="action" Text="Cadastrar" OnClick="btn_cadastrarAcesso_Click" TabIndex="5"/>
				        </div>


				    </center>
                  
                </div>
              <!-- FIM LOGAR-->


            
    
          <!-- End Grid -->
          </div>
  
        <!-- End Page Container -->
        </div>
</asp:Content>
