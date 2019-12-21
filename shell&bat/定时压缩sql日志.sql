-----ReportServer----
USE [master]
    GO
ALTER DATABASE ReportServer SET RECOVERY SIMPLE WITH NO_WAIT
    GO
ALTER DATABASE ReportServer SET RECOVERY SIMPLE   --��ģʽ
    GO
USE ReportServer
    GO
DBCC SHRINKFILE (N'ReportServer_log' , 20000, TRUNCATEONLY)  --����ѹ�������־��СΪ2M����������ָ��
    GO
USE [master]
    GO
ALTER DATABASE ReportServer SET RECOVERY FULL WITH NO_WAIT
    GO
ALTER DATABASE ReportServer SET RECOVERY FULL  --��ԭΪ��ȫģʽ
    GO

-----ReportServerTempDB----

USE [master]
    GO
ALTER DATABASE ReportServerTempDB SET RECOVERY SIMPLE WITH NO_WAIT
    GO
ALTER DATABASE ReportServerTempDB SET RECOVERY SIMPLE   --��ģʽ
    GO
USE ReportServerTempDB
    GO
DBCC SHRINKFILE (N'ReportServerTempDB_log' , 20000, TRUNCATEONLY)  --����ѹ�������־��СΪ2M����������ָ��
    GO
USE [master]
    GO
ALTER DATABASE ReportServerTempDB SET RECOVERY FULL WITH NO_WAIT
    GO
ALTER DATABASE ReportServerTempDB SET RECOVERY FULL  --��ԭΪ��ȫģʽ
    GO

-----RYAccountsDB-------------------
USE [master]
    GO
ALTER DATABASE RYAccountsDB SET RECOVERY SIMPLE WITH NO_WAIT
    GO
ALTER DATABASE RYAccountsDB SET RECOVERY SIMPLE   --��ģʽ
    GO
USE RYAccountsDB
    GO
DBCC SHRINKFILE (N'RYAccountsDB_log' , 20000, TRUNCATEONLY)  --����ѹ�������־��СΪ2M����������ָ��
    GO
USE [master]
    GO
ALTER DATABASE RYAccountsDB SET RECOVERY FULL WITH NO_WAIT
    GO
ALTER DATABASE RYAccountsDB SET RECOVERY FULL  --��ԭΪ��ȫģʽ
    GO
	
---------RYEducateDB----------
USE [master]
    GO
ALTER DATABASE RYEducateDB SET RECOVERY SIMPLE WITH NO_WAIT
    GO
ALTER DATABASE RYEducateDB SET RECOVERY SIMPLE   --��ģʽ
    GO
USE RYEducateDB
    GO
DBCC SHRINKFILE (N'RYEducateDB_log' , 20000, TRUNCATEONLY)  --����ѹ�������־��СΪ2M����������ָ��
    GO
USE [master]
    GO
ALTER DATABASE RYEducateDB SET RECOVERY FULL WITH NO_WAIT
    GO
ALTER DATABASE RYEducateDB SET RECOVERY FULL  --��ԭΪ��ȫģʽ
    GO
	
-------RYGameMatchDB------------------
USE [master]
    GO
ALTER DATABASE RYGameMatchDB SET RECOVERY SIMPLE WITH NO_WAIT
    GO
ALTER DATABASE RYGameMatchDB SET RECOVERY SIMPLE   --��ģʽ
    GO
USE RYGameMatchDB
    GO
DBCC SHRINKFILE (N'RYGameMatchDB_log' , 20000, TRUNCATEONLY)  --����ѹ�������־��СΪ2M����������ָ��
    GO
USE [master]
    GO
ALTER DATABASE RYGameMatchDB SET RECOVERY FULL WITH NO_WAIT
    GO
ALTER DATABASE RYGameMatchDB SET RECOVERY FULL  --��ԭΪ��ȫģʽ
    GO
	
----------RYGameScoreDB--------------
USE [master]
    GO
ALTER DATABASE RYGameScoreDB SET RECOVERY SIMPLE WITH NO_WAIT
    GO
ALTER DATABASE RYGameScoreDB SET RECOVERY SIMPLE   --��ģʽ
    GO
USE RYGameScoreDB
    GO
