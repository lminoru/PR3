<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroEspecialidade.aspx.cs" Inherits="projeto.CadastroEspecialidade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;height:80%;" >

        <!-- The Grid -->
        <div class="w3-row-padding">

            <h1>Cadastrar especialidade</h1>
            <br />
            <!-- CADASTRAR -->
            <div class="w3-container w3-card w3-white w3-margin-bottom"">
                <center>
                    <table>
                        <tr>
                            <td>
                                <!--nome especialidade-->  
					            <div class="input-field col m12 s12">
					                <asp:TextBox ID="txt_nomeEsp" class="validate" runat="server" TabIndex="1" MaxLength="30"></asp:TextBox>
                                    <label for="txt_nomeEsp">Nome da Especialidade</label>
					            </div>
                            </td>

                        </tr>


			            
                    </table>

                    <br /><br />

                    <!--botao cadastrar-->    
				    <div class="row">

                        <asp:Button ID="btn_cadastrarEspcialidade"  class="btn waves-effect waves-light" type="submit" runat="server" name="action" Text="Cadastrar" TabIndex="2" OnClick="btn_cadastrarEspcialidade_Click"/>
				    </div>


				</center>
                  
            </div>
            <!-- FIM LOGAR-->

            
    
        <!-- End Grid -->
        </div>
  
    <!-- End Page Container -->
    </div>
</asp:Content>
