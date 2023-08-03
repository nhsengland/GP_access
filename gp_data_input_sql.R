
library(odbc)
library(DBI)
library(tidyverse)

source ('personal_credentials.R')

con_udal <- DBI::dbConnect(drv = odbc::odbc(),
                           driver = "ODBC Driver 17 for SQL Server",
                           server = serv,
                           database = db,
                           UID = user,
                           authentication = "ActiveDirectoryInteractive")


df2 <- DBI::dbGetQuery(conn = con_udal, statement = "
SELECT    [Appointment_Date]
      ,[Appointment_Status]
      ,[HCP_Type]
      ,[Appointment_Mode]
      ,[Time_Between_Book_And_Appt]
      ,[Count_Of_Appointments]
	,heir.stp_name
	,[Region_Name]
	,DENSE_RANK () OVER (PARTITION BY ([Appointment_Date]) ORDER BY AuditKey DESC) AS RN
	,AuditKey
FROM  UKHF_Appts_In_General_Practice.Appts_GP_Daily1_1 as gp

left join [Reporting_UKHD_ODS].[Commissioner_Hierarchies_ICB] as heir
on gp.commissioner_code = heir.[Organisation_Code]

where Appointment_Date >= '2018-01-01'
")

df2 <- df2 |>
  filter (RN == '1')

write.csv(df2,"gp_dat2.csv")
