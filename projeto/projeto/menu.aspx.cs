using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using Business.Services;
using Business.ENTITY;

namespace projeto
{
    public partial class menu : System.Web.UI.Page
    {
        #region Propriedades
        LoginService loginService = new LoginService(); //regra de negócio
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USUARIO_LOGIN"] != null)    //Se ja está logado, não é pra entrar aqui
                Response.Redirect("~/Inicial.aspx"); 
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            logar(txtLogin.Text, txtPassword.Text);
        }

        public void logar(string login, string senha)
        {
             if (string.IsNullOrEmpty(login) || string.IsNullOrEmpty(senha))
            {
                this.ExibirAlerta(Mensagem.tipoMensagem.Alerta, "Login ou Senha não informado.");
                txtLogin.Text = string.Empty;
                txtPassword.Text = string.Empty;
                txtLogin.Focus();
                return;
            }
            else
            {
                if (loginService.validarUser(txtLogin.Text, Criptografia.Codificar(txtPassword.Text)))
                {
                    ACESSO user = new ACESSO();
                    user.email = txtLogin.Text; //asdsd
                    user.categoria = loginService.categoria(txtLogin.Text);

                    Session["USUARIO_LOGIN"] = txtLogin.Text;
                    Session["CATEGORIA"] = user.categoria;
                    this.ExibirAlerta(Mensagem.tipoMensagem.Sucesso, "Login realizado com sucesso.");

                    //REDIRECIONAR PARA A PAGINA CERTA DE ACORDO COM A CATEGORIA
                    switch (user.categoria)
                    {
                        case "adm":
                            Response.Redirect("~/Inicial.aspx"); // ~/ procurar dentro do projeto   
                            break;                             
                        case "Paciente":
                            Response.Redirect("~/PerfilP.aspx"); 
                            break;
                        case "Medico":
                            Response.Redirect("~/PerfilM.aspx"); 
                            break;
                    }
                    
                }
                else
                {
                    if (loginService.usernameExiste(txtLogin.Text))
                        this.ExibirAlerta(Mensagem.tipoMensagem.Alerta, "Senha incorreta.");
                    else
                        this.ExibirAlerta(Mensagem.tipoMensagem.Alerta, "Usuário não existe.");

                    return;
                }
            }
        }
    }
}