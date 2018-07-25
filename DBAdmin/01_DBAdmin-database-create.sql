IF DB_ID('DBAdmin') IS NULL
	EXEC('CREATE DATABASE DBAdmin');
GO

-- set file sizes & growth to something sane
use DBAdmin;
GO

ALTER DATABASE DBAdmin MODIFY FILE (NAME = DBAdmin, SIZE = 128MB, FILEGROWTH = 128MB);
GO
ALTER DATABASE DBAdmin MODIFY FILE (NAME = DBAdmin_log, SIZE = 64MB, FILEGROWTH = 64MB);
GO
ALTER DATABASE DBAdmin SET RECOVERY SIMPLE;
GO
ALTER AUTHORIZATION ON DATABASE::DBAdmin TO sa;
GO

