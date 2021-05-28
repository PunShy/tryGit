--PresaleItem 商品組合描述主檔
--PresaleGroupItem 主檔底下的"商品系列組合"(麵包系列 + 咖啡系列 + 飯糰系列...)
--PresaleGroupItemDetail 商品系列細節描述 麵包系列 => 花生、咖啡、草莓麵包...



----PresaleItem 有資料，且找不到PresaleActivityItem對映值
--select LTRIM(RTRIM(a.Code)) , a.* 
----a.Code, a.Name , b.Code as bCode, b.ItemCode 
--from OPMain..PresaleItem as a
--LEFT JOIN OPMain..PresaleActivityItem as b
--ON a.Code = b.ItemCode
--where b.itemCode is null
----order by a.Code
------上下兩種 搜尋結果是一樣的。
----撈出的值為 OPMain..PresaleItem有值 但在PresaleActivityItem.ItemCode中無對映。
--select pi1.*
----ai1.Name as aiName, ai1.Code as aiCode, pai1.Code as paiCode, pai1.ItemCode as paiItemCode , LTRIM(RTRIM(pi1.Code)) as piCode , pi1.Name as piName
--from OPMain..ActivityItem as ai1
--INNER JOIN OPMain..PresaleActivityItem as pai1
--ON ai1.Code = pai1.Code
--RIGHT JOIN OPMain..PresaleItem as pi1
--ON pai1.ItemCode = pi1.Code
--WHERE pai1.ItemCode is null 



---- PresaleActivityItem.ItemCode 有值但是 OPMain..PresaleItem找不到對映資料
select a.* from OPMain..PresaleActivityItem as a
LEFT JOIN OPMain..PresaleItem as b
ON a.ItemCode = b.Code
where b.Code is null



