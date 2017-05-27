USE Basics
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<David Cruz González>
-- Create date: <Viernes 26 de Mayo del 2017>
-- Description:	<Crear usuario>
-- =============================================

CREATE PROCEDURE Cre_UserCreate

@firstName as nvarchar(50),
@lastName as nvarchar(50),
@email as nvarchar(50),
@password as nvarchar(50)

AS
BEGIN

INSERT INTO users (firstName, lastName, email, password)
VALUES (@firstName, @lastName, @email, @password)

END
GO