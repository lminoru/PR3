using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Services;

namespace projeto
{
    public partial class cadastrarConsulta : System.Web.UI.Page
    {
        #region Propriedades
        RegisterService registerService = new RegisterService(); //regra de negócio
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
        }



        protected void txtDia_TextChanged(object sender, EventArgs e)
        {
            zerarDDL_horarios(); //zerar ddl horarios
            if (txtDia.Text == "" || Convert.ToDateTime(txtDia.Text) < DateTime.Now.Date) //datas validas
            {
                this.ExibirAlerta(Mensagem.tipoMensagem.Alerta, "Data inválida");
                ddl_horarios.Enabled = false;
                return;//sai
            }
            //else

            inserirHorasDisponiveis();   
        }




        protected void inserirHorasDisponiveis()
        {
            string[] horario;
            horario = registerService.horariosOcupados(txtDia.Text);
            int qtdHorarios = Convert.ToInt32(horario[12]);

            for (int i=0; i<qtdHorarios; i++)
            {
                ddl_horarios.Items.FindByValue(horario[i].Substring(0,5)).Enabled = false; //retira os horarios não disponiveis para consulta
            } 
                
        }

        protected void zerarDDL_horarios()
        {
            ddl_horarios.Enabled = true;
            for (int i=0; i<12; i++)
            {
                ddl_horarios.Items[i].Enabled = true;
            }
        }

        protected void btn_consulta_Click(object sender, EventArgs e)
        {
            if (Convert.ToDateTime(txtDia.Text) >= DateTime.Now.Date )
            {
                //data validada
                if (ddl_horarios.Enabled == true)
                {
                    //há horários disponíveis
                    if (registerService.cadastrarConsultaMedica(ddl_medico.SelectedValue, ddl_pacientes.SelectedValue, txtDia.Text, ddl_horarios.SelectedValue))
                    {
                        //cadastro de consulta realizado com sucesso
                        this.ExibirAlerta(Mensagem.tipoMensagem.Sucesso, "Operação realizada com êxito");
                    }
                    else
                    {
                        this.ExibirAlerta(Mensagem.tipoMensagem.Erro, "Não foi possível realizar esta operação");
                    }
                }
                else
                {
                    this.ExibirAlerta(Mensagem.tipoMensagem.Alerta, "Não há horários disponíveis para esse dia");
                }
            }
            else
            {
                this.ExibirAlerta(Mensagem.tipoMensagem.Alerta, "Data inválida");
            }
        }

        protected void ddl_medico_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtDia.Text = null;
            ddl_pacientes.ClearSelection();
            ddl_horarios.ClearSelection();
            zerarDDL_horarios();
        }
    }
}