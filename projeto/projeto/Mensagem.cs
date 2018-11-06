using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace projeto
{
    public static class Mensagem
    {
        public enum tipoMensagem
        {
            Alerta = 1,
            Sucesso = 2,
            Erro = 3
        }

        public static void ExibirAlerta(this System.Web.UI.Page page, tipoMensagem tipo, string texto)
        {
            switch (tipo)
            {
                case Mensagem.tipoMensagem.Alerta:
                    texto = "ATENÇÃO! \\n\\n" + texto;
                    break;
                case Mensagem.tipoMensagem.Erro:
                    texto = "ERRO! \\n\\n" + texto;
                    break;
                case Mensagem.tipoMensagem.Sucesso:
                    texto = "SUCESSO! \\n\\n" + texto;
                    break;
            }

            string script = "alert('" + texto +"')";
            ScriptManager.RegisterClientScriptBlock(page, page.GetType(), "Alert", script, true);
        }

    }
}