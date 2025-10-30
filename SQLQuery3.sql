--Hangi müþterilere satýþ yaptýðýmýzý gösteren sorgu (Tekrarlayan verileri göstermez)
--Select distinct MusteriID,PersonelID from Satislar 

--Ürünler tablosundaki verileri birim fiyatýna göre sýrala
--Select * from Urunler order by BirimFiyati
--Select * from Urunler order by UrunAdi
--Select * from Urunler order by UrunAdi desc

--Stok sayýsý 50den büyük olan ve kategori ID si 1,2,3 olan ürünleri fiyatýna göre büyükten küçüðe sýrala
--Select * from Urunler where HedefStokDuzeyi>50 and KategoriID in (1,2,3) order by BirimFiyati desc

--KategoriID si 1,2,3 olmayanlarý görüntüle
--Select * from Urunler where KategoriID not in (1,2,3) 

--Ürün adý a ile baþlamayan ürünleri göster
--Select * from Urunler where UrunAdi not like 'A%'