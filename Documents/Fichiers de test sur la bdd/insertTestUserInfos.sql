USE [Stream_Faction]
GO

INSERT INTO [dbo].[User_infos]
           ([usrif_iduser],[usrif_name],[usrif_name_visible],[usrif_surname],[usrif_surname_visible],[usrif_avatar],[usrif_BDdate],[usrif_BDdate_visible],[usrif_description],[usrif_create_date],[usrif_modif_date])
     VALUES
           ((SELECT [usr_id] FROM [Stream_Faction].[dbo].[Users] WHERE usr_login = 'vandrakertg@gmail.com')
           ,'Ivan'
           ,0
           ,'BESIAT'
           ,0
           ,NULL
           ,'1987-04-15'
           ,0
           ,'Streamer et président de l''association'
           ,GETUTCDATE()
           ,GETUTCDATE())
GO


