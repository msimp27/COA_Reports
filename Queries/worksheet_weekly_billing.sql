

-- select distinct ApplicationName from [dbo].[Weelky_Billing_Report_Procare]



-- Procare v10 Center Management System


-- select * from [dbo].[Weelky_Billing_Report_Procare] where ApplicationName = 'Procare v10 Center Management System'



-- select top 3 * from procare.[dbo].[AP_Vendor]


-- select top 3 * from procare.[dbo].[G_Department]

-- select top 30 * from procare.[dbo].[G_Regions]

select 
	top 30 
	-- * 
	RegionID
	,Code
	,Director
	,RegionName
from procare.[dbo].[G_Regions]



exec procare.[dbo].[G_Regions_GetInfoDetail]




/*

select
	--top 3
	*	 
from [dbo].[Weelky_Billing_Report_Procare]
where 
	LoginName in ('TNG_Normal_User', 'procare')
	and textData is not null
	and textData not like '-- network protocol%'
	and textData not like 'exec sp_reset_connection%'
	and
	(
		TextData like 'exec G%'
		or TextData like 'exec AR%'
		or TextData like 'exec PR%'
		or TextData like 'exec %RPT%'
	
	)
	and ApplicationName = 'Procare v10 Client'
	and StartTime < '2019-05-22 13:57:00.020'
	--order by StartTime

*/


/*

select
	--top 3
	*
from [dbo].[Weelky_Billing_Report_Procare]
where 
	TextData like 'exec %rpt%'

*/


-- exec "RPT_AG_CORP_TotalChargeCreditSummary";1 {ts '2019-05-19 00:00:00'}, {ts '2019-05-25 23:59:00'}, 1

-- exec AR_Classroom_GetAllInfoBySchoolID @SchoolID=52

-- exec AR_Element_RevenueTotals @SchoolId=52

-- exec PR_AllEmployeesCurrentLocations @SchoolID=52

-- exec AR_Enrollment_LoadAllBySchoolID @SchoolID=52,@EnrolledTID=287,@StartDate='2019-05-19 00:00:00',@EndDate='2019-05-25 23:59:59'

-- exec AR_Classroom_GetAllInfoBySchoolID @SchoolID=46

-- exec AR_ChildAbsences_GetInfoBySchoolID @SchoolID=46,@StartDate='2019-05-19 00:00:00',@EndDate='2019-05-25 23:59:59'

-- exec AR_ScheduleOverrides_LoadBySchoolID @SchoolID=46,@StartDate='2019-05-19 00:00:00',@EndDate='2019-05-25 23:59:59'

-- exec AR_Schedule_GetDetailInfoBySchoolID @SchoolId=40,@StartDate='2019-05-19 00:00:00',@EndDate='2019-05-25 23:59:59'

-- exec AR_Account_Read @AccountID=60977

/*
report is run by the user every monday for the previous work week
Report Input Params
 - dates should default to the previous week
 - StartDate
 - EndDate
 - ProcareUserID (-1) ?
 
Report Columns
 - Executive Director
 - State
 - School
 - Total Billed Weekly

Notes:
 - sum 
 - group by state
 - dataset for current week and dataset for pevious week


*/