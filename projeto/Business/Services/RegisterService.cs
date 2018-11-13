using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Services
{
    public class RegisterService
    {
        //metodos para validar atributos serem inseridos
        public bool usernameDisponivel(string login)
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
                        return false;
                }
                return true; //username disponivel
            }

        }


        public bool cpfDisponivel(string cpf)
        {
            StringBuilder query = new StringBuilder();
            var session = new DBSession();

            query.Append(" SELECT u.cpf");
            query.Append(" FROM Paciente u  ");
            query.Append(" WHERE (1=1)    ");
            query.AppendFormat(" AND u.cpf = '{0}'", cpf);

            Query executar = session.CreateQuery(query.ToString());
            IDataReader reader = executar.ExecuteQuery();

            //verificar se ele encontrou algum registro no banco de dados
            using (reader)
            {
                if (reader.Read())
                {
                    if (!string.IsNullOrEmpty(reader["cpf"].ToString()))
                        return false;
                }
                return true; //cpf disponivel
            }

        }

        public bool especialidadeExiste(string esp)
        {
            StringBuilder query = new StringBuilder();
            var session = new DBSession();

            query.Append(" SELECT u.nome");
            query.Append(" FROM Especialidade u  ");
            query.Append(" WHERE (1=1)    ");
            query.AppendFormat(" AND u.nome = '{0}'", esp);

            Query executar = session.CreateQuery(query.ToString());
            IDataReader reader = executar.ExecuteQuery();

            //verificar se ele encontrou algum registro no banco de dados
            using (reader)
            {
                if (reader.Read())
                {
                    if (!string.IsNullOrEmpty(reader["nome"].ToString()))
                        return true; //especialidade ja existe
                }
                return false; 
            }

        }


        //metodos para inserir na tabela
        public bool cadastrarPaciente(string email, string senha, string cpf, string nome, string foto, string dt_aniversario)
        {
            //ACESSO//////////////////////////////////
            StringBuilder query = new StringBuilder();
            var session = new DBSession();

            query.Append(" INSERT INTO acesso");
            query.Append(" VALUES (");
            query.AppendFormat(" '{0}', ", email);
            query.AppendFormat(" '{0}', ", senha);
            query.AppendFormat(" '{0}') ", "Paciente");

            Query executar = session.CreateQuery(query.ToString());

            try
            {
                executar.ExecuteNonQuery();
            }
            catch
            {
                return false;  //insercao nao deu certo
            }

            //PACIENTE///////////////////////////////////////
            query.Clear(); //Limpar para fazer outra inserção
            query.Append(" INSERT INTO Paciente");
            query.Append(" VALUES (");
            query.AppendFormat(" '{0}', ", cpf);
            query.AppendFormat(" '{0}', ", nome);
            query.AppendFormat(" '{0}', ", email);
            query.AppendFormat(" '{0}', ", foto);
            query.AppendFormat(" '{0}') ", dt_aniversario);
            executar = session.CreateQuery(query.ToString());

            try
            {
                executar.ExecuteNonQuery();
            }
            catch
            {
                return false;  //insercao nao deu certo
            }

            return true;       //insercao deu certo

            
        }

        public bool cadastrarMedico(string email, string senha, string cpf, string nome, string foto, string dt_nascimento, string crm, int id_esp)
        {
            StringBuilder query = new StringBuilder();
            var session = new DBSession();

            query.Append(" INSERT INTO acesso");
            query.Append(" VALUES (");
            query.AppendFormat(" '{0}', ", email);
            query.AppendFormat(" '{0}', ", senha);
            query.AppendFormat(" '{0}') ", "Medico");

            Query executar = session.CreateQuery(query.ToString());

            try
            {
                executar.ExecuteNonQuery();
            }
            catch
            {
                return false;  //insercao nao deu certo
            }

            query.Clear(); //Limpar para fazer outra inserção
            query.Append(" INSERT INTO Medico");
            query.Append(" VALUES (");
            query.AppendFormat(" '{0}', ", cpf);
            query.AppendFormat(" '{0}', ", nome);
            query.AppendFormat(" '{0}', ", email);
            query.AppendFormat(" '{0}', ", foto);
            query.AppendFormat(" '{0}', ", dt_nascimento);
            query.AppendFormat(" '{0}', ", crm);
            query.AppendFormat(" '{0}') ", id_esp);
            executar = session.CreateQuery(query.ToString());

            try
            {
                executar.ExecuteNonQuery();
            }
            catch
            {
                return false;  //insercao nao deu certo
            }

            return true;       //insercao deu certo

        }


        public bool cadastrarEspecialidade(string nomeEsp)
        {
            StringBuilder query = new StringBuilder();
            var session = new DBSession();

            query.Append(" INSERT INTO Especialidade");
            query.Append(" VALUES (");
            query.AppendFormat(" '{0}')", nomeEsp);

            Query executar = session.CreateQuery(query.ToString());

            try
            {
                executar.ExecuteNonQuery();
            }
            catch
            {
                return false;  //insercao nao deu certo
            }


            return true;       //insercao deu certo

        }

        public bool cadastrarConsultaMedica(string id_med, string id_pac, string dia, string horario)
        {
            StringBuilder query = new StringBuilder();
            var session = new DBSession();

            query.Append(" INSERT INTO ConsultaMedica");
            query.Append(" VALUES (");
            query.AppendFormat(" '{0}', ", id_med);
            query.AppendFormat(" '{0}', ", id_pac);
            query.AppendFormat(" '{0}', ", dia);
            query.AppendFormat(" '{0}', ", horario);
            query.AppendFormat(" '{0}', ", "PENDENTE");
            query.AppendFormat(" '{0}', ", "NENHUM_");
            query.AppendFormat("  {0}) ", 0);

            Query executar = session.CreateQuery(query.ToString());

            try
            {
                executar.ExecuteNonQuery();
            }
            catch
            {
                return false;  //insercao nao deu certo
            }

            return true;       //insercao deu certo

        }


        //metodos para devolver algo
        public String[] horariosOcupados(String data)
        {
            String[] ocupados = new String[13]; //no maximo 12 horarios + a qtd 

            StringBuilder query = new StringBuilder();
            var session = new DBSession();

            query.Append(" SELECT u.horario");
            query.Append(" FROM ConsultaMedica u  ");
            query.Append(" WHERE (1=1)    ");
            query.AppendFormat(" AND u.dia = '{0}'", data);

            Query executar = session.CreateQuery(query.ToString());
            IDataReader reader = executar.ExecuteQuery();

            //verificar se ele encontrou algum registro no banco de dados
            int i = 0;
            while(reader.Read())
            {
                ocupados[i] = reader["horario"].ToString();
                i++;    

            }

            ocupados[12] = i + ""; //qtd de horarios ocupados (conversão int to string)
            return ocupados;
        }


    }
}
