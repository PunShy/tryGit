--更新   OPMain..ActivityItemVoucher 欄位，來源為 OPMain..PresaleItem_Old 對映的欄位

UPDATE
    OPMain..ActivityItemVoucher
SET
    ItemName = b.Name,
	ListPriceFrom = b.ListPrice,
	ListPriceTo = b.ListPrice,
	SalesPercent = 100,
	GroupSalePrice = b.SalePrice,
    SingleSalePrice = b.SingleSalePrice,
    PriceSpread = b.PriceSpread,
    TaxType = b.TaxType,
    IsGiveaway = 1,
    SingleFee = b.SingleFee
FROM
    OPMain..ActivityItemVoucher as a
    INNER JOIN OPMain..PresaleItem_Old as b
        ON a.ItemCode = b.Code
--WHERE
--    a.ItemCode = '415331'