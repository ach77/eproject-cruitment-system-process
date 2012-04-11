SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAccount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblAccount](
	[Username] [varchar](5) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_tblAccount] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblResume]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblResume](
	[ResumeId] [varchar](5) NOT NULL,
	[Degree] [varchar](20) NULL,
	[Skills] [varchar](250) NULL,
	[Experience] [int] NULL,
	[Others] [varchar](500) NULL,
 CONSTRAINT [PK_tblResume] PRIMARY KEY CLUSTERED 
(
	[ResumeId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDepartment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDepartment](
	[DepartmentId] [varchar](5) NOT NULL,
	[Derpartmentname] [varchar](30) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_tblDepartment] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblApplicantVacancy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblApplicantVacancy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Applicant] [varchar](5) NULL,
	[Resume] [varchar](5) NULL,
	[Vacancy] [varchar](5) NULL,
	[Applieddate] [datetime] NULL,
	[isDelete] [bit] NULL,
	[State] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tblApplicantVacancy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblSchedule]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblSchedule](
	[Vacancy] [varchar](5) NOT NULL,
	[Executiondate] [datetime] NULL,
	[Interviewer] [varchar](5) NULL,
	[isChange] [bit] NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_tblSchedule] PRIMARY KEY CLUSTERED 
(
	[Vacancy] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEmployee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEmployee](
	[EmployeeId] [varchar](5) NOT NULL,
	[Fullname] [varchar](50) NULL,
	[DateofBirth] [datetime] NULL,
	[Gender] [bit] NULL,
	[Address] [varchar](250) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Department] [varchar](5) NULL,
	[Startdate] [datetime] NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_tblEmployee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblApplicant]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblApplicant](
	[ApplicantId] [varchar](5) NOT NULL,
	[Fullname] [varchar](50) NOT NULL,
	[DateofBirth] [datetime] NOT NULL,
	[Gender] [bit] NOT NULL,
	[Address] [varchar](250) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_tblApplicant] PRIMARY KEY CLUSTERED 
