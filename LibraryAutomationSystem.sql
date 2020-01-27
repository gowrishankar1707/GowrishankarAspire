Create TABLE Admin
(
adminName varchar(20),
adminPassword varchar(20),
adminID int,
adminRole varchar(5),
timest DATETIME DEFAULT CURRENT_TIMESTAMP,

)
create table adminAudict
(
ID varchar(5),
message varchar(20),
adminTIME DATETIME DEFAULT CURRENT_TIMESTAMP,
)
DROP TABLE adminAudict
SELECT * FROM adminAudict


CREATE trigger abc on ADMIN FOR INSERT
AS
BEGIN
DECLARE @id int
SELECT @id=adminID from inserted
insert into adminAudict (message,id)VALUES('INSERTED ID',@id)
END
DROP TRIGGER abc

CREATE trigger abcd on ADMIN FOR DELETE
AS
BEGIN
DECLARE @id int
SELECT @id=adminID from deleted
insert into adminAudict (message,id)VALUES('DELETED ID',@id)
END

DROP TRIGGER abcd

CREATE trigger abcde on ADMIN FOR UPDATE
AS
BEGIN
DECLARE @id int
SELECT @id=adminID from inserted
insert into adminAudict (message,id)VALUES('DELETED ID',@id)
END


SELECT ID,adminDate FROM AdminAudit





 INSERT Admin(adminName,adminPassword,adminID,adminRole) VALUES('Admin','Admin',101,'role')
  INSERT Admin(adminName,adminPassword,adminID,adminRole) VALUES('GS','Admin',102,'role')

  DELETE Admin where adminID=101
 SELECT * FROM Admin


 DROP TABLE Admin

 CREATE PROCEDURE Login_User
 @Name varchar(20),
 @Password varchar(20),
 @Role varchar(20) OUTPUT
 
 AS
 BEGIN
 SELECT @Role=adminRole FROM Admin WHERE adminName=@Name AND adminPassword=@Password
 END