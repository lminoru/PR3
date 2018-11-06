using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business.Services;

namespace projeto
{
    public partial class Inicial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //validação de sesssion na master page   
            if (Session["USUARIO_LOGIN"] != null) //Verificar se o usuario tem acesso
            {
                lb_user.Text = Session["USUARIO_LOGIN"].ToString();
            }
        }
    }
}