select * from Acesso
insert into Acesso values ('LALALAND','aaa','aaa','ss')
delete from Acesso where login = 'LALALAND'

create table acesso(
email varchar(50) primary key not null,
senha varchar(100) not null,
categoria varchar(10) not null, --medico, secretaria ou paciente
)

//
create table Paciente(
cpf char(11) primary key not null,
nome varchar(150) not null,
email varchar(50) not null,
foto image null, 
dt_aviversario date not null
constraint fk_AcessoPac foreign key (email) references Acesso(email)
)

select * from Paciente
select * from Acesso

insert into Paciente values(
'11122233344',
'Leonardo Minoru Iwashima',
'leo.minoru@hotmail.com',
null,
'03/10/2001'
)

delete from Acesso where email='breno@gmail.com'

" INSERT INTO Paciente VALUES ( '11122233344',  'Lucas Alvim Santos Romani',  'cc17189@g.unicamp.br',  '',  '17/01/2002') "
+		query	{ SELECT u.cpf FROM Paciente u   WHERE (1=1)     AND u.email = '11122233344'}	System.Text.StringBuilder


//
create table Medico(
cpf char(11) primary key not null,
nome varchar(150) not null,
email varchar(50) not null,
foto image null, 
dt_aviversario date not null
constraint fk_AcessoPac foreign key (email) references Acesso(email)
)

//
create table Medico(
cpf char(11) primary key not null,
nome varchar(150) not null,
email varchar(50) not null,
foto varchar(60) null, 
dt_nascimento date not null,
crm varchar(12) not null,
id_Esp int not null,
constraint fk_EspMed foreign key (id_Esp) references Especialidade(idEspecialidade),
constraint fk_AcessoMed foreign key (email) references Acesso(email) 
)

select * from Medico
drop table Medico
select * from Especialidade
insert into Especialidade values(
'Hebiatra')

select * from Especialidade






create table ConsultaMedica{
id_consulta int primary key IDENTITY(1,1) not null,
id_medico char(11) not null,
constraint fkMedico foreign key id_medico references Medico(cpf)
id_paciente char(11) /not null,
constraint fkPaciente foreign key id_paciente references Paciente(cpf)
data date not null,
hora time not null,
estatus varchar(10) not null,
exame int,
diagnostico int not null,
constraint fkExame foreign key exame references Exame(id_Exame)
constraint fkDiagnostico foreign key diagnostico references Diagnostico(id_Diagnostico)
}