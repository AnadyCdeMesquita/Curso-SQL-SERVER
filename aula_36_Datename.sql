--A função DATENAME() retorna uma parte especificada de uma data.

--Esta função retorna o resultado como um valor de string.

use ContosoRetailDW

select top 10000
datekey,
datename(day, DateKey) as dia,
datename(month, DateKey) as mes,
datename(year, DateKey) as ano,
datepart(weekday, datekey) as dia_semana_numero, -- retorna o numero do dia,
datename(weekday, datekey) as dia_semana_string --retona um string


from FactOnlineSales
order by DateKey desc

SELECT DATENAME (YEAR, GETDATE()) AS [Year],
	DATENAME (QUARTER, GETDATE()) AS [Quarter],
	DATENAME (MONTH, GETDATE()) AS [Month],
	DATENAME (DayOfYear, GETDATE()) AS [DayOfYear],
	DATENAME (DAY, GETDATE()) AS [Day],
	DATENAME (WEEK, GETDATE()) AS [Week],
	DATENAME (WEEKDAY, GETDATE()) AS [Weekday],
	DATENAME (HOUR, GETDATE()) AS [Hour],
	DATENAME (MINUTE, GETDATE()) AS [Minute],
	DATENAME (SECOND, GETDATE()) AS [Second],
	DATENAME (MILLISECOND, GETDATE()) AS [Millisecond],
	DATENAME (MICROSECOND, GETDATE()) AS [Microsecond],
	DATENAME (NANOSECOND, GETDATE()) AS [NanoSecond],
	DATENAME (ISO_WEEK, GETDATE()) AS [ISO Week]