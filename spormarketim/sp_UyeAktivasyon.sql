USE [SPORMARKETIM]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[usp_UyeAktivasyon] 
(
@Kod nvarchar(50)
)
as
declare @id int, @durum bit

set @id=(select Uye_Id from tbl_Uye where Uye_Aktivasyon=@Kod)
set @durum=(select Uye_Durumu from tbl_Uye where Uye_Aktivasyon=@Kod)

if(@id>0)
	begin
	 if (@durum='true')
		 begin
			 raiserror('Zaten aktif üyesiniz.',16,1)
		 end
	 else
		  begin
			  update tbl_Uye
			  set Uye_Durumu='true'
			  where Uye_Id=@id
		  end
	end
	
else
	begin
	raiserror ('Aktivasyon kodunuduz geçerli değil!\nMüsteri hizmetlerini arayınız...',16,1)
	end