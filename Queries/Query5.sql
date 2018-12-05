/*Mostra o maior Buyer do mês atual*/
SELECT SALE.buyerID, nome, count(*) FROM SALE,BUYER
WHERE SALE.buyerID = BUYER.buyerID
AND strftime('%m',SALE.transferLimitDate)=strftime('%m',CURRENT_TIMESTAMP)
group by SALE.buyerID
order by count(*) DESC
limit 1
