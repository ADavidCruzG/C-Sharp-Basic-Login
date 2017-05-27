USE [Basics]
GO

/****** Object:  StoredProcedure [dbo].[Sel_UserByEmail]    Script Date: 26/05/2017 13:38:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<David Cruz González>
-- Create date: <Viernes 26 de Mayo del 2017>
-- Description:	<Busca usuario por correo>
-- =============================================

CREATE PROCEDURE [dbo].[Sel_UserByEmail]

@email as nvarchar(50)

AS
BEGIN

	SELECT email, firstName, lastName FROM [dbo].[users] WHERE [email] = @email
END

GO