DBCC SHRINKFILE (N'RYGameScoreDB_log' , 20000, TRUNCATEONLY)  --����ѹ�������־��СΪ2M����������ָ��
    GO
USE [master]
    GO
ALTER DATABASE RYGameScoreDB SET RECOVERY FULL WITH NO_WAIT
    GO
ALTER DATABASE RYGameScoreDB SET RECOVERY FULL  --��ԭΪ��ȫģʽ
    GO
	
---------RYNativeWebDB----------
USE [master]
    GO
ALTER DATABASE RYGameScoreDB SET RECOVERY SIMPLE WITH NO_WAIT
    GO
ALTER DATABASE RYGameScoreDB SET RECOVERY SIMPLE   --��ģʽ
    GO
USE RYNativeWebDB
    GO
DBCC SHRINKFILE (N'RYGameScoreDB_log' , 20000, TRUNCATEONLY)  --����ѹ�������־��СΪ2M����������ָ��
    GO
USE [master]
    GO
ALTER DATABASE RYGameScoreDB SET RECOVERY FULL WITH NO_WAIT
    GO
ALTER DATABASE RYGameScoreDB SET RECOVERY FULL  --��ԭΪ��ȫģʽ
    GO
	
-----------RYPlatformDB-----------

USE [master]
    GO
ALTER DATABASE RYPlatformDB SET RECOVERY SIMPLE WITH NO_WAIT
    GO
ALTER DATABASE RYPlatformDB SET RECOVERY SIMPLE   --��ģʽ
    GO
USE RYPlatformDB
    GO
DBCC SHRINKFILE (N'RYPlatformDB_log' , 20000, TRUNCATEONLY)  --����ѹ�������־��СΪ2M����������ָ��
    GO
USE [master]
    GO
ALTER DATABASE RYPlatformDB SET RECOVERY FULL WITH NO_WAIT
    GO
ALTER DATABASE RYPlatformDB SET RECOVERY FULL  --��ԭΪ��ȫģʽ
    GO
	
---------RYPlatformManagerDB------------
USE [master]
    GO
ALTER DATABASE RYPlatformManagerDB SET RECOVERY SIMPLE WITH NO_WAIT
    GO
ALTER DATABASE RYPlatformManagerDB SET RECOVERY SIMPLE   --��ģʽ
    GO
USE RYPlatformManagerDB
    GO
DBCC SHRINKFILE (N'RY_RYPlatformManagerDB_log' , 20000, TRUNCATEONLY)  --����ѹ�������־��СΪ2M����������ָ��
    GO
USE [master]
    GO
ALTER DATABASE RYPlatformManagerDB SET RECOVERY FULL WITH NO_WAIT
    GO
ALTER DATABASE RYPlatformManagerDB SET RECOVERY FULL  --��ԭΪ��ȫģʽ
    GO

-------------RYRecordDB------------------
USE [master]
    GO
ALTER DATABASE RYRecordDB SET RECOVERY SIMPLE WITH NO_WAIT
    GO
ALTER DATABASE RYRecordDB SET RECOVERY SIMPLE   --��ģʽ
    GO
USE RYRecordDB
    GO
DBCC SHRINKFILE (N'RYRecordDB_log' , 20000, TRUNCATEONLY)  --����ѹ�������־��СΪ2M����������ָ��
    GO
USE [master]
    GO
ALTER DATABASE RYRecordDB SET RECOVERY FULL WITH NO_WAIT
    GO
ALTER DATABASE RYRecordDB SET RECOVERY FULL  --��ԭΪ��ȫģʽ
    GO
	
-------------RYTreasureDB-------------
USE [master]
    GO
ALTER DATABASE RYTreasureDB SET RECOVERY SIMPLE WITH NO_WAIT
    GO
ALTER DATABASE RYTreasureDB SET RECOVERY SIMPLE   --��ģʽ
    GO
USE RYTreasureDB
    GO
DBCC SHRINKFILE (N'RYTreasureDB_log' , 20000, TRUNCATEONLY)  --����ѹ�������־��СΪ2M����������ָ��
    GO
USE [master]
    GO
ALTER DATABASE RYTreasureDB SET RECOVERY FULL WITH NO_WAIT
    GO
ALTER DATABASE RYTreasureDB SET RECOVERY FULL  --��ԭΪ��ȫģʽ
    GO