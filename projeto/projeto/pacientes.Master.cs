using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projeto
{
    public partial class pacientes : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //validação de session aqui na master page
            if (Session["USUARIO_LOGIN"] == null || (!Session["CATEGORIA"].Equals("Paciente"))) //Verificar se o usuario tem acesso
            {
                Session.Abandon();
                Response.Redirect("~/menu.aspx"); // ~/ procurar dentro do projeto
            }
        }

        protected void deslogar_ServerClick(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/menu.aspx");
        }
    }
}