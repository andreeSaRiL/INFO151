SELECT LastName, FirstName, MemberSince
FROM Customer
Where (MemberSince >= 2010 AND MemberSince <= 2015)
ORDER BY MemberSince DESC, LastName ASC;