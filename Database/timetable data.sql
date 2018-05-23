USE [timetable]
GO
INSERT [dbo].[faculty] ([name], [code], [amount], [adress], [phone], [codebossfaculty]) VALUES (NULL, N'fa1', NULL, NULL, NULL, NULL)
INSERT [dbo].[faculty] ([name], [code], [amount], [adress], [phone], [codebossfaculty]) VALUES (NULL, N'fa2', NULL, NULL, NULL, NULL)

INSERT [dbo].[department] ([name], [code], [amount], [adress], [phone], [codefaculty], [codebossdepartment]) VALUES (NULL, N'de1', NULL, NULL, NULL, N'fa1', NULL)
INSERT [dbo].[department] ([name], [code], [amount], [adress], [phone], [codefaculty], [codebossdepartment]) VALUES (NULL, N'de2', NULL, NULL, NULL, N'fa2', NULL)

INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Nguyen Mau Uyen', N'gv1', NULL, NULL, NULL, NULL, NULL, N'de1', NULL)
INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Ha Dai Duong', N'gv2', NULL, NULL, NULL, NULL, NULL, N'de2', NULL)
INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Nguyen Van Nam', N'gv3', NULL, NULL, NULL, NULL, NULL, N'de1', NULL)
INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Chu Thi Huong', N'gv4', NULL, NULL, NULL, NULL, NULL, N'de1', NULL)
INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Nguyen Hai Dang', N'gv5', NULL, NULL, NULL, NULL, NULL, N'de1', NULL)
INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Phan Dinh Dung', N'gv6', NULL, NULL, NULL, NULL, NULL, N'de1', NULL)

INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su1', N'Vat ly dai cuong 1', 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su2', N'Vat ly dai cuong 2', 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su3', N'Thuc tap CSDL', 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su4', N'Co so du lieu', 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su5', N'Thiet ke thuat toan', 4, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co1', N'12101151 1', N'su1', 1, 3, 100, 40)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co2', N'12101151 2', N'su1', 1, 3, 100, 40)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co3', N'12101152 1', N'su2', 1, 3, 100, 40)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co4', N'15421524 1', N'su3', 2, 3, 100, 40)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co5', N'15421523 1', N'su4', 1, 3, 100, 40)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co6', N'15421526 1', N'su5', 1, 3, 100, 40)

INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv1', N'co1')
INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv2', N'co2')
INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv3', N'co3')
INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv4', N'co4')
INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv5', N'co5')
INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv6', N'co6')

INSERT [dbo].[campusarea] ([code], [name], [locationof]) VALUES (N'ca1', N'khu a', N'ha noi')
INSERT [dbo].[campusarea] ([code], [name], [locationof]) VALUES (N'ca2', N'khu b', N'ha noi')
INSERT [dbo].[building] ([code], [name], [campusareacode]) VALUES (N'h5', N'nha h5', N'ca1')
INSERT [dbo].[building] ([code], [name], [campusareacode]) VALUES (N'h9', N'nha h9', N'ca1')

INSERT [dbo].[room] ([code], [numberfloor], [codeview], [buildingcode]) VALUES (N'ro1', NULL, N'H9 301', N'h9')
INSERT [dbo].[room] ([code], [numberfloor], [codeview], [buildingcode]) VALUES (N'ro2', NULL, N'H5 301', N'h5')
INSERT [dbo].[room] ([code], [numberfloor], [codeview], [buildingcode]) VALUES (N'ro3', NULL, N'H9 302', N'h9')
INSERT [dbo].[room] ([code], [numberfloor], [codeview], [buildingcode]) VALUES (N'ro4', NULL, N'H9 303', N'h9')
INSERT [dbo].[room] ([code], [numberfloor], [codeview], [buildingcode]) VALUES (N'ro5', NULL, N'H9 304', N'h9')


--INSERT [dbo].[coursetime] ([code], [timestart], [timeend], [dayinweek], [codeview]) VALUES (N'ct138', 1, 3, N'chu nhat', N'tiet 1-3')
--INSERT [dbo].[coursetime] ([code], [timestart], [timeend], [dayinweek], [codeview]) VALUES (N'ct7122', 7, 12, N'thu 2', N'tiet 7-12')
--INSERT [dbo].[coursetime] ([code], [timestart], [timeend], [dayinweek], [codeview]) VALUES (N'ct153', 1, 5, N'thu 3', N'tiet 1-5')
--INSERT [dbo].[coursetime] ([code], [timestart], [timeend], [dayinweek], [codeview]) VALUES (N'ct7124', 7, 12, N'thu 4', N'tiet 7-12')
exec addcoursetime 1,3,2
exec addcoursetime 3,5,3
exec addcoursetime 5,7,4
exec addcoursetime 7,9,5
exec addcoursetime 9,12,6
exec addcoursetime 1,5,7
exec addcoursetime 7,12,8

INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs1', N'co1', N'ct132', N'ro1')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs2', N'co2', N'ct353', N'ro2')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs3', N'co3', N'ct574', N'ro3')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs4', N'co3', N'ct795', N'ro4')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs5', N'co4', N'ct9126', N'ro5')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs6', N'co5', N'ct157', N'ro1')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs7', N'co6', N'ct7128', N'ro2')



-- delete all data from database
-- disable referential integrity
EXEC sp_MSForEachTable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL' 
GO 

EXEC sp_MSForEachTable 'DELETE FROM ?' 
GO 

-- enable referential integrity again 
EXEC sp_MSForEachTable 'ALTER TABLE ? WITH CHECK CHECK CONSTRAINT ALL' 
GO
