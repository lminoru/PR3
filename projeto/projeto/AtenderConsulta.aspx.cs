﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Services;

namespace projeto
{
    public partial class AtenderConsulta : System.Web.UI.Page
    {
        #region Propriedades
        RegisterService registerService = new RegisterService(); //regra de negócio
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["id_medico"] = registerService.cpfMedico(Session["USUARIO_LOGIN"].ToString());
        }



        protected void btn_pesquisar_Click(object sender, EventArgs e)
        {
            lbPaciente.Text = registerService.pesquisarPaciente(Session["USUARIO_LOGIN"].ToString(), txtDia.Text, txtHorario.Text);
        }
    
    }
}