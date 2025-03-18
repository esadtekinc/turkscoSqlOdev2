Select Count(*) as null_degerler
From invoice 
Where invoice IS NULL;
-- Boş değerler 0
-- invoice tablosundaki boş değerleri seçip satır sayısını count komutu ile buldum.

Select * ,total as old_total, total * 2 as new_total
From invoice;
-- invoice tablosundali total ifadesini old_total(eski toplam)
-- olarak değiştirdim ve totali 2 ile çarpıp yeni total adlı yen bir sütun ekledim

SELECT 
  billing_address,
  LEFT(billing_address, 3) || RIGHT(billing_address, 4) AS "Açık Adres"
FROM Invoice
WHERE 
  EXTRACT(YEAR FROM invoice_date) = 2013 AND
  EXTRACT(MONTH FROM invoice_date) = 8;

  -- left ve right komutları ile istenilen karakterleri getirip birleştirme 
  -- operatörü ile birleştirip açık adres adını verdim
  -- where komutu ile extract kmutunu birlikte kullanıp istenilen tarihi seçtim
  -- ve 2013 yılı ağustos ayındaki fatura adresslerini yeni yaptığım açık adres sütunu ile yazdırdım
