USE [timetable]
GO
INSERT [dbo].[faculty] ([name], [code], [amount], [adress], [phone], [codebossfaculty]) VALUES (NULL, N'fa1', NULL, NULL, NULL, NULL)
INSERT [dbo].[faculty] ([name], [code], [amount], [adress], [phone], [codebossfaculty]) VALUES (NULL, N'fa2', NULL, NULL, NULL, NULL)

INSERT [dbo].[department] ([name], [code], [amount], [adress], [phone], [codefaculty], [codebossdepartment]) VALUES (NULL, N'de1', NULL, NULL, NULL, N'fa1', NULL)
INSERT [dbo].[department] ([name], [code], [amount], [adress], [phone], [codefaculty], [codebossdepartment]) VALUES (NULL, N'de2', NULL, NULL, NULL, N'fa2', NULL)

INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Giao vien A', N'gv1', NULL, NULL, NULL, NULL, NULL, N'de1', NULL)
INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Giao vien AA', N'gv2', NULL, NULL, NULL, NULL, NULL, N'de2', NULL)
INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Giao vien AAA', N'gv3', NULL, NULL, NULL, NULL, NULL, N'de1', NULL)
INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Giao vien AB', N'gv4', NULL, NULL, NULL, NULL, NULL, N'de1', NULL)
INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Giao vien AAB', N'gv5', NULL, NULL, NULL, NULL, NULL, N'de2', NULL)
INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Giao vien B', N'gv6', NULL, NULL, NULL, NULL, NULL, N'de1', NULL)
INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Giao vien BA', N'gv7', NULL, NULL, NULL, NULL, NULL, N'de1', NULL)
INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Giao vien BAA', N'gv8', NULL, NULL, NULL, NULL, NULL, N'de2', NULL)
INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Giao vien BAB', N'gv9', NULL, NULL, NULL, NULL, NULL, N'de1', NULL)
INSERT [dbo].[teacher] ([name], [code], [position], [academic], [diploma], [email], [note], [codedepartment], [codeview]) VALUES (N'Giao vien ABA', N'gv10', NULL, NULL, NULL, NULL, NULL, N'de2', NULL)

INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su1', N'Vat ly dai cuong 1', 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su2', N'Vat ly dai cuong 2', 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su3', N'Thuc tap CSDL', 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su4', N'Co so du lieu', 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su5', N'Thiet ke thuat toan', 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su6', N'Lap trinh co ban', 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su7', N'Lap trinh nang cao', 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su8', N'Xac suat thong ke', 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su9', N'Giai tich 1', 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[subjects] ([code], [name], [numbercredit], [document], [theory], [task], [practice], [discussion], [totalsession]) VALUES (N'su10', N'Giai tich 2', 4, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co1', N'12101151 1', N'su1', 1, 3, 100, 40)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co2', N'12261151 2', N'su2', 2, 3, 100, 40)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co3', N'12161152 3', N'su3', 1, 1, 100, 40)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co4', N'15421524 4', N'su4', 2, 3, 100, 40)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co5', N'15421523 2', N'su5', 1, 5, 100, 40)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co6', N'15521526 3', N'su6', 2, 3, 100, 40)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co7', N'15781526 4', N'su7', 1, 3, 100, 40)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co8', N'15465156 1', N'su8', 2, 3, 100, 40)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co9', N'15425526 4', N'su9', 1, 4, 100, 40)
INSERT [dbo].[course] ([code], [codeview], [subjectcode], [semestercode], [courseyear], [maxstudent], [signedstudent]) VALUES (N'co10', N'15421526 1', N'su10', 2, 4, 100, 40)

INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv1', N'co1')
INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv2', N'co2')
INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv3', N'co3')
INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv4', N'co4')
INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv5', N'co5')
INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv6', N'co6')
INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv7', N'co7')
INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv8', N'co8')
INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv9', N'co9')
INSERT [dbo].[teachercourse] ([teachercode], [coursecode]) VALUES (N'gv10', N'co10')


INSERT [dbo].[campusarea] ([code], [name], [locationof]) VALUES (N'ca1', N'khu a', N'ha noi')
INSERT [dbo].[campusarea] ([code], [name], [locationof]) VALUES (N'ca2', N'khu b', N'ha noi')
INSERT [dbo].[building] ([code], [name], [campusareacode]) VALUES (N'h5', N'nha h5', N'ca1')
INSERT [dbo].[building] ([code], [name], [campusareacode]) VALUES (N'h9', N'nha h9', N'ca1')

INSERT [dbo].[room] ([code], [numberfloor], [codeview], [buildingcode]) VALUES (N'ro1', 3, N'H9 301', N'h9')
INSERT [dbo].[room] ([code], [numberfloor], [codeview], [buildingcode]) VALUES (N'ro2', 4, N'H5 401', N'h5')
INSERT [dbo].[room] ([code], [numberfloor], [codeview], [buildingcode]) VALUES (N'ro3', 5, N'H9 502', N'h9')
INSERT [dbo].[room] ([code], [numberfloor], [codeview], [buildingcode]) VALUES (N'ro4', 6, N'H9 603', N'h9')
INSERT [dbo].[room] ([code], [numberfloor], [codeview], [buildingcode]) VALUES (N'ro5', 2, N'H9 204', N'h9')



exec addcoursetime @start = 1, @end = 3, @day = 2
exec addcoursetime @start = 3, @end = 5, @day = 3
exec addcoursetime 5,7,4
exec addcoursetime 7,9,5
exec addcoursetime 9,12,6
exec addcoursetime 1,5,7
exec addcoursetime 9,11,3
exec addcoursetime @start = 7, @end = 12, @day = 2
exec addcoursetime 7,12,8
exec addcoursetime 5,5,8


INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs1', N'co1', N'ct132', N'ro1')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs2', N'co2', N'ct353', N'ro2')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs3', N'co3', N'ct574', N'ro3')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs4', N'co5', N'ct795', N'ro4')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs5', N'co4', N'ct9126', N'ro5')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs6', N'co10', N'ct157', N'ro1')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs7', N'co6', N'ct7128', N'ro2')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs8', N'co7', N'ct578', N'ro2')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs9', N'co8', N'ct7122', N'ro2')
INSERT [dbo].[courseschedule] ([code], [coursecode], [coursetimecode], [roomcode]) VALUES (N'cs10', N'co9', N'ct9113', N'ro2')


select * from coursetime
exec addcoursetime 1,2,3
delete from coursetime where code='ct123'
-- delete all data from database
-- disable referential integrity
EXEC sp_MSForEachTable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL' 
GO 

EXEC sp_MSForEachTable 'DELETE FROM ?' 
GO 

-- enable referential integrity again 
EXEC sp_MSForEachTable 'ALTER TABLE ? WITH CHECK CHECK CONSTRAINT ALL' 
GO


