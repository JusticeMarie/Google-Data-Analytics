--The following query will filter the results by county and sort the results by year and county. 
--This will allow you to determine if the number of births is increasing or decreasing in each county.
SELECT
*
FROM
bigquery-public-data.sdoh_cdc_wonder_natality.county_natality
WHERE
County_of_Residence = 'Erie County, NY'
OR County_of_Residence = 'Niagara County, NY'
OR County_of_Residence = 'Chautauqua County, NY'
ORDER BY
County_of_Residence,
Year
