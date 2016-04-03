-- <autogenerated>
--   This file is generated from T4 template InsertProcedure.tt. 
--   Any changes made manually will be lost next time this file is regenerated.
-- </autogenerated>

CREATE PROCEDURE [dbo].[Foo_Insert]
    @LastUpdate DATETIME ,
    @Active BIT ,
    @OtherFlag BIT ,
    @FKFirstNotNull INT ,
    @FKSecondNull INT = NULL,
    @FKThirdDefaultValue INT = NULL,
    @Labels VARCHAR(300) = NULL,
    @Id INT = NULL OUTPUT 
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO [dbo].[Foo] 
	(
		[LastUpdate],
        [Active],
        [OtherFlag],
        [FKFirstNotNull],
        [FKSecondNull],
        [FKThirdDefaultValue],
        [Labels]	
    ) 
    VALUES 
    (
		@LastUpdate,
        @Active,
        @OtherFlag,
        @FKFirstNotNull,
        @FKSecondNull,
        @FKThirdDefaultValue,
        @Labels 
    )
    
    
	-- Return Id value of the new row
	set @Id = SCOPE_IDENTITY()
end
