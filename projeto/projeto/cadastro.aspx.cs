using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using Business.Services;

namespace projeto
{
    public partial class cadastro : System.Web.UI.Page
    {
        #region Propriedades
        RegisterService registerService = new RegisterService(); //regra de negócio
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USUARIO_LOGIN"] != null)   //Se ja está logado, não é pra entrar aqui
                Response.Redirect("~/Inicial.aspx");
        }


        protected void btn_cadastrar_Click(object sender, EventArgs e)
        {
            /*cadastrar(txt_login.Text, Criptografia.Codificar(txt_password.Text), txtCategoria.Text);*/
        }

       /* public void cadastrar(string login, string senha, string categoria)
        {
            if (string.IsNullOrEmpty(login) || string.IsNullOrEmpty(senha)       //campo em branco
                                            || string.IsNullOrEmpty(categoria) )
            {
                this.ExibirAlerta(Mensagem.tipoMensagem.Alerta, "Preencha todos os campos.");
                txt_login.Focus();
                return;
            }
            else //cadastrar
            {
                if (registerService.usernameDisponivel(txt_login.Text))
                {

                    //email disponivel
                    if (registerService.cadastrarUsuario(login, senha, categoria))
                    {
                        this.ExibirAlerta(Mensagem.tipoMensagem.Sucesso, "Usuário cadastrado com sucesso.");
                        Response.Redirect("~/Inicio.aspx");
                    }
                    else
                        this.ExibirAlerta(Mensagem.tipoMensagem.Erro, "Falha no cadastramento.");
                    
                    
                }
                else
                {
                    this.ExibirAlerta(Mensagem.tipoMensagem.Alerta, "Email já cadastrado.");

                    return;
                }
            }
        }*/
    }
}