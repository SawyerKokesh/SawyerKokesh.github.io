
-- gets average score for each state in the US
SELECT province, AVG(points) AS AvgScore FROM `wineList` WHERE country = 'US' GROUP BY province

-- gets average score for each country
SELECT country, AVG(points) AS AvgScore FROM `wineList` GROUP BY country

--gets score for varities that are in california
SELECT variety, AVG(points) AS AvgScore FROM `wineList` WHERE region_1 = 'california' GROUP BY variety

SELECT price, AVG(points) AS AvgScore FROM `wineList` Where price IS NOT NULL AND price != 'null' GROUP BY price ORDER BY cast(price as int)

SELECT winery, AVG(points) AS AvgScore, COUNT(id) FROM `wineList` WHERE region_1 = 'california' GROUP BY winery ORDER BY cast(AVG(points) as int) DESC LIMIT 15