USE [SPORMARKETIM]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[usp_UyeKayit]
(
@Adi nvarchar(50),
@Soyadi nvarchar(50),
@Email nvarchar(50),
@Parola nvarchar(50),
@Aktivasyon nvarchar(50)
)
as
if exists(select Uye_EPosta from tbl_Uye
			where Uye_EPosta=@Email)
	begin
	  raiserror ('Bu kullanıcı zaten kayıtlı!',16,1)
	end
else
	begin
	  insert into tbl_Uye(Uye_Adi,Uye_Soyadi,Uye_EPosta,Uye_Parola,Uye_Aktivasyon)
				values(@Adi,@Soyadi,@Email,@Parola,@Aktivasyon)
	end