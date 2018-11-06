using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Services;

namespace projeto
{
    public partial class CadastroEspecialidade : System.Web.UI.Page
    {
        #region Propriedades
        RegisterService registerService = new RegisterService(); //regra de negócio
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void cadastrar()
        {
            if (string.IsNullOrEmpty(txt_nomeEsp.Text))     //campo em branco
            {
                this.ExibirAlerta(Mensagem.tipoMensagem.Alerta, "Preencha todos os campos.");
                txt_nomeEsp.Focus();
                return;
            }
            else //cadastrar
            {
                //nada em branco
                if (!registerService.especialidadeExiste(txt_nomeEsp.Text))
                {
                       
                    if (registerService.cadastrarEspecialidade(txt_nomeEsp.Text))
                    {
                        this.ExibirAlerta(Mensagem.tipoMensagem.Sucesso, "Especialidade cadastrada com sucesso.");
                        txt_nomeEsp.Text = "";
                    }
                    else
                    {
                        this.ExibirAlerta(Mensagem.tipoMensagem.Erro, "Falha no cadastramento.");
                    }

                }
                else
                {
                    this.ExibirAlerta(Mensagem.tipoMensagem.Alerta, "Especialidade já cadastrada.");

                    return;
                }
            }
        }

        protected void btn_cadastrarEspcialidade_Click(object sender, EventArgs e)
        {
            cadastrar();
        }
    }
}