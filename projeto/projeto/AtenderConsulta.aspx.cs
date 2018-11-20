using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projeto
{
    public partial class AtenderConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbDia.Text = DateTime.Now.ToShortDateString();
            lbHorario.Text = DateTime.Now.ToShortTimeString();
        }

        protected void btn_consulta_Click(object sender, EventArgs e)
        {

        }
    }
}