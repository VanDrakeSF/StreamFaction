USE [Stream_Faction]
GO

INSERT INTO [dbo].[User_status]
           ([usr_id]
           ,[sta_id]
           ,[usrsta_enabled]
           ,[usrsta_create_date]
           ,[usrsta_modif_date])
     VALUES
           ((SELECT [usr_id] FROM [Stream_Faction].[dbo].[Users] WHERE usr_login = 'vandrakertg@gmail.com'),(SELECT [sta_id] FROM [Stream_Faction].[dbo].[Status] WHERE sta_name = 'Administrateur'),1,GETUTCDATE(),GETUTCDATE())
		   ,((SELECT [usr_id] FROM [Stream_Faction].[dbo].[Users] WHERE usr_login = 'vandrakertg@gmail.com'),(SELECT [sta_id] FROM [Stream_Faction].[dbo].[Status] WHERE sta_name = 'Modérateur'),1,GETUTCDATE(),GETUTCDATE())
		   ,((SELECT [usr_id] FROM [Stream_Faction].[dbo].[Users] WHERE usr_login = 'vandrakertg@gmail.com'),(SELECT [sta_id] FROM [Stream_Faction].[dbo].[Status] WHERE sta_name = 'Streamer'),1,GETUTCDATE(),GETUTCDATE())
		   ,((SELECT [usr_id] FROM [Stream_Faction].[dbo].[Users] WHERE usr_login = 'vandrakertg@gmail.com'),(SELECT [sta_id] FROM [Stream_Faction].[dbo].[Status] WHERE sta_name = 'Utilisateur'),1,GETUTCDATE(),GETUTCDATE())
		   ,((SELECT [usr_id] FROM [Stream_Faction].[dbo].[Users] WHERE usr_login = 'streamfaction.webtv@gmail.com'),(SELECT [sta_id] FROM [Stream_Faction].[dbo].[Status] WHERE sta_name = 'Administrateur'),1,GETUTCDATE(),GETUTCDATE())
		   ,((SELECT [usr_id] FROM [Stream_Faction].[dbo].[Users] WHERE usr_login = 'streamfaction.webtv@gmail.com'),(SELECT [sta_id] FROM [Stream_Faction].[dbo].[Status] WHERE sta_name = 'Modérateur'),1,GETUTCDATE(),GETUTCDATE())
		   ,((SELECT [usr_id] FROM [Stream_Faction].[dbo].[Users] WHERE usr_login = 'streamfaction.webtv@gmail.com'),(SELECT [sta_id] FROM [Stream_Faction].[dbo].[Status] WHERE sta_name = 'Streamer'),1,GETUTCDATE(),GETUTCDATE())
		   ,((SELECT [usr_id] FROM [Stream_Faction].[dbo].[Users] WHERE usr_login = 'streamfaction.webtv@gmail.com'),(SELECT [sta_id] FROM [Stream_Faction].[dbo].[Status] WHERE sta_name = 'Utilisateur'),1,GETUTCDATE(),GETUTCDATE())

GO


