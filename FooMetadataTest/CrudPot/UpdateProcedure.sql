
-- <autogenerated>
--   This file is generated from T4 template UpdateProcedure.tt. 
--   Any changes made manually will be lost next time this file is regenerated.
-- </autogenerated>

CREATE PROCEDURE [dbo].[PrivateLabel_id_xref_Update]
    @idOriginal NVARCHAR(50),
    @idPrivateLabel NVARCHAR(50) 
AS
BEGIN
	UPDATE [dbo].[PrivateLabel_id_xref] 
	SET
		[idOriginal] = @idOriginal	
	WHERE
		[idPrivateLabel] = @idPrivateLabel	
    
	END
