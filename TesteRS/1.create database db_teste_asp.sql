IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'tst_sp_descricoes_duplicadas ')
    create procedure tst_sp_descricoes_duplicadas 
go
if exists(select name from sysobjects (nolock) where name='RegistrosDuplicados')
	drop table RegistrosDuplicados

CREATE TABLE [RegistrosDuplicados] (
	[descricao] [varchar] (50) NULL,
) ON [PRIMARY]
--GO
