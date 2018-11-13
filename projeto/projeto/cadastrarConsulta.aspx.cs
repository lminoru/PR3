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

        protected void bd_consulta_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void txtDia_TextChanged(object sender, EventArgs e)
        {
            
            if (txtDia.Text == DateTime.Now.ToShortDateString())
            {
                this.ExibirAlerta(Mensagem.tipoMensagem.Alerta, "Data incorreta");
                ddl_horarios.Enabled = false;
                return;//sai
            }
            //else

            zerarDDL_horarios();
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



    }
}