CREATE VIEW dbo.View_MarkaUrunResim  
AS  
SELECT     dbo.tbl_Urun.Urun_Id, dbo.tbl_Marka.Marka_Id, dbo.tbl_Marka.Marka_Adi AS MARKASI, dbo.tbl_Urun.Urun_Adi, dbo.tbl_Urun.Urun_Fiyat, dbo.tbl_Urun.Urun_Stok,   
                      dbo.tbl_Resim.Resim_Id, dbo.tbl_Resim.Resim_Yolu  
FROM         dbo.tbl_Marka INNER JOIN  
                      dbo.tbl_Urun ON dbo.tbl_Marka.Marka_Id = dbo.tbl_Urun.Marka_No INNER JOIN  
                      dbo.tbl_Resim ON dbo.tbl_Urun.Urun_Id = dbo.tbl_Resim.Urun_No  