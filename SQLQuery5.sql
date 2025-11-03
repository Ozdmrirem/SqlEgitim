--Aggregate Functions

-- 1.COUNT : Tabloda belirtilen sütunda toplam kaç adet kayýt olduðunu gösterir.

--Ürünler Tablosunda kaç adet ürün var?
Select COUNT(*) from Urunler
Select COUNT(UrunAdi) from Urunler
Select COUNT(TedarikciID) from Urunler

--Ürünler Tablosunda Birim Fiyatý 50 dolardan yüksek kaç adet ürün var?
Select * from Urunler WHERE BirimFiyati>50
Select COUNT(*) from Urunler WHERE BirimFiyati>50

-- 2.SUM : Tabloda belirtilen sütundaki deðerlerin toplamýný gösterir.

--Tüm ürünlerin toplam stok miktarý
Select SUM(HedefStokDuzeyi) from Urunler

--Stoklarýmýzda bulunan tüm ürünlerin toplam deðeri
Select BirimFiyati*HedefStokDuzeyi from Urunler where UrunID=1
Select SUM(BirimFiyati*HedefStokDuzeyi) from Urunler

--Þimdiye kadar yapýlan tüm satýþlardan kazanýlan toplam miktar
Select * from SatisDetaylari
Select SUM(BirimFiyati*Miktar) from SatisDetaylari
Select SUM(BirimFiyati*Miktar*(1-indirim)) from SatisDetaylari

--2 id li ürünün satýþýndan elde edilen toplam tutar
Select SUM(BirimFiyati*Miktar*(1-indirim)) from SatisDetaylari where UrunID=2

--1996 yýlýnda ödenen toplam nakliye ücreti
Select SUM(NakliyeUcreti) from Satislar WHERE SatisTarihi>'1995-12-31' and SatisTarihi<'1997-01-01'

-- 3.AVG : Ortalama hesaplar

--Kategori ID si 3 olan ürünlerin ortalama birim fiyatý
Select AVG(BirimFiyati) from Urunler WHERE KategoriID=3

--Nakliyeci ID si 2 olan nakliyeciye ödenen ortalama nakliye ücreti
Select AVG(NakliyeUcreti) from Satislar WHERE ShipVia=2

--17 ID li ürünün ortalama satýþ fiyatý
Select SUM(BirimFiyati*Miktar*(1-indirim)) from SatisDetaylari WHERE UrunID=17
Select AVG(BirimFiyati*Miktar*(1-indirim)) from SatisDetaylari WHERE UrunID=17

-- 4.MAX : En yüksek deðeri bulur
Select MAX(BirimFiyati) from Urunler

--Kategorisi 4 olan ürünlerde en pahalý ürünün fiyatý
Select MAX(BirimFiyati) from Urunler WHERE KategoriID=4

--Tek seferde yapýlan en yüksek satýþ
Select * from SatisDetaylari
Select MAX(BirimFiyati*Miktar*(1-indirim)) from SatisDetaylari

-- 5.MIN : Belirtilen alandaki en düþük deðeri gösterir
Select MIN(BirimFiyati*Miktar*(1-indirim)) from SatisDetaylari
Select MIN(UrunAdi) from Urunler