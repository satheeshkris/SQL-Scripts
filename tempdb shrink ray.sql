
USE tempdb;
GO

CHECKPOINT;
GO

DBCC FREEPROCCACHE;
go

DBCC SHRINKFILE (tempdev, 5000);
GO
DBCC SHRINKFILE (tempdev2, 5000);
GO
DBCC SHRINKFILE (tempdev3, 5000);
GO
DBCC SHRINKFILE (tempdev4, 5000);
GO
DBCC SHRINKFILE (templog, 256);
GO
