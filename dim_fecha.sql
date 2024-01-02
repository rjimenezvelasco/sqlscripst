select * from dbo.SecuenciaFechas('2019')

SELECT DATENAME(year, '12:10:30.123')  
    ,DATENAME(month, '12:10:30.123')  
    ,DATENAME(day, '12:10:30.123')  
    ,DATENAME(dayofyear, '12:10:30.123')  
    ,DATENAME(weekday, '12:10:30.123');  
    
 DECLARE @date datetime2 = '2018-06-02 08:24:14.3112042';
SELECT 
    DATENAME(year, @date) AS Year,
    DATENAME(quarter, @date) AS Quarter,
    DATENAME(month, @date) AS Month,
    DATENAME(dayofyear, @date) AS 'Day of Year',
    DATENAME(day, @date) AS Day,
    DATENAME(week, @date) AS Week,
    DATENAME(weekday, @date) +','+DATENAME(month, @date)+' '+ DATENAME(day, @date)+' '+ DATENAME(year, @date);