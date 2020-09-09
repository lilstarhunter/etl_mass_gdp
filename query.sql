SELECT 
	g.country_code,
	g.country_name,
	g.year,
	m.protest,
	g.gdp
FROM mass_protest as m
JOIN gdp as g
ON m.year = g.year AND m.country = g.country_name;
