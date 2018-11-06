using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Business.Services;

namespace projeto
{
    public partial class cadastroMedico : System.Web.UI.Page
    {
        #region Propriedades
        RegisterService registerService = new RegisterService(); //regra de negócio
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_cadastrarMedico_Click(object sender, EventArgs e)
        {
            cadastrar(txt_login.Text, Criptografia.Codificar(txt_password.Text), txt_cpf.Text, txt_nome.Text, null, txt_datadenascimento.Text, txtCRM.Text, Convert.ToInt32(ddl_especialidade.SelectedValue));
        }

        public void cadastrar(string email, string senha, string cpf, string nome, string foto, string dt_nascimento, string crm, int id_esp)
        {
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(senha) ||     //campo em branco
                string.IsNullOrEmpty(cpf) || string.IsNullOrEmpty(crm) ||
                string.IsNullOrEmpty(nome) || string.IsNullOrEmpty(dt_nascimento)
                )
            {
                this.ExibirAlerta(Mensagem.tipoMensagem.Alerta, "Preencha todos os campos.");
                txt_login.Focus();
                return;
            }
            else //cadastrar
            {
                //nada em branco
                if (registerService.usernameDisponivel(txt_login.Text))
                {
                    //email disponivel
                    if (txt_password.Text.Equals(txtConfirmarSenha.Text))
                    {
                        //senha de acordo
                        if (registerService.cpfDisponivel(cpf))
                        {
                            if (registerService.cadastrarMedico(email, senha, cpf, nome, null, dt_nascimento, crm, id_esp))
                            {
                                Response.Redirect("Inicial.aspx");
                                this.ExibirAlerta(Mensagem.tipoMensagem.Sucesso, "Paciente cadastrado com sucesso.");
                            }
                            else
                            {
                                this.ExibirAlerta(Mensagem.tipoMensagem.Erro, "Falha no cadastramento.");
                            }
                        }
                        else
                        {
                            this.ExibirAlerta(Mensagem.tipoMensagem.Erro, "CPF já cadastrado.");
                        }

                    }
                    else
                        this.ExibirAlerta(Mensagem.tipoMensagem.Alerta, "Senha não confirmada.");


                }
                else
                {
                    this.ExibirAlerta(Mensagem.tipoMensagem.Alerta, "Email já cadastrado.");

                    return;
                }
            }
        }

    }
}