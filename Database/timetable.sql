USE [master]
GO
/****** Object:  Database [timetable]    Script Date: 17-May-18 11:12:59 AM ******/
CREATE DATABASE [timetable]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Quan ly Sinh Vien - timetable', FILENAME = N'F:\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Quan ly Sinh Vien - timetable.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Quan ly Sinh Vien - timetable_log', FILENAME = N'F:\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Quan ly Sinh Vien - timetable_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [timetable] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [timetable].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [timetable] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [timetable] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [timetable] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [timetable] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [timetable] SET ARITHABORT OFF 
GO
ALTER DATABASE [timetable] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [timetable] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [timetable] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [timetable] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [timetable] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [timetable] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [timetable] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [timetable] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [timetable] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [timetable] SET  ENABLE_BROKER 
GO
ALTER DATABASE [timetable] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [timetable] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [timetable] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [timetable] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [timetable] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [timetable] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [timetable] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [timetable] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [timetable] SET  MULTI_USER 
GO
ALTER DATABASE [timetable] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [timetable] SET DB_CHAINING OFF 
GO
ALTER DATABASE [timetable] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [timetable] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [timetable] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [timetable] SET QUERY_STORE = OFF
GO
USE [timetable]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [timetable]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 17-May-18 11:12:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[name] [nvarchar](50) NULL,
	[code] [varchar](10) NOT NULL,
	[position] [nvarchar](50) NULL,
	[academic] [nvarchar](50) NULL,
	[diploma] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[note] [nvarchar](1000) NULL,
	[codedepartment] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subjects]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjects](
	[code] [varchar](10) NOT NULL,
	[name] [varchar](50) NULL,
	[numbercredit] [int] NULL,
	[document] [xml] NULL,
	[theory] [int] NULL,
	[task] [int] NULL,
	[practice] [int] NULL,
	[discussion] [int] NULL,
	[totalsession] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[code] [varchar](10) NOT NULL,
	[numberfloor] [int] NULL,
	[codeview] [varchar](10) NULL,
	[buildingcode] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[code] [varchar](20) NOT NULL,
	[codeview] [nvarchar](20) NULL,
	[subjectcode] [varchar](10) NOT NULL,
	[semestercode] [int] NULL,
	[courseyear] [int] NULL,
	[maxstudent] [int] NULL,
	[signedstudent] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teachercourse]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teachercourse](
	[teachercode] [varchar](10) NOT NULL,
	[coursecode] [varchar](20) NOT NULL,
 CONSTRAINT [teachercoursepk] PRIMARY KEY CLUSTERED 
(
	[teachercode] ASC,
	[coursecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coursetime]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coursetime](
	[code] [varchar](10) NOT NULL,
	[timestart] [int] NULL,
	[timeend] [int] NULL,
	[dayinweek] [nvarchar](10) NULL,
	[codeview] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courseschedule]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courseschedule](
	[code] [varchar](10) NOT NULL,
	[coursecode] [varchar](20) NOT NULL,
	[coursetimecode] [varchar](10) NOT NULL,
	[roomcode] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[TIMETABLE]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[TIMETABLE]
as
select subjects.name as [mon hoc],
subjects.numbercredit as [STC], 
course.codeview as [lop mon hoc], 
teacher.name as [ten giang vien], 
coursetime.dayinweek as [thu], 
coursetime.codeview as [tiet], 
room.codeview as [giang duong], 
course.maxstudent as [so SV], 
course.signedstudent as [so SVDK]
from course
inner join courseschedule on courseschedule.coursecode=course.code
inner join teachercourse on course.code=teachercourse.coursecode
inner join teacher on teachercourse.teachercode=teacher.code
inner join subjects on course.subjectcode=subjects.code
inner join coursetime on courseschedule.coursetimecode=coursetime.code
inner join room on courseschedule.roomcode=room.code
where course.semestercode=1
GO
/****** Object:  View [dbo].[thoikhoabieuky2]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[thoikhoabieuky2]
as
select subjects.name as [mon hoc],
subjects.numbercredit as [STC], 
course.codeview as [lop mon hoc], 
teacher.name as [ten giang vien], 
coursetime.dayinweek as [thu], 
coursetime.codeview as [tiet], 
room.codeview as [giang duong], 
course.maxstudent as [so SV], 
course.signedstudent as [so SVDK]
from course
inner join courseschedule on courseschedule.coursecode=course.code
inner join teachercourse on course.code=teachercourse.coursecode
inner join teacher on teachercourse.teachercode=teacher.code
inner join subjects on course.subjectcode=subjects.code
inner join coursetime on courseschedule.coursetimecode=coursetime.code
inner join room on courseschedule.roomcode=room.code
where course.semestercode=2

GO
/****** Object:  View [dbo].[thoikhoabieuky1]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[thoikhoabieuky1]
as
select subjects.name as [mon hoc],
subjects.numbercredit as [STC], 
course.codeview as [lop mon hoc], 
teacher.name as [ten giang vien], 
coursetime.dayinweek as [thu], 
coursetime.codeview as [tiet], 
room.codeview as [giang duong], 
course.maxstudent as [so SV], 
course.signedstudent as [so SVDK]
from course
inner join courseschedule on courseschedule.coursecode=course.code
inner join teachercourse on course.code=teachercourse.coursecode
inner join teacher on teachercourse.teachercode=teacher.code
inner join subjects on course.subjectcode=subjects.code
inner join coursetime on courseschedule.coursetimecode=coursetime.code
inner join room on courseschedule.roomcode=room.code
where course.semestercode=1

GO
/****** Object:  Table [dbo].[building]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[building](
	[code] [varchar](10) NOT NULL,
	[name] [nvarchar](20) NULL,
	[campusareacode] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[campusarea]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[campusarea](
	[code] [varchar](10) NOT NULL,
	[name] [nvarchar](20) NULL,
	[locationof] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[name] [nvarchar](50) NULL,
	[code] [varchar](10) NOT NULL,
	[amount] [int] NULL,
	[adress] [nvarchar](100) NULL,
	[phone] [char](15) NULL,
	[codefaculty] [varchar](10) NOT NULL,
	[codebossdepartment] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[faculty]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faculty](
	[name] [nvarchar](50) NULL,
	[code] [varchar](10) NOT NULL,
	[amount] [int] NULL,
	[adress] [nvarchar](100) NULL,
	[phone] [char](15) NULL,
	[codebossfaculty] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[building]  WITH CHECK ADD FOREIGN KEY([campusareacode])
REFERENCES [dbo].[campusarea] ([code])
GO
ALTER TABLE [dbo].[course]  WITH CHECK ADD FOREIGN KEY([subjectcode])
REFERENCES [dbo].[subjects] ([code])
GO
ALTER TABLE [dbo].[courseschedule]  WITH CHECK ADD FOREIGN KEY([coursecode])
REFERENCES [dbo].[course] ([code])
GO
ALTER TABLE [dbo].[courseschedule]  WITH CHECK ADD FOREIGN KEY([coursetimecode])
REFERENCES [dbo].[coursetime] ([code])
GO
ALTER TABLE [dbo].[courseschedule]  WITH CHECK ADD FOREIGN KEY([roomcode])
REFERENCES [dbo].[room] ([code])
GO
ALTER TABLE [dbo].[department]  WITH CHECK ADD FOREIGN KEY([codefaculty])
REFERENCES [dbo].[faculty] ([code])
GO
ALTER TABLE [dbo].[room]  WITH CHECK ADD FOREIGN KEY([buildingcode])
REFERENCES [dbo].[building] ([code])
GO
ALTER TABLE [dbo].[teacher]  WITH CHECK ADD FOREIGN KEY([codedepartment])
REFERENCES [dbo].[department] ([code])
GO
ALTER TABLE [dbo].[teachercourse]  WITH CHECK ADD FOREIGN KEY([coursecode])
REFERENCES [dbo].[course] ([code])
GO
ALTER TABLE [dbo].[teachercourse]  WITH CHECK ADD FOREIGN KEY([teachercode])
REFERENCES [dbo].[teacher] ([code])
GO
/****** Object:  StoredProcedure [dbo].[addcoursetime]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
drop proc if exists [dbo].[addcoursetime]
go
create proc [dbo].[addcoursetime] (@start int,@end int,@day int)
as begin
declare @code varchar(10)
declare @view nvarchar(20)
declare @dayinweek nvarchar(10)
if (@day <> 8)
(select @dayinweek = ('thu '+convert(varchar(10),@day)))
else
(select @dayinweek = ('chu nhat'))
if not exists (select code from coursetime where timestart=@start and timeend=@end and dayinweek=@dayinweek)
select @code = ('ct'+convert(varchar(10),@start)+convert(varchar(10),@end)+convert(varchar(10),@day))
select @view = ('tiet '+convert(varchar(10),@start)+'-'+convert(varchar(2),@end))
if (@start <> @end)
begin
insert into coursetime (code,timestart,timeend,dayinweek,codeview)
values (@code,@start,@end,@dayinweek,@view)
end
else print 'no go'
end
GO

/****** Object:  StoredProcedure [dbo].[deletecoursetime]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deletecoursetime] (@code varchar(10)=null,@codeview nvarchar(20)=null)
as begin
declare @i int=0
delete from coursetime
where code=@code or codeview like @codeview
if @@ROWCOUNT>0
update coursetime

set @i +=1,code = ('ct'+CONVERT(varchar(10),@i))

end
GO
/****** Object:  StoredProcedure [dbo].[inthoikhoabieu]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[inthoikhoabieu] (@semester int)
as begin
select subjects.name as [mon hoc],
subjects.numbercredit as [STC], 
course.codeview as [lop mon hoc], 
teacher.name as [ten giang vien], 
coursetime.dayinweek as [thu], 
coursetime.codeview as [tiet], 
room.codeview as [giang duong], 
course.maxstudent as [so SV], 
course.signedstudent as [so SVDK]
from course
inner join courseschedule on courseschedule.coursecode=course.code
inner join teachercourse on course.code=teachercourse.coursecode
inner join teacher on teachercourse.teachercode=teacher.code
inner join subjects on course.subjectcode=subjects.code
inner join coursetime on courseschedule.coursetimecode=coursetime.code
inner join room on courseschedule.roomcode=room.code
where course.semestercode=@semester
end


----
drop proc if exists tkbgiaovien
GO
create proc [dbo].[tkbgiaovien] (@name nvarchar(50) =  null, @codeview varchar(20) =null )
as begin
if (@name = null and @codeview = null)
begin
select teacher.name as [ten giang vien], 
teacher.codeview as [ma giang vien],
subjects.name as [mon hoc],
course.codeview as [lop mon hoc], 
coursetime.dayinweek as [thu], 
coursetime.codeview as [tiet], 
room.codeview as [giang duong]
from course
inner join courseschedule on courseschedule.coursecode=course.code
inner join teachercourse on course.code=teachercourse.coursecode
inner join teacher on teachercourse.teachercode=teacher.code
inner join subjects on course.subjectcode=subjects.code
inner join coursetime on courseschedule.coursetimecode=coursetime.code
inner join room on courseschedule.roomcode=room.code
end
else
begin
select teacher.name as [ten giang vien], 
teacher.codeview as [ma giang vien],
subjects.name as [mon hoc],
course.codeview as [lop mon hoc], 
coursetime.dayinweek as [thu], 
coursetime.codeview as [tiet], 
room.codeview as [giang duong]
from course
inner join courseschedule on courseschedule.coursecode=course.code
inner join teachercourse on course.code=teachercourse.coursecode
inner join teacher on teachercourse.teachercode=teacher.code
inner join subjects on course.subjectcode=subjects.code
inner join coursetime on courseschedule.coursetimecode=coursetime.code
inner join room on courseschedule.roomcode=room.code
where teacher.name like @name or teacher.codeview like @codeview
end
end
use timetable
exec tkbgiaovien 'giao vien A'
/****** Object:  StoredProcedure [dbo].[updatecoursetime]    Script Date: 17-May-18 11:13:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[updatecoursetime] (@code varchar(10),@start int,@end int,@day nvarchar(10))
as begin
update coursetime
set timestart=@start, timeend=@end, dayinweek=@day
where code=@code;
end
drop proc if exists deletecoursetime
GO
USE [master]
GO
ALTER DATABASE [timetable] SET  READ_WRITE 
GO




alter proc [dbo].[inthoikhoabieu] (@semester int)
as begin
select subjects.name as [monhoc],
subjects.numbercredit as [stc], 
course.codeview as [lopmonhoc], 
teacher.name as [tengiangvien], 
coursetime.dayinweek as [thu], 
coursetime.codeview as [tiet], 
room.codeview as [giangduong], 
course.maxstudent as [sosv], 
course.signedstudent as [sosvdk]
from course
inner join courseschedule on courseschedule.coursecode=course.code
inner join teachercourse on course.code=teachercourse.coursecode
inner join teacher on teachercourse.teachercode=teacher.code
inner join subjects on course.subjectcode=subjects.code
inner join coursetime on courseschedule.coursetimecode=coursetime.code
inner join room on courseschedule.roomcode=room.code
where course.semestercode=@semester
end

--create or alter trigger checkteachertime
--before insert or update on 

---- disable referential integrity
--EXEC sp_MSForEachTable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL' 
--GO 

--EXEC sp_MSForEachTable 'DELETE FROM ?' 
--GO 

---- enable referential integrity again 
--EXEC sp_MSForEachTable 'ALTER TABLE ? WITH CHECK CHECK CONSTRAINT ALL' 
--GO