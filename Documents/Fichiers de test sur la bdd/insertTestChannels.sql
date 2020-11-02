USE [Stream_Faction]
GO

INSERT INTO [dbo].[Channels]
           ([cha_usr_id],[cha_name],[cha_description],[cha_create_date],[cha_modif_date])
     VALUES
           ((SELECT [usr_id] FROM [Stream_Faction].[dbo].[Users] WHERE usr_login = 'vandrakertg@gmail.com'),'Van_Drake','Chaîne de Van Drake',GETUTCDATE(),GETUTCDATE())
		   ,((SELECT [usr_id] FROM [Stream_Faction].[dbo].[Users] WHERE usr_login = 'streamfaction.webtv@gmail.com'),'Stream_Faction','Chaîne de l''association Stream Faction',GETUTCDATE(),GETUTCDATE())
GO


