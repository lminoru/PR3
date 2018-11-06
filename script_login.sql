SELECT u.login,        u.senha  FROM acesso u   WHERE (1=1)     AND u.login = 'visual@gmail.com' AND u.senha = 'qweqwe'

create table acesso(
login varchar(50) primary key not null,
senha varchar(100) not null,
email varchar(50) not null,
categoria varchar(10) not null, --medico, secretaria ou paciente
)

insert into acesso values ('Minoru', 123456789, 'minoru@gmail.com', 'paciente')
select * from acesso



 SELECT u.email FROM acesso u   WHERE (1=1)     AND u.email = 'leozera@gmail.com'
 INSERT INTO acesso u VALUES ( 'minor',  'bQWJKAMG0Fg=',  'leozera@gmail.com',  'Paciente') 