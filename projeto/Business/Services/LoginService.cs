using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Services
{
    public class LoginService
    {
        //metodo para validar se o user ta no banco
        public bool validarUser(string login, string senha)
        {
            StringBuilder query = new StringBuilder();
            var session = new DBSession();

            query.Append(" SELECT u.email,");
            query.Append("        u.senha ");
            query.Append(" FROM acesso u  ");
            query.Append(" WHERE (1=1)    ");
            query.AppendFormat(" AND u.email = '{0}'", login);
            query.AppendFormat(" AND u.senha = '{0}'", senha);

            Query executar = session.CreateQuery(query.ToString());
            IDataReader reader = executar.ExecuteQuery();

            //verificar se ele encontrou algum registro no banco de dados
            using (reader)
            {
                if (reader.Read())
                {
                    if (!string.IsNullOrEmpty(reader["email"].ToString()))
                        return true;
                }
                return false;
            }

        }

        public bool usernameExiste(string login)
        {
            StringBuilder query = new StringBuilder();
            var session = new DBSession();

            query.Append(" SELECT u.email");
            query.Append(" FROM acesso u  ");
            query.Append(" WHERE (1=1)    ");
            query.AppendFormat(" AND u.email = '{0}'", login);

            Query executar = session.CreateQuery(query.ToString());
            IDataReader reader = executar.ExecuteQuery();

            //verificar se ele encontrou algum registro no banco de dados
            using (reader)
            {
                if (reader.Read())
                {
                    if (!string.IsNullOrEmpty(reader["email"].ToString()))
                        return true; //username existe
                }
                return false; //username não existe
            }

        }
    }
}
