# NC-Income-Trends
This project includes SQL queries to retrieve data from BigQuery's public datasets and a Data Studio dashboard to visualize results. The goal is to easily compare North Carolina county or group of counties income and demographic trends, especially in metrics that inform political campaigning.

[Click here to launch the dashboard](https://datastudio.google.com/u/0/reporting/fa3cd195-27dd-4c64-a36f-5c16c17effe2)

![dashboard_gif](https://github.com/drussel4/NC-Income-Trends/blob/main/img/dashboard_gif.gif?raw=true)

## SQL Queries
The queries retrieve (1) household income, (2) gender, (3) ethnicity, (4) gender by age, and (5) educational attainment as available from the American Community Survey (ACS) in the BigQuery public databases within the <i>bigquery-public-data</i> library. As of March 2021, the latest year available is 2018. Each of the five metrics is queried twice, firstly as a count of population and secondly as a percentage of population. Each query includes a join to the <i>census_utility.fips_codes_all</i> table in order to map geo_id to area_name (county name). Each also includes UNION clauses to stack yearly tables, from 2010 to 2018 in two-year intervals.

![bigquery_navigation](https://github.com/drussel4/NC-Income-Trends/blob/main/img/bigquery_navigation.png?raw=true)

[Here is the SQL query to tier household income by residents making less than $30k, $30-60k, $60-100k, and $100k+ as a percent of the population.](https://github.com/drussel4/NC-Income-Trends/blob/eb835a1fc6ad46de13bc59c1b3080de115bcafa8/district_profile_queries.sql#L654-L726)

## Evaluating Results
Topline observations:
- North Carolina’s household income falls mostly into the lower two tiers:
 - <$30k: 33.1%
 - $30-60k: 28.9%
 - $60-100k: 21.5%
 - $100k+: 16.4%
- Wake County boasts the largest portion of it’s population in the upper tiers at 61% <i>top-left graph</i>. Graham has the lowest at 24% <i>top-right</i>.
- Hyde led all counties by adding 18% of residents to the top 2 from the bottom 2 tiers, outpacing the statewide average of 6% <i>bottom-left</i>. Greene was the only county with residents increasingly comprising the bottom 2 tiers, falling by 1% <i>bottom-right</i>.

![income_trends_graphs](https://github.com/drussel4/NC-Income-Trends/blob/main/img/income_trends_graphs.png?raw=true)

Demographic Takeaways:
- Compared to the broader U.S., North Carolina skews whiter (68% v. 76%), older (53% age 40+ v. 49%), and higher in formal educational attainment (55% completing one or more years of college v. 35%), as of 2018.
- Hyde County has a more diverse population than the average N.C. county - 57% white, 37% black, and 6% Hispanic as of 2018. (N.C. statewide average - 68%, 20%, 7%) It also has a large portion of residents having completed one or more years of college, though a substantial portion at 23.4% ended their formal education after finished schooling at high school.
- Greene County is even more diverse than Hyde, with 35% and 15% black and Hispanic residents, respectively. It is one of only ten counties in North Carolina (100 total) where black plus Hispanic populations account for 50% or more of the residents. Greene’s residents also skew younger, with more of Hyde’s population in the Male 65+ bucket and more of Greene’s in the M <18 bucket.

![hyde_vs_greene_counties](https://github.com/drussel4/NC-Income-Trends/blob/main/img/hyde_vs_greene_counties.png?raw=true)

## Video Demo

For more detail on these queries or how to start using BigQuery, watch this demo. [![demo](https://img.youtube.com/vi/fWxivjXf82s/0.jpg)](https://www.youtube.com/watch?v=fWxivjXf82s)

## License

MIT © Dave Russell
