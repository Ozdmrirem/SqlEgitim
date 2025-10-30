--Ürünler tablosundaki tüm kayýtlarý getiren sorgu
--Select * from Urunler

--Ürünler tablosundaki ürün adý,birim fiyatý ve stok miktarýný getiren sorgu
--Select UrunAdi, BirimFiyati , HedefStokDuzeyi from Urunler

--Ürünler tablosunda ilk 10 kaydý gösteren sorgu
--Select Top 10 * from Urunler

--Ürünler tablosundaki ilk 20 kaydýn Ürün adý, birim fiyatý ve stok miktarýný gösteren sorgu
--Select Top 20 UrunAdi,BirimFiyati,HedefStokDuzeyi from Urunler

--UrunID si 12 olan ürünün tüm bilgilerini görüntüle
--Select * from Urunler where UrunID=12

--UrunID si 12,25,27,51 olan ürünlerin tüm bilgilerini getir
--Select * from Urunler where UrunID in (12,25,27,51)

--Birim Fiyatý 30 ile 80 arasýnda olan ürünleri getir
--Select * from Urunler where BirimFiyati>30 and BirimFiyati<80
--Select * from Urunler where BirimFiyati between 30 and 80

--Kategori ID si 1 veya 2 olanlarý görüntüle
--Select * from Urunler where KategoriID=1 or KategoriID=2

--Ürün adý A ile baþlayanlarý getir
--Select * from Urunler where UrunAdi like 'a%'

--Ürün adýnda a harfi geçen ürünlerin tüm bilgilerini getir
--Select * from Urunler where UrunAdi like '%a%'

--Ürün adý a veya b harfi ile baþlayan ürünlerin tüm bilgilerini getir
--Select * from Urunler where UrunAdi like '[ab]%' 

--Ürün adý a harfinden h harfine kadar herhangi bir harf ile baþlayan ürünleri getir
--Select * from Urunler where UrunAdi like '[a-h]%'

--Ürün adý a ile biten ve fiyatý 10 ile 30 dolar arasý olan ürünlerin birincisini görüntüleyen sorgu
--Select Top 1 * from Urunler where UrunAdi like '%a' and BirimFiyati between 10 and 30 