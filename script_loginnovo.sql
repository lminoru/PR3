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






create table ConsultaMedica(
id_consulta int primary key IDENTITY(1,1) not null,
id_medico char(11) not null,
constraint fkMedicoCon foreign key (id_medico) references Medico(cpf),
id_paciente char(11) not null,
constraint fkPacienteCon foreign key (id_paciente) references Paciente(cpf),
dia date not null,
horario time not null,
estatus varchar(10),
exame char(7),
diagnostico int,
constraint fkConExame foreign key (exame) references Exame(id_Exame),
constraint fkDiagnostico foreign key (diagnostico) references Diagnostico(id_Diagnostico)
)

insert into ConsultaMedica values(
'48302588881',
'11122233344',
'07/11/2018',
'09:30',
null,
null, 
null
)

select * from ConsultaMedica
create table Exame(
id_Exame char(7) primary key not null,
nome varchar(100) not null
)

insert into Exame values (
'NENHUM_',
'Nenhum exame necessário'
)

create table Diagnostico(
id_Diagnostico int primary key not null,
estado varchar(10) not null,
remedios varchar(50),
doenca varchar(50)
)

insert into Diagnostico values ( 0, '', '', '')

select * from Diagnostico

create table ConsultaExame(
id_consultaexame int primary key IDENTITY(1,1) not null,
id_exame char(7) not null,
constraint fkexame foreign key (id_exame) references Exame(id_Exame),
id_paciente char(11) not null,
constraint fkPaciente foreign key (id_paciente) references Paciente(cpf),
dia date not null,
horario time not null,
estatus varchar(10),
resultado varchar(100)
)


SELECT ConsultaMedica.dia, ConsultaMedica.horario, Paciente.nome FROM ConsultaMedica, Paciente WHERE ConsultaMedica.id_paciente = Paciente.cpf
SELECT [ConsultaMedica].[dia], [ConsultaMedica.horario], [Paciente.nome] FROM [ConsultaMedica], [Paciente] WHERE [ConsultaMedica.id_paciente] = [Paciente.cpf]

SELECT ConsultaMedica.dia, ConsultaMedica.horario, Paciente.nome FROM ConsultaMedica, Paciente WHERE ConsultaMedica.id_paciente = Paciente.cpf


SELECT ConsultaMedica.dia, ConsultaMedica.horario, Paciente.nome FROM ConsultaMedica, Paciente WHERE ConsultaMedica.id_paciente = Paciente.cpf and ConsultaMedica.id_medico='48302588881'

select * from ConsultaMedica