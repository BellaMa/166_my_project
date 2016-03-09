SELECT Suppliers.sname, COUNT(Catalog.pid) FROM Suppliers, Catalog WHERE Suppliers.sid = Catalog.sid GROUP BY Suppliers.sname;


SELECT Suppliers.sname, COUNT(Catalog.pid) FROM Suppliers, Catalog WHERE Suppliers.sid = Catalog.sid GROUP BY Suppliers.sname HAVING COUNT(Catalog.pid) > 2;


SELECT S.sname, COUNT(*) FROM Suppliers S, Parts P, Catalog C WHERE P.pid = C.pid AND C.sid = S.sid 
GROUP BY S.sname, S.sid HAVING EVERY (P.color='Green');

SELECT S.sname, MAX(C.cost) as Maxvalue FROM Suppliers S, Parts P, Catalog C WHERE P.pid = C.pid AND C.sid = S.sid AND  ( P.color='Green') and ( P.color='Red') group by S.sname;
~                      
