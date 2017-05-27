USE [Basics]
GO

/****** Object:  StoredProcedure [dbo].[Sel_UserLogin]    Script Date: 27/05/2017 18:08:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<David Cruz González>
-- Create date: <Sábado 27 de Mayo del 2017>
-- Description:	<Busca usuario por correo y contraseña>
-- =============================================

CREATE PROCEDURE [dbo].[Sel_UserLogin]

@email as nvarchar(50),
@password as nvarchar(50)

AS
BEGIN

	SELECT email, firstName, lastName FROM [dbo].[users] WHERE ([email] = @email) AND ([password] = @password)
END

GO