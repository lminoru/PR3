using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projeto
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //validação de session aqui na master page
            if (Session["USUARIO_LOGIN"] == null) //Verificar se o usuario tem acesso
            {
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