(
	[ApplicantId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblVacancy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblVacancy](
	[VacancyId] [varchar](5) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Requirement] [varchar](500) NOT NULL,
	[Description] [varchar](500) NULL,
	[Salary] [varchar](20) NOT NULL,
	[Slot] [int] NOT NULL,
	[Startdate] [datetime] NOT NULL,
	[Enddate] [datetime] NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[isDelete] [bit] NOT NULL,
	[Department] [varchar](5) NULL,
 CONSTRAINT [PK_tblVacancy] PRIMARY KEY CLUSTERED 
(
	[VacancyId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AGetHistory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Proc [dbo].[sp_AGetHistory](@userhistory as varchar(5))
as select Id,Applicant,Vacancy, Title,Resume, Applieddate,Enddate,State,tblApplicantVacancy.isDelete
 from tblVacancy,tblApplicantVacancy,tblAccount
where tblVacancy.VacancyId=tblApplicantVacancy.Vacancy and
tblApplicantVacancy.Applicant=@userhistory and tblAccount.Username=@userhistory' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AGetSchedule]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Proc [dbo].[sp_AGetSchedule](@username as varchar(5))
as 
select Id, Title, Fullname, Executiondate, tblDepartment.[Description],tblApplicantVacancy.isDelete,
Applieddate,State,tblApplicantVacancy.Applicant,tblApplicantVacancy.Resume,tblApplicantVacancy.Vacancy
from tblvacancy,tblEmployee, tblDepartment, tblSchedule,tblApplicantVacancy
where tblvacancy.vacancyid=tblSchedule.vacancy and
tblEmployee.EmployeeId=tblSchedule.interviewer and 
tblEmployee.Department=tblDepartment.DepartmentID and
tblApplicantVacancy.vacancy=tblVacancy.vacancyid and
tblApplicantVacancy.applicant=@username and 
tblApplicantVacancy.State=''schedule''' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AgetResume]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  proc [dbo].[sp_AgetResume]
as select Id,Applicant,Resume,Vacancy,Applieddate,isDelete,State
from tblApplicantVacancy' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AApplyVacancy]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[sp_AApplyVacancy](
@vacancy as varchar(5),
@applyUser as varchar(5),
@resume as varchar(5),
@applyDate as datetime,
@State as varchar(20),
@degree as varchar(20),
@skill as varchar(250),
@experience as int,
@other as varchar(500),
@isDelete as bit
)
as
begin
	begin
		Insert into tblResume values(@resume,@degree,@skill,@experience,@other)
	end
	begin
		Insert into tblApplicantVacancy values(@applyUser,@resume,@vacancy,@applyDate,@State,@isDelete)
	end
end' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_HRGetVacancyList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create  PROCEDURE  [dbo].[sp_HRGetVacancyList]
AS
SELECT  VacancyId,Title,Requirement,tblVacancy.Description,Salary,Slot,Startdate,Enddate,Status,isDelete,Department,tblDepartment.Description
FROM  tblVacancy join  tblDepartment on  tblDepartment.DepartmentId=  tblVacancy.Department
WHERE  Enddate >  getdate()  and  Status=''Open''
order  by  Enddate asc' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AGetVacancyByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[sp_AGetVacancyByName](@name as varchar(50))
as 
  select title,tblDepartment.Derpartmentname,salary, slot, startdate, enddate 
from tblDepartment, tblVacancy 
where tblDepartment.departmentid=tblvacancy.Department and tblvacancy.title like @name' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AGetVacancyByNameAndDepartment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[sp_AGetVacancyByNameAndDepartment](@name as varchar(50),@department as varchar(30))
as 
  select Title,tblDepartment.Derpartmentname,salary, slot, startdate, enddate 
from tblDepartment, tblVacancy 
where tblDepartment.departmentid=tblvacancy.department and

tblDepartment.derpartmentname=@department and tblvacancy.title like @name' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_APHomeList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sp_APHomeList](@department as varchar(30))

as 
 select Title,tblDepartment.Derpartmentname,salary, slot, startdate, enddate 
from tblDepartment, tblVacancy 
where tblDepartment.departmentid=tblvacancy.department and

tblDepartment.derpartmentname=@department' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AManageAccount]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[sp_AManageAccount](
@username as varchar(5),
@password as varchar(20),
@fullname as varchar(50),
@birth as datetime,
@gender as bit,
@address as varchar(250),
@phone as varchar(20),
@email as varchar(50)
)
as 
begin
	begin
	update tblAccount set password=@password where tblAccount.username=@username
	commit
	end
begin
	update tblApplicant set fullname=@fullname,
	dateofbirth=@birth,gender=@gender,address=@address,
	phone=@phone,email=@email
	where tblapplicant.applicantid=@username
commit
end
end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AShowApplicant]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[sp_AShowApplicant](@user as varchar(5))
as select username,password,fullname,dateofbirth,gender,address, phone,email,tblAccount.isDelete
from tblAccount
join tblApplicant on  tblAccount.Username = tblApplicant.ApplicantId
where tblAccount.Username = @user' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AGetDapartment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[sp_AGetDapartment]
 as
select derpartmentname from tblDepartment' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblApplicantVacancy_tblApplicant]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblApplicantVacancy]'))
ALTER TABLE [dbo].[tblApplicantVacancy]  WITH CHECK ADD  CONSTRAINT [FK_tblApplicantVacancy_tblApplicant] FOREIGN KEY([Applicant])
REFERENCES [dbo].[tblApplicant] ([ApplicantId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblApplicantVacancy_tblResume]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblApplicantVacancy]'))
ALTER TABLE [dbo].[tblApplicantVacancy]  WITH CHECK ADD  CONSTRAINT [FK_tblApplicantVacancy_tblResume] FOREIGN KEY([Resume])
REFERENCES [dbo].[tblResume] ([ResumeId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblApplicantVacancy_tblVacancy]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblApplicantVacancy]'))
ALTER TABLE [dbo].[tblApplicantVacancy]  WITH CHECK ADD  CONSTRAINT [FK_tblApplicantVacancy_tblVacancy] FOREIGN KEY([Vacancy])
REFERENCES [dbo].[tblVacancy] ([VacancyId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblSchedule_tblEmployee]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblSchedule]'))
ALTER TABLE [dbo].[tblSchedule]  WITH CHECK ADD  CONSTRAINT [FK_tblSchedule_tblEmployee] FOREIGN KEY([Interviewer])
REFERENCES [dbo].[tblEmployee] ([EmployeeId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblSchedule_tblVacancy]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblSchedule]'))
ALTER TABLE [dbo].[tblSchedule]  WITH CHECK ADD  CONSTRAINT [FK_tblSchedule_tblVacancy] FOREIGN KEY([Vacancy])
REFERENCES [dbo].[tblVacancy] ([VacancyId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblEmployee_tblAccount]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEmployee]'))
ALTER TABLE [dbo].[tblEmployee]  WITH CHECK ADD  CONSTRAINT [FK_tblEmployee_tblAccount] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[tblAccount] ([Username])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblEmployee_tblDepartment]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEmployee]'))
ALTER TABLE [dbo].[tblEmployee]  WITH CHECK ADD  CONSTRAINT [FK_tblEmployee_tblDepartment] FOREIGN KEY([Department])
REFERENCES [dbo].[tblDepartment] ([DepartmentId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblApplicant_tblAccount]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblApplicant]'))
ALTER TABLE [dbo].[tblApplicant]  WITH CHECK ADD  CONSTRAINT [FK_tblApplicant_tblAccount] FOREIGN KEY([ApplicantId])
REFERENCES [dbo].[tblAccount] ([Username])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblVacancy_tblDepartment]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVacancy]'))
ALTER TABLE [dbo].[tblVacancy]  WITH CHECK ADD  CONSTRAINT [FK_tblVacancy_tblDepartment] FOREIGN KEY([Department])
REFERENCES [dbo].[tblDepartment] ([DepartmentId])
