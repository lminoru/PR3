create table acesso{
email varchar(50) primary key not null,
senha varchar(100) not null,
categoria varchar(10) not null, //medico, secretaria ou paciente
}
SELECT * FROM acesso

//
create table Medico(
cpf char(11) primary key not null,
nome varchar(150) not null,
email varchar(50) not null,
foto varchar(60) not null, 
dt_aviversario date not null,
crm varchar(12) not null,
id_Esp int not null,
constraint fk_EspMed foreign key (id_Esp) references Especialidade(idEspecialidade)
constraint fk_AcessoMed foreign key (email) references Acesso(email) 
)


//
create table Paciente(
cpf char(11) primary key not null,
nome varchar(150) not null,
email varchar(50) not null,
foto varchar(60) null, 
dt_aviversario date not null
constraint fk_AcessoPac foreign key (email) references Acesso(email)
)


//
create table Secretaria(
cpf char(11) primary key not null,
nome varchar(150) not null,
email varchar(50) not null,
foto varchar(60) null, 
dt_aviversario date not null
constraint fk_AcessoSec foreign key (email) references Acesso(email)
)

//
create table Especialidade{
idEspecialidade int primary key IDENTITY(1,1) not null,
nome varchar(50) not null
}






//
create table Agenda{
idAgenda int primary key IDENTITY not null,
medico varchar(12) not null, //crm
paciente varchar(13) not null, //rg
dia date not null,
horario time not null
constraint fkAgMed foreign key medico references Medico(crm)
constraint fkAgPac foreign key paciente references Paciente(RG)
}

//
create table Exame{
id_Exame int primary key not null,
descricao varchar(100) not null
}

create table Diagnostico{
id_Diagnostico int primary key not null,
estado varchar(10) not null,
remedios varchar(50),
doenca varchar(50)
}

create table ConsultaMedica{
id_consulta primary key not null,
data date not null,
hora time not null,
estatus varchar(10) not null,
exame int,
diagnostico int not null,
constraint fkExame foreign key exame references Exame(id_Exame)
constraint fkDiagnostico foreign key diagnostico references Diagnostico(id_Diagnostico)
}



create table emailsms{
id_contato int primary key not null,
nome varchar(50) not null,
consulta int not null,
notificacao varchar(10) not null,
constraint fkCon foreign key consulta references ConsultaMedica(id_consulta)
constraint fkCon2 foreign key notificacao references ConsultaMedica(estatus)
}