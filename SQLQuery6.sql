--PresaleItem �ӫ~�զX�y�z�D��
--PresaleGroupItem �D�ɩ��U��"�ӫ~�t�C�զX"(�ѥ]�t�C + �@�بt�C + ���{�t�C...)
--PresaleGroupItemDetail �ӫ~�t�C�Ӹ`�y�z �ѥ]�t�C => ��͡B�@�ءB����ѥ]...



----PresaleItem ����ơA�B�䤣��PresaleActivityItem��M��
--select LTRIM(RTRIM(a.Code)) , a.* 
----a.Code, a.Name , b.Code as bCode, b.ItemCode 
--from OPMain..PresaleItem as a
--LEFT JOIN OPMain..PresaleActivityItem as b
--ON a.Code = b.ItemCode
--where b.itemCode is null
----order by a.Code
------�W�U��� �j�M���G�O�@�˪��C
----���X���Ȭ� OPMain..PresaleItem���� ���bPresaleActivityItem.ItemCode���L��M�C
--select pi1.*
----ai1.Name as aiName, ai1.Code as aiCode, pai1.Code as paiCode, pai1.ItemCode as paiItemCode , LTRIM(RTRIM(pi1.Code)) as piCode , pi1.Name as piName
--from OPMain..ActivityItem as ai1
--INNER JOIN OPMain..PresaleActivityItem as pai1
--ON ai1.Code = pai1.Code
--RIGHT JOIN OPMain..PresaleItem as pi1
--ON pai1.ItemCode = pi1.Code
--WHERE pai1.ItemCode is null 



---- PresaleActivityItem.ItemCode ���Ȧ��O OPMain..PresaleItem�䤣���M���
select a.* from OPMain..PresaleActivityItem as a
LEFT JOIN OPMain..PresaleItem as b
ON a.ItemCode = b.Code
where b.Code is null



