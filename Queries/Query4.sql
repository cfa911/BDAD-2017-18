/*Mostra o maior Vendor do mês atual*/
SELECT ADVERTISEMENT.vendorID, nome, count(*) FROM ADVERTISEMENT,VENDOR,ITEM
WHERE ADVERTISEMENT.vendorID = VENDOR.vendorID
AND ITEM.advertisementID = ADVERTISEMENT.advertisementID
AND strftime('%m',ITEM.startTime)=strftime('%m',CURRENT_TIMESTAMP)
group by ADVERTISEMENT.vendorID
order by count(*) DESC
limit 1
