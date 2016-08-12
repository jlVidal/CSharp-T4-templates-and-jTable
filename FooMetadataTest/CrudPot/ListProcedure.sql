﻿
-- <autogenerated>
--   This file is generated from T4 template ListProcedure.tt. 
--   Any changes made manually will be lost next time this file is regenerated.
-- </autogenerated>

CREATE PROCEDURE [dbo].[PrivateLabel_id_xref_List]
    @PageIndex INT = 0,
	@PageQty INT = 20,
	@OrderBy  VARCHAR(100) = NULL,
	@SortDirection VARCHAR(4) = 'DESC',
	@TotalCount INT = NULL OUTPUT
AS
BEGIN
	SET NOCOUNT ON

	if (@OrderBy IS NULL)
		SET @OrderBy = 'idOriginal'

	if (@SortDirection IS NULL OR (@SortDirection <> 'ASC' AND @SortDirection <> 'DESC'))
		SET @SortDirection = 'DESC'

	SELECT @TotalCount = COUNT(*) FROM [dbo].[PrivateLabel_id_xref] WITH (NOLOCK)
	--SELECT COUNT(*) FROM [dbo].[PrivateLabel_id_xref] WITH (NOLOCK)

	DECLARE @offSet INT = IIF(@PageIndex < 0, 0, @PageIndex * @PageQty)
	
	IF (@PageQty > 0)
	BEGIN
		DECLARE @sql NVARCHAR(MAX) = 
		N'SELECT [idOriginal],
        [idPrivateLabel] 
		FROM [dbo].[PrivateLabel_id_xref] WITH (NOLOCK)
		ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
		OFFSET @offSet ROWS
		FETCH NEXT @PageQty ROWS ONLY'

		DECLARE @paramArg NVARCHAR(MAX) = N'@offSet INT, @PageQty INT'
		EXEC sp_executesql @sql, @paramArg, @offSet, @PageQty
	END
	
END
