USE [Stream_Faction]
GO

INSERT INTO [dbo].[Status]
           ([sta_name]
           ,[sta_logo]
           ,[sta_create_date]
           ,[sta_modif_date])
     VALUES
           ('Administrateur',NULL,GETUTCDATE(),GETUTCDATE())
           ,('Modérateur',NULL,GETUTCDATE(),GETUTCDATE())
           ,('Streamer',NULL,GETUTCDATE(),GETUTCDATE())
           ,('Utilisateur',NULL,GETUTCDATE(),GETUTCDATE())
GO


