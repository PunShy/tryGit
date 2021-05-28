---- 補 OPMain..PresaleItem 的資料
--insert OPMain..PresaleItem
--(
--Code, Name, PresaleSaleType, SaleItemNo, SalePLUNo, SalePrice, TaxType, PackQty,
--CategoryID, BrandID, ListPrice, Keyword, Description, Specification, SImageFileName,
--XLImageFileName, LastUpdateTime, LastUpdateUserName, CreateUpdateTime,
--CreateUpdateUserName, IsDisabled
--) 
--select 
--a1.Code, a1.Name, 0, a1.SaleItemNo, a1.SalePLUNo, a1.SalePrice, a1.TaxType, a1.PackQty,
--a1.CategoryID, a1.BrandID, a1.ListPrice, a1.Keyword, a1.Description, a1.Specification, a1.SImageFileName,
--a1.XLImageFileName, a1.LastUpdateTime, a1.LastUpdateUserName, a1.CreateUpdateTime,
--a1.CreateUpdateUserName, a1.IsDisabled
--from
--(
----取 [PresaleItem_Old] 的資料
--select * from [OPMain].[dbo].[PresaleItem_Old] as old
--INNER JOIN 
----PresaleActivityItem.ItemCode 有值但是 OPMain..PresaleItem找不到對映資料
--(select a.ItemCode from OPMain..PresaleActivityItem as a
--LEFT JOIN OPMain..PresaleItem as b
--ON a.ItemCode = b.Code
--where b.Code is null and a.ItemCode is not null) as aa
--ON old.Code = aa.ItemCode
--) as a1


--***************我是分隔線***************


---- 補 OPMain..PresaleGroupItem 的資料
--insert OPMain..PresaleGroupItem
--(
--Code, GroupSeq, Name, ListPriceFrom, ListPriceTo, PackQty, SalesPercent, SingleFee,
--GroupSalePrice, SingleSalePrice, PriceSpread, SImageFileName, XLImageFileName,
--LastUpdateTime, LastUpdateUserName, CreateUpdateTime, CreateUpdateUserName, IsDisabled
--) 
--select 
--a1.Code, 1, a1.Name, a1.ListPrice, a1.ListPrice, a1.PackQty, 100, a1.SingleFee,
--a1.SalePrice, a1.SingleSalePrice, a1.PriceSpread, a1.SImageFileName, a1.XLImageFileName,
--a1.LastUpdateTime, a1.LastUpdateUserName, a1.CreateUpdateTime, a1.CreateUpdateUserName, a1.IsDisabled
--from
--(
----取 [PresaleItem_Old] 的資料
--select * from [OPMain].[dbo].[PresaleItem_Old] as old
--INNER JOIN 
----PresaleActivityItem.ItemCode 有值但是 OPMain..PresaleItem找不到對映資料
--(select a.ItemCode from OPMain..PresaleActivityItem as a
--LEFT JOIN OPMain..PresaleItem as b
--ON a.ItemCode = b.Code
--where b.Code is null and a.ItemCode is not null) as aa
--ON old.Code = aa.ItemCode
--) as a1


--***************我是分隔線***************


---- 補 OPMain..PresaleGroupItemDetail 的資料
--insert OPMain..PresaleGroupItemDetail
--(
--Code, GroupSeq, ReturnItemName, ReturnItemNo, ReturnPLUNo, ExchangeItemName, ExchangeItemNo,
--ExchangePLUNo, ExchangeSingleListPrice, LastUpdateTime, LastUpdateUserName, CreateUpdateTime, 
--CreateUpdateUserName, IsDisabled
--) 
--select 
--a1.Code, 1, a1.ReturnItemName, a1.ReturnItemNo, a1.ReturnPLUNo, a1.ExchangeItemName, a1.ExchangeItemNo,
--a1.ExchangePLUNo, a1.SingleListPrice, a1.LastUpdateTime, a1.LastUpdateUserName, a1.CreateUpdateTime,
--a1.CreateUpdateUserName, a1.IsDisabled
--from
--(
----取 [PresaleItem_Old] 的資料
--select * from [OPMain].[dbo].[PresaleItem_Old] as old
--INNER JOIN 
----PresaleActivityItem.ItemCode 有值但是 OPMain..PresaleItem找不到對映資料
--(select a.ItemCode from OPMain..PresaleActivityItem as a
--LEFT JOIN OPMain..PresaleItem as b
--ON a.ItemCode = b.Code
--where b.Code is null and a.ItemCode is not null) as aa
--ON old.Code = aa.ItemCode
--) as a1

