/*
criando usuário e atribuindo uma senha
*/

CREATE LOGIN protheus WITH PASSWORD = 'protheus@1980' ;
GO

/*
cria o database de usuario para o login criado anteriormente
*/

USE master;
GO

IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'protheus')
BEGIN
    CREATE USER [protheus] FOR LOGIN [protheus]
    EXEC sp_addrolemember N'db_owner', N'protheus'
END;
GO

/*
incluir o usuario protheus ao sysadmin
*/

USE master;
GO

EXEC sp_addsrvrolemember N'protheus','sysadmin';  
GO

/*
criar base de dados com agrupamento Latin1_General_BIN
*/

USE master;  
GO  

IF DB_ID (N'TOTVS12DB') IS NOT NULL  
DROP DATABASE TOTVS12DB;  
GO  
CREATE DATABASE TOTVS12DB
COLLATE Latin1_General_BIN;  
GO  

/*
verificando o agrupamento do database
*/

SELECT name, collation_name  
FROM sys.databases  
WHERE name = N'TOTVS12DB';  
GO