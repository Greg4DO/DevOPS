DECLARE @i int;
SET @i = 20000
WHILE @i < 40000
BEGIN
INSERT INTO Table_1 (id,name,value)
VALUES (@i, RAND(),RAND())
SET @i = @i + 1
END