--Queries to build North Carolina district profiles from ACS data

----Gender breakdown (counts)
--DROP TABLE
--arenatraining.sbx_russelld.nc_county_gender_counts
--CREATE TABLE
--arenatraining.sbx_russelld.nc_county_gender_counts AS
--INSERT INTO
--arenatraining.sbx_russelld.nc_county_gender_counts
--^INSERT not supported in free BigQuery

SELECT
    2018 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.male_pop,
    c.female_pop
FROM bigquery-public-data.census_bureau_acs.county_2018_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2016 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.male_pop,
    c.female_pop
FROM bigquery-public-data.census_bureau_acs.county_2016_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2014 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.male_pop,
    c.female_pop
FROM bigquery-public-data.census_bureau_acs.county_2014_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2012 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.male_pop,
    c.female_pop
FROM bigquery-public-data.census_bureau_acs.county_2012_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2010 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.male_pop,
    c.female_pop
FROM bigquery-public-data.census_bureau_acs.county_2010_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
ORDER BY year_int DESC, geo_id ASC

----END Gender breakdown (counts)

----Gender breakdown (%)
--DROP TABLE
--arenatraining.sbx_russelld.nc_county_gender_percents
--CREATE TABLE
--arenatraining.sbx_russelld.nc_county_gender_percents AS

SELECT
    2018 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND((c.female_pop / c.total_pop) * 100, 1) as female_pop_pct
FROM bigquery-public-data.census_bureau_acs.county_2018_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2016 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND((c.female_pop / c.total_pop) * 100, 1) as female_pop_pct
FROM bigquery-public-data.census_bureau_acs.county_2016_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2014 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND((c.female_pop / c.total_pop) * 100, 1) as female_pop_pct
FROM bigquery-public-data.census_bureau_acs.county_2014_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2012 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND((c.female_pop / c.total_pop) * 100, 1) as female_pop_pct
FROM bigquery-public-data.census_bureau_acs.county_2012_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2010 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND((c.female_pop / c.total_pop) * 100, 1) as female_pop_pct
FROM bigquery-public-data.census_bureau_acs.county_2010_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
ORDER BY year_int DESC, geo_id ASC

--END Gender breakdown (%)

----Ethnicity breakdown (counts)
--DROP TABLE
--arenatraining.sbx_russelld.nc_county_ethnicity_counts
--CREATE TABLE
--arenatraining.sbx_russelld.nc_county_ethnicity_counts AS

SELECT
    2018 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.white_pop,
    c.black_pop,
    c.hispanic_pop,
    c.asian_pop,
    c.amerindian_pop,
    c.other_race_pop,
    c.two_or_more_races_pop
FROM bigquery-public-data.census_bureau_acs.county_2018_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2016 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.white_pop,
    c.black_pop,
    c.hispanic_pop,
    c.asian_pop,
    c.amerindian_pop,
    c.other_race_pop,
    c.two_or_more_races_pop
FROM bigquery-public-data.census_bureau_acs.county_2016_5yr c--county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2014 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.white_pop,
    c.black_pop,
    c.hispanic_pop,
    c.asian_pop,
    c.amerindian_pop,
    c.other_race_pop,
    c.two_or_more_races_pop
FROM bigquery-public-data.census_bureau_acs.county_2014_5yr c--county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2012 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.white_pop,
    c.black_pop,
    c.hispanic_pop,
    c.asian_pop,
    c.amerindian_pop,
    c.other_race_pop,
    c.two_or_more_races_pop
FROM bigquery-public-data.census_bureau_acs.county_2012_5yr c--county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2010 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.white_pop,
    c.black_pop,
    c.hispanic_pop,
    c.asian_pop,
    c.amerindian_pop,
    c.other_race_pop,
    c.two_or_more_races_pop
FROM bigquery-public-data.census_bureau_acs.county_2010_5yr c--county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
ORDER BY year_int DESC, geo_id ASC

----END Ethnicity breakdown (counts)

----Ethnicity breakdown (%)
--DROP TABLE
--arenatraining.sbx_russelld.nc_county_ethnicity_percents
--CREATE TABLE
--arenatraining.sbx_russelld.nc_county_ethnicity_percents AS

SELECT
    2018 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND((c.black_pop / c.total_pop) * 100, 1) as black_pop_pct,
    ROUND((c.hispanic_pop / c.total_pop) * 100, 1) as hispanic_pop_pct,
    ROUND((c.asian_pop / c.total_pop) * 100, 1) as asian_pop_pct,
    ROUND((c.amerindian_pop / c.total_pop) * 100, 1) as amerindian_pop_pct,
    ROUND((c.other_race_pop / c.total_pop) * 100, 1) as other_race_pop_pct,
    ROUND((c.two_or_more_races_pop / c.total_pop) * 100, 1) as two_or_more_races_pop_pct,
FROM bigquery-public-data.census_bureau_acs.county_2018_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2016 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND((c.black_pop / c.total_pop) * 100, 1) as black_pop_pct,
    ROUND((c.hispanic_pop / c.total_pop) * 100, 1) as hispanic_pop_pct,
    ROUND((c.asian_pop / c.total_pop) * 100, 1) as asian_pop_pct,
    ROUND((c.amerindian_pop / c.total_pop) * 100, 1) as amerindian_pop_pct,
    ROUND((c.other_race_pop / c.total_pop) * 100, 1) as other_race_pop_pct,
    ROUND((c.two_or_more_races_pop / c.total_pop) * 100, 1) as two_or_more_races_pop_pct,
FROM bigquery-public-data.census_bureau_acs.county_2016_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2014 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND((c.black_pop / c.total_pop) * 100, 1) as black_pop_pct,
    ROUND((c.hispanic_pop / c.total_pop) * 100, 1) as hispanic_pop_pct,
    ROUND((c.asian_pop / c.total_pop) * 100, 1) as asian_pop_pct,
    ROUND((c.amerindian_pop / c.total_pop) * 100, 1) as amerindian_pop_pct,
    ROUND((c.other_race_pop / c.total_pop) * 100, 1) as other_race_pop_pct,
    ROUND((c.two_or_more_races_pop / c.total_pop) * 100, 1) as two_or_more_races_pop_pct,
FROM bigquery-public-data.census_bureau_acs.county_2014_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2012 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND((c.black_pop / c.total_pop) * 100, 1) as black_pop_pct,
    ROUND((c.hispanic_pop / c.total_pop) * 100, 1) as hispanic_pop_pct,
    ROUND((c.asian_pop / c.total_pop) * 100, 1) as asian_pop_pct,
    ROUND((c.amerindian_pop / c.total_pop) * 100, 1) as amerindian_pop_pct,
    ROUND((c.other_race_pop / c.total_pop) * 100, 1) as other_race_pop_pct,
    ROUND((c.two_or_more_races_pop / c.total_pop) * 100, 1) as two_or_more_races_pop_pct,
FROM bigquery-public-data.census_bureau_acs.county_2012_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2010 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND((c.black_pop / c.total_pop) * 100, 1) as black_pop_pct,
    ROUND((c.hispanic_pop / c.total_pop) * 100, 1) as hispanic_pop_pct,
    ROUND((c.asian_pop / c.total_pop) * 100, 1) as asian_pop_pct,
    ROUND((c.amerindian_pop / c.total_pop) * 100, 1) as amerindian_pop_pct,
    ROUND((c.other_race_pop / c.total_pop) * 100, 1) as other_race_pop_pct,
    ROUND((c.two_or_more_races_pop / c.total_pop) * 100, 1) as two_or_more_races_pop_pct,
FROM bigquery-public-data.census_bureau_acs.county_2010_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
ORDER BY year_int DESC, geo_id ASC

----END Ethnicity breakdown (%)

----Gender and age breakdown (counts)
--DROP TABLE
--arenatraining.sbx_russelld.nc_county_ethnicity_by_age_counts
--CREATE TABLE
--arenatraining.sbx_russelld.nc_county_ethnicity_by_age_counts AS

SELECT
    2018 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.male_pop,
    (c.male_under_5 + c.male_5_to_9 + c.male_10_to_14 + c.male_15_to_17) as male_under_18,
    (c.male_18_to_19 + c.male_20 + c.male_21 + c.male_22_to_24 + c.male_25_to_29) as male_18_29,
    (c.male_30_to_34 + c.male_35_to_39) as male_30_39,
    (c.male_40_to_44 + c.male_45_to_49) as male_40_49,
    (c.male_50_to_54 + c.male_55_to_59 + c.male_60_to_61 + c.male_62_to_64) as male_50_64,
    (c.male_65_to_66 + c.male_67_to_69 + c.male_70_to_74 + c.male_75_to_79 + male_80_to_84 + male_85_and_over) as male_65_and_over,
    c.female_pop,
    (c.female_under_5 + female_5_to_9 + female_10_to_14 + female_15_to_17) as female_under_18,
    (c.female_18_to_19 + c.female_20 + c.female_21 + c.female_22_to_24 + c.female_25_to_29) as female_18_29,
    (c.female_30_to_34 + c.female_35_to_39) as female_30_39,
    (c.female_40_to_44 + c.female_45_to_49) as female_40_49,
    (c.female_50_to_54 + c.female_55_to_59 + c.female_60_to_61 + c.female_62_to_64) as female_50_64,
    (c.female_65_to_66 + c.female_67_to_69 + c.female_70_to_74 + c.female_75_to_79 + c.female_80_to_84 + c.female_85_and_over) as female_65_and_over
FROM bigquery-public-data.census_bureau_acs.county_2018_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2016 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.male_pop,
    (c.male_under_5 + c.male_5_to_9 + c.male_10_to_14 + c.male_15_to_17) as male_under_18,
    (c.male_18_to_19 + c.male_20 + c.male_21 + c.male_22_to_24 + c.male_25_to_29) as male_18_29,
    (c.male_30_to_34 + c.male_35_to_39) as male_30_39,
    (c.male_40_to_44 + c.male_45_to_49) as male_40_49,
    (c.male_50_to_54 + c.male_55_to_59 + c.male_60_61 + c.male_62_64) as male_50_64,
    (c.male_65_to_66 + c.male_67_to_69 + c.male_70_to_74 + c.male_75_to_79 + male_80_to_84 + male_85_and_over) as male_65_and_over,
    c.female_pop,
    (c.female_under_5 + female_5_to_9 + female_10_to_14 + female_15_to_17) as female_under_18,
    (c.female_18_to_19 + c.female_20 + c.female_21 + c.female_22_to_24 + c.female_25_to_29) as female_18_29,
    (c.female_30_to_34 + c.female_35_to_39) as female_30_39,
    (c.female_40_to_44 + c.female_45_to_49) as female_40_49,
    (c.female_50_to_54 + c.female_55_to_59 + c.female_60_to_61 + c.female_62_to_64) as female_50_64,
    (c.female_65_to_66 + c.female_67_to_69 + c.female_70_to_74 + c.female_75_to_79 + c.female_80_to_84 + c.female_85_and_over) as female_65_and_over
FROM bigquery-public-data.census_bureau_acs.county_2016_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2014 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.male_pop,
    (c.male_under_5 + c.male_5_to_9 + c.male_10_to_14 + c.male_15_to_17) as male_under_18,
    (c.male_18_to_19 + c.male_20 + c.male_21 + c.male_22_to_24 + c.male_25_to_29) as male_18_29,
    (c.male_30_to_34 + c.male_35_to_39) as male_30_39,
    (c.male_40_to_44 + c.male_45_to_49) as male_40_49,
    (c.male_50_to_54 + c.male_55_to_59 + c.male_60_61 + c.male_62_64) as male_50_64,
    (c.male_65_to_66 + c.male_67_to_69 + c.male_70_to_74 + c.male_75_to_79 + male_80_to_84 + male_85_and_over) as male_65_and_over,
    c.female_pop,
    (c.female_under_5 + female_5_to_9 + female_10_to_14 + female_15_to_17) as female_under_18,
    (c.female_18_to_19 + c.female_20 + c.female_21 + c.female_22_to_24 + c.female_25_to_29) as female_18_29,
    (c.female_30_to_34 + c.female_35_to_39) as female_30_39,
    (c.female_40_to_44 + c.female_45_to_49) as female_40_49,
    (c.female_50_to_54 + c.female_55_to_59 + c.female_60_to_61 + c.female_62_to_64) as female_50_64,
    (c.female_65_to_66 + c.female_67_to_69 + c.female_70_to_74 + c.female_75_to_79 + c.female_80_to_84 + c.female_85_and_over) as female_65_and_over
FROM bigquery-public-data.census_bureau_acs.county_2014_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2012 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.male_pop,
    (c.male_under_5 + c.male_5_to_9 + c.male_10_to_14 + c.male_15_to_17) as male_under_18,
    (c.male_18_to_19 + c.male_20 + c.male_21 + c.male_22_to_24 + c.male_25_to_29) as male_18_29,
    (c.male_30_to_34 + c.male_35_to_39) as male_30_39,
    (c.male_40_to_44 + c.male_45_to_49) as male_40_49,
    (c.male_50_to_54 + c.male_55_to_59 + c.male_60_61 + c.male_62_64) as male_50_64,
    (c.male_65_to_66 + c.male_67_to_69 + c.male_70_to_74 + c.male_75_to_79 + male_80_to_84 + male_85_and_over) as male_65_and_over,
    c.female_pop,
    (c.female_under_5 + female_5_to_9 + female_10_to_14 + female_15_to_17) as female_under_18,
    (c.female_18_to_19 + c.female_20 + c.female_21 + c.female_22_to_24 + c.female_25_to_29) as female_18_29,
    (c.female_30_to_34 + c.female_35_to_39) as female_30_39,
    (c.female_40_to_44 + c.female_45_to_49) as female_40_49,
    (c.female_50_to_54 + c.female_55_to_59 + c.female_60_to_61 + c.female_62_to_64) as female_50_64,
    (c.female_65_to_66 + c.female_67_to_69 + c.female_70_to_74 + c.female_75_to_79 + c.female_80_to_84 + c.female_85_and_over) as female_65_and_over
FROM bigquery-public-data.census_bureau_acs.county_2012_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2010 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    c.male_pop,
    (c.male_under_5 + c.male_5_to_9 + c.male_10_to_14 + c.male_15_to_17) as male_under_18,
    (c.male_18_to_19 + c.male_20 + c.male_21 + c.male_22_to_24 + c.male_25_to_29) as male_18_29,
    (c.male_30_to_34 + c.male_35_to_39) as male_30_39,
    (c.male_40_to_44 + c.male_45_to_49) as male_40_49,
    (c.male_50_to_54 + c.male_55_to_59 + c.male_60_61 + c.male_62_64) as male_50_64,
    (c.male_65_to_66 + c.male_67_to_69 + c.male_70_to_74 + c.male_75_to_79 + male_80_to_84 + male_85_and_over) as male_65_and_over,
    c.female_pop,
    (c.female_under_5 + female_5_to_9 + female_10_to_14 + female_15_to_17) as female_under_18,
    (c.female_18_to_19 + c.female_20 + c.female_21 + c.female_22_to_24 + c.female_25_to_29) as female_18_29,
    (c.female_30_to_34 + c.female_35_to_39) as female_30_39,
    (c.female_40_to_44 + c.female_45_to_49) as female_40_49,
    (c.female_50_to_54 + c.female_55_to_59 + c.female_60_to_61 + c.female_62_to_64) as female_50_64,
    (c.female_65_to_66 + c.female_67_to_69 + c.female_70_to_74 + c.female_75_to_79 + c.female_80_to_84 + c.female_85_and_over) as female_65_and_over
FROM bigquery-public-data.census_bureau_acs.county_2010_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
ORDER BY year_int DESC, geo_id ASC

----END Gender and age breakdown (counts)

----Gender and age breakdown (%)
--DROP TABLE
--arenatraining.sbx_russelld.nc_county_ethnicity_by_age_percents
--CREATE TABLE
--arenatraining.sbx_russelld.nc_county_ethnicity_by_age_percents AS

SELECT
    2018 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND(((c.male_under_5 + c.male_5_to_9 + c.male_10_to_14 + c.male_15_to_17) / c.total_pop) * 100, 1) as male_under_18_pct,
    ROUND(((c.male_18_to_19 + c.male_20 + c.male_21 + c.male_22_to_24 + c.male_25_to_29) / total_pop) * 100, 1) as male_18_29_pct,
    ROUND(((c.male_30_to_34 + c.male_35_to_39) / c.total_pop) * 100, 1) as male_30_39_pct,
    ROUND(((c.male_40_to_44 + c.male_45_to_49) / c.total_pop) * 100, 1) as male_40_49_pct,
    ROUND(((c.male_50_to_54 + c.male_55_to_59 + c.male_60_to_61 + c.male_62_to_64) / c.total_pop) * 100, 1) as male_50_64_pct,
    ROUND(((c.male_65_to_66 + c.male_67_to_69 + c.male_70_to_74 + c.male_75_to_79 + c.male_80_to_84 + c.male_85_and_over) / c.total_pop) * 100, 1) as male_65_and_over_pct,
    ROUND((c.female_pop / c.total_pop) * 100, 1) as female_pop_pct,
    ROUND(((c.female_under_5 + c.female_5_to_9 + c.female_10_to_14 + c.female_15_to_17) / c.total_pop) * 100, 1) as female_under_18_pct,
    ROUND(((c.female_18_to_19 + c.female_20 + c.female_21 + c.female_22_to_24 + c.female_25_to_29) / total_pop) * 100, 1) as female_18_29_pct,
    ROUND(((c.female_30_to_34 + c.female_35_to_39) / c.total_pop) * 100, 1) as female_30_39_pct,
    ROUND(((c.female_40_to_44 + c.female_45_to_49) / c.total_pop) * 100, 1) as female_40_49_pct,
    ROUND(((c.female_50_to_54 + c.female_55_to_59 + c.female_60_to_61 + c.female_62_to_64) / c.total_pop) * 100, 1) as female_50_64_pct,
    ROUND(((c.female_65_to_66 + c.female_67_to_69 + c.female_70_to_74 + c.female_75_to_79 + c.female_80_to_84 + female_85_and_over) / c.total_pop) * 100, 1) as female_65_and_over_pct
FROM bigquery-public-data.census_bureau_acs.county_2018_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2016 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND(((c.male_under_5 + c.male_5_to_9 + c.male_10_to_14 + c.male_15_to_17) / c.total_pop) * 100, 1) as male_under_18_pct,
    ROUND(((c.male_18_to_19 + c.male_20 + c.male_21 + c.male_22_to_24 + c.male_25_to_29) / total_pop) * 100, 1) as male_18_29_pct,
    ROUND(((c.male_30_to_34 + c.male_35_to_39) / c.total_pop) * 100, 1) as male_30_39_pct,
    ROUND(((c.male_40_to_44 + c.male_45_to_49) / c.total_pop) * 100, 1) as male_40_49_pct,
    ROUND(((c.male_50_to_54 + c.male_55_to_59 + c.male_60_61 + c.male_62_64) / c.total_pop) * 100, 1) as male_50_64_pct,
    ROUND(((c.male_65_to_66 + c.male_67_to_69 + c.male_70_to_74 + c.male_75_to_79 + c.male_80_to_84 + c.male_85_and_over) / c.total_pop) * 100, 1) as male_65_and_over_pct,
    ROUND((c.female_pop / c.total_pop) * 100, 1) as female_pop_pct,
    ROUND(((c.female_under_5 + c.female_5_to_9 + c.female_10_to_14 + c.female_15_to_17) / c.total_pop) * 100, 1) as female_under_18_pct,
    ROUND(((c.female_18_to_19 + c.female_20 + c.female_21 + c.female_22_to_24 + c.female_25_to_29) / total_pop) * 100, 1) as female_18_29_pct,
    ROUND(((c.female_30_to_34 + c.female_35_to_39) / c.total_pop) * 100, 1) as female_30_39_pct,
    ROUND(((c.female_40_to_44 + c.female_45_to_49) / c.total_pop) * 100, 1) as female_40_49_pct,
    ROUND(((c.female_50_to_54 + c.female_55_to_59 + c.female_60_to_61 + c.female_62_to_64) / c.total_pop) * 100, 1) as female_50_64_pct,
    ROUND(((c.female_65_to_66 + c.female_67_to_69 + c.female_70_to_74 + c.female_75_to_79 + c.female_80_to_84 + female_85_and_over) / c.total_pop) * 100, 1) as female_65_and_over_pct
FROM bigquery-public-data.census_bureau_acs.county_2016_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2014 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND(((c.male_under_5 + c.male_5_to_9 + c.male_10_to_14 + c.male_15_to_17) / c.total_pop) * 100, 1) as male_under_18_pct,
    ROUND(((c.male_18_to_19 + c.male_20 + c.male_21 + c.male_22_to_24 + c.male_25_to_29) / total_pop) * 100, 1) as male_18_29_pct,
    ROUND(((c.male_30_to_34 + c.male_35_to_39) / c.total_pop) * 100, 1) as male_30_39_pct,
    ROUND(((c.male_40_to_44 + c.male_45_to_49) / c.total_pop) * 100, 1) as male_40_49_pct,
    ROUND(((c.male_50_to_54 + c.male_55_to_59 + c.male_60_61 + c.male_62_64) / c.total_pop) * 100, 1) as male_50_64_pct,
    ROUND(((c.male_65_to_66 + c.male_67_to_69 + c.male_70_to_74 + c.male_75_to_79 + c.male_80_to_84 + c.male_85_and_over) / c.total_pop) * 100, 1) as male_65_and_over_pct,
    ROUND((c.female_pop / c.total_pop) * 100, 1) as female_pop_pct,
    ROUND(((c.female_under_5 + c.female_5_to_9 + c.female_10_to_14 + c.female_15_to_17) / c.total_pop) * 100, 1) as female_under_18_pct,
    ROUND(((c.female_18_to_19 + c.female_20 + c.female_21 + c.female_22_to_24 + c.female_25_to_29) / total_pop) * 100, 1) as female_18_29_pct,
    ROUND(((c.female_30_to_34 + c.female_35_to_39) / c.total_pop) * 100, 1) as female_30_39_pct,
    ROUND(((c.female_40_to_44 + c.female_45_to_49) / c.total_pop) * 100, 1) as female_40_49_pct,
    ROUND(((c.female_50_to_54 + c.female_55_to_59 + c.female_60_to_61 + c.female_62_to_64) / c.total_pop) * 100, 1) as female_50_64_pct,
    ROUND(((c.female_65_to_66 + c.female_67_to_69 + c.female_70_to_74 + c.female_75_to_79 + c.female_80_to_84 + female_85_and_over) / c.total_pop) * 100, 1) as female_65_and_over_pct
FROM bigquery-public-data.census_bureau_acs.county_2014_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2012 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND(((c.male_under_5 + c.male_5_to_9 + c.male_10_to_14 + c.male_15_to_17) / c.total_pop) * 100, 1) as male_under_18_pct,
    ROUND(((c.male_18_to_19 + c.male_20 + c.male_21 + c.male_22_to_24 + c.male_25_to_29) / total_pop) * 100, 1) as male_18_29_pct,
    ROUND(((c.male_30_to_34 + c.male_35_to_39) / c.total_pop) * 100, 1) as male_30_39_pct,
    ROUND(((c.male_40_to_44 + c.male_45_to_49) / c.total_pop) * 100, 1) as male_40_49_pct,
    ROUND(((c.male_50_to_54 + c.male_55_to_59 + c.male_60_61 + c.male_62_64) / c.total_pop) * 100, 1) as male_50_64_pct,
    ROUND(((c.male_65_to_66 + c.male_67_to_69 + c.male_70_to_74 + c.male_75_to_79 + c.male_80_to_84 + c.male_85_and_over) / c.total_pop) * 100, 1) as male_65_and_over_pct,
    ROUND((c.female_pop / c.total_pop) * 100, 1) as female_pop_pct,
    ROUND(((c.female_under_5 + c.female_5_to_9 + c.female_10_to_14 + c.female_15_to_17) / c.total_pop) * 100, 1) as female_under_18_pct,
    ROUND(((c.female_18_to_19 + c.female_20 + c.female_21 + c.female_22_to_24 + c.female_25_to_29) / total_pop) * 100, 1) as female_18_29_pct,
    ROUND(((c.female_30_to_34 + c.female_35_to_39) / c.total_pop) * 100, 1) as female_30_39_pct,
    ROUND(((c.female_40_to_44 + c.female_45_to_49) / c.total_pop) * 100, 1) as female_40_49_pct,
    ROUND(((c.female_50_to_54 + c.female_55_to_59 + c.female_60_to_61 + c.female_62_to_64) / c.total_pop) * 100, 1) as female_50_64_pct,
    ROUND(((c.female_65_to_66 + c.female_67_to_69 + c.female_70_to_74 + c.female_75_to_79 + c.female_80_to_84 + female_85_and_over) / c.total_pop) * 100, 1) as female_65_and_over_pct
FROM bigquery-public-data.census_bureau_acs.county_2012_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2010 as year_int,
    c.geo_id,
    f.area_name,
    c.total_pop,
    ROUND((c.male_pop / c.total_pop) * 100, 1) as male_pop_pct,
    ROUND(((c.male_under_5 + c.male_5_to_9 + c.male_10_to_14 + c.male_15_to_17) / c.total_pop) * 100, 1) as male_under_18_pct,
    ROUND(((c.male_18_to_19 + c.male_20 + c.male_21 + c.male_22_to_24 + c.male_25_to_29) / total_pop) * 100, 1) as male_18_29_pct,
    ROUND(((c.male_30_to_34 + c.male_35_to_39) / c.total_pop) * 100, 1) as male_30_39_pct,
    ROUND(((c.male_40_to_44 + c.male_45_to_49) / c.total_pop) * 100, 1) as male_40_49_pct,
    ROUND(((c.male_50_to_54 + c.male_55_to_59 + c.male_60_61 + c.male_62_64) / c.total_pop) * 100, 1) as male_50_64_pct,
    ROUND(((c.male_65_to_66 + c.male_67_to_69 + c.male_70_to_74 + c.male_75_to_79 + c.male_80_to_84 + c.male_85_and_over) / c.total_pop) * 100, 1) as male_65_and_over_pct,
    ROUND((c.female_pop / c.total_pop) * 100, 1) as female_pop_pct,
    ROUND(((c.female_under_5 + c.female_5_to_9 + c.female_10_to_14 + c.female_15_to_17) / c.total_pop) * 100, 1) as female_under_18_pct,
    ROUND(((c.female_18_to_19 + c.female_20 + c.female_21 + c.female_22_to_24 + c.female_25_to_29) / total_pop) * 100, 1) as female_18_29_pct,
    ROUND(((c.female_30_to_34 + c.female_35_to_39) / c.total_pop) * 100, 1) as female_30_39_pct,
    ROUND(((c.female_40_to_44 + c.female_45_to_49) / c.total_pop) * 100, 1) as female_40_49_pct,
    ROUND(((c.female_50_to_54 + c.female_55_to_59 + c.female_60_to_61 + c.female_62_to_64) / c.total_pop) * 100, 1) as female_50_64_pct,
    ROUND(((c.female_65_to_66 + c.female_67_to_69 + c.female_70_to_74 + c.female_75_to_79 + c.female_80_to_84 + female_85_and_over) / c.total_pop) * 100, 1) as female_65_and_over_pct
FROM bigquery-public-data.census_bureau_acs.county_2010_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE geo_id LIKE '37%' --Counties in NC
ORDER BY year_int DESC, geo_id ASC

----END Gender and age breakdown (%)

----Income breakdown by county (count)
--DROP TABLE
--arenatraining.sbx_russelld.nc_county_household_income_counts
--CREATE TABLE
--arenatraining.sbx_russelld.nc_county_household_income_counts AS

SELECT
    2018 as year_int,
    c.geo_id,
    f.area_name,
    (c.income_less_10000 + c.income_10000_14999 + c.income_15000_19999 + c.income_20000_24999 + c.income_25000_29999) as inc_less_than_30,
    (c.income_30000_34999 + c.income_35000_39999 + c.income_40000_44999 + c.income_45000_49999 + c.income_50000_59999) as inc_30_60,
    (c.income_60000_74999 + c.income_75000_99999) as inc_60_100,
    (c.income_100000_124999 + c.income_125000_149999 + c.income_150000_199999 + c.income_200000_or_more) as inc_more_than_100
FROM bigquery-public-data.census_bureau_acs.county_2018_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2016 as year_int,
    c.geo_id,
    f.area_name,
    (c.income_less_10000 + c.income_10000_14999 + c.income_15000_19999 + c.income_20000_24999 + c.income_25000_29999) as inc_less_than_30,
    (c.income_30000_34999 + c.income_35000_39999 + c.income_40000_44999 + c.income_45000_49999 + c.income_50000_59999) as inc_30_60,
    (c.income_60000_74999 + c.income_75000_99999) as inc_60_100,
    (c.income_100000_124999 + c.income_125000_149999 + c.income_150000_199999 + c.income_200000_or_more) as inc_more_than_100
FROM bigquery-public-data.census_bureau_acs.county_2016_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2014 as year_int,
    c.geo_id,
    f.area_name,
    (c.income_less_10000 + c.income_10000_14999 + c.income_15000_19999 + c.income_20000_24999 + c.income_25000_29999) as inc_less_than_30,
    (c.income_30000_34999 + c.income_35000_39999 + c.income_40000_44999 + c.income_45000_49999 + c.income_50000_59999) as inc_30_60,
    (c.income_60000_74999 + c.income_75000_99999) as inc_60_100,
    (c.income_100000_124999 + c.income_125000_149999 + c.income_150000_199999 + c.income_200000_or_more) as inc_more_than_100
FROM bigquery-public-data.census_bureau_acs.county_2014_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2012 as year_int,
    c.geo_id,
    f.area_name,
    (c.income_less_10000 + c.income_10000_14999 + c.income_15000_19999 + c.income_20000_24999 + c.income_25000_29999) as inc_less_than_30,
    (c.income_30000_34999 + c.income_35000_39999 + c.income_40000_44999 + c.income_45000_49999 + c.income_50000_59999) as inc_30_60,
    (c.income_60000_74999 + c.income_75000_99999) as inc_60_100,
    (c.income_100000_124999 + c.income_125000_149999 + c.income_150000_199999 + c.income_200000_or_more) as inc_more_than_100
FROM bigquery-public-data.census_bureau_acs.county_2012_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2010 as year_int,
    c.geo_id,
    f.area_name,
    (c.income_less_10000 + c.income_10000_14999 + c.income_15000_19999 + c.income_20000_24999 + c.income_25000_29999) as inc_less_than_30,
    (c.income_30000_34999 + c.income_35000_39999 + c.income_40000_44999 + c.income_45000_49999 + c.income_50000_59999) as inc_30_60,
    (c.income_60000_74999 + c.income_75000_99999) as inc_60_100,
    (c.income_100000_124999 + c.income_125000_149999 + c.income_150000_199999 + c.income_200000_or_more) as inc_more_than_100
FROM bigquery-public-data.census_bureau_acs.county_2010_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
ORDER BY year_int DESC, geo_id ASC

----END Income breakdown by county (count)

----Income breakdown by county (%)
--DROP TABLE
--arenatraining.sbx_russelld.nc_county_household_income_percents
--CREATE TABLE
--arenatraining.sbx_russelld.nc_county_household_income_percents AS

SELECT
    2018 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.income_less_10000 + c.income_10000_14999 + c.income_15000_19999 + c.income_20000_24999 + c.income_25000_29999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_less_than_30_pct,
    ROUND((c.income_30000_34999 + c.income_35000_39999 + c.income_40000_44999 + c.income_45000_49999 + c.income_50000_59999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_30_60_pct,
    ROUND((c.income_60000_74999 + c.income_75000_99999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_60_100_pct,
    ROUND((c.income_100000_124999 + c.income_125000_149999 + c.income_150000_199999 + c.income_200000_or_more) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_more_than_100_pct
FROM bigquery-public-data.census_bureau_acs.county_2018_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2016 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.income_less_10000 + c.income_10000_14999 + c.income_15000_19999 + c.income_20000_24999 + c.income_25000_29999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_less_than_30_pct,
    ROUND((c.income_30000_34999 + c.income_35000_39999 + c.income_40000_44999 + c.income_45000_49999 + c.income_50000_59999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_30_60_pct,
    ROUND((c.income_60000_74999 + c.income_75000_99999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_60_100_pct,
    ROUND((c.income_100000_124999 + c.income_125000_149999 + c.income_150000_199999 + c.income_200000_or_more) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_more_than_100_pct
FROM bigquery-public-data.census_bureau_acs.county_2016_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2014 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.income_less_10000 + c.income_10000_14999 + c.income_15000_19999 + c.income_20000_24999 + c.income_25000_29999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_less_than_30_pct,
    ROUND((c.income_30000_34999 + c.income_35000_39999 + c.income_40000_44999 + c.income_45000_49999 + c.income_50000_59999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_30_60_pct,
    ROUND((c.income_60000_74999 + c.income_75000_99999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_60_100_pct,
    ROUND((c.income_100000_124999 + c.income_125000_149999 + c.income_150000_199999 + c.income_200000_or_more) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_more_than_100_pct
FROM bigquery-public-data.census_bureau_acs.county_2014_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2012 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.income_less_10000 + c.income_10000_14999 + c.income_15000_19999 + c.income_20000_24999 + c.income_25000_29999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_less_than_30_pct,
    ROUND((c.income_30000_34999 + c.income_35000_39999 + c.income_40000_44999 + c.income_45000_49999 + c.income_50000_59999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_30_60_pct,
    ROUND((c.income_60000_74999 + c.income_75000_99999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_60_100_pct,
    ROUND((c.income_100000_124999 + c.income_125000_149999 + c.income_150000_199999 + c.income_200000_or_more) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_more_than_100_pct
FROM bigquery-public-data.census_bureau_acs.county_2012_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2010 as year_int,
    c.geo_id,
    f.area_name,
    ROUND((c.income_less_10000 + c.income_10000_14999 + c.income_15000_19999 + c.income_20000_24999 + c.income_25000_29999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_less_than_30_pct,
    ROUND((c.income_30000_34999 + c.income_35000_39999 + c.income_40000_44999 + c.income_45000_49999 + c.income_50000_59999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_30_60_pct,
    ROUND((c.income_60000_74999 + c.income_75000_99999) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_60_100_pct,
    ROUND((c.income_100000_124999 + c.income_125000_149999 + c.income_150000_199999 + c.income_200000_or_more) / (income_less_10000 + income_10000_14999 + income_15000_19999 + income_20000_24999 + income_25000_29999 + income_30000_34999 + income_35000_39999 + income_40000_44999 + income_45000_49999 + income_50000_59999 + income_60000_74999 + income_75000_99999 + income_100000_124999 + income_125000_149999 + income_150000_199999 + income_200000_or_more) * 100, 1) as inc_more_than_100_pct
FROM bigquery-public-data.census_bureau_acs.county_2010_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
ORDER BY year_int DESC, geo_id ASC

----END Income breakdown by county (%)

----Education attainment (counts)
--DROP TABLE
--arenatraining.sbx_russelld.nc_county_education_attain_counts
--CREATE TABLE
--arenatraining.sbx_russelld.nc_county_education_attain_counts AS

SELECT
    2018 as year_int,
    c.geo_id,
    f.area_name,
    (c.in_grades_1_to_4 + c.in_grades_5_to_8 + c.in_grades_9_to_12 + c.in_undergrad_college + c.less_than_high_school_graduate + c.high_school_diploma + c.less_one_year_college + c.one_year_more_college + c.some_college_and_associates_degree + c.associates_degree + c.bachelors_degree + c.graduate_professional_degree) as education_known_pop,
    (c.in_grades_1_to_4 + c.in_grades_5_to_8) as in_elementary,
    c.in_grades_9_to_12 as in_high_school,
    c.in_undergrad_college,
    c.less_than_high_school_graduate,
    c.high_school_diploma,
    c.less_one_year_college,
    c.one_year_more_college,
    c.some_college_and_associates_degree,
    c.associates_degree,
    c.bachelors_degree,
    c.graduate_professional_degree
FROM bigquery-public-data.census_bureau_acs.county_2018_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2016 as year_int,
    c.geo_id,
    f.area_name,
    (c.in_grades_1_to_4 + c.in_grades_5_to_8 + c.in_grades_9_to_12 + c.in_undergrad_college + c.less_than_high_school_graduate + c.high_school_diploma + c.less_one_year_college + c.one_year_more_college + c.some_college_and_associates_degree + c.associates_degree + c.bachelors_degree + c.graduate_professional_degree) as education_known_pop,
    (c.in_grades_1_to_4 + c.in_grades_5_to_8) as in_elementary,
    c.in_grades_9_to_12 as in_high_school,
    c.in_undergrad_college,
    c.less_than_high_school_graduate,
    c.high_school_diploma,
    c.less_one_year_college,
    c.one_year_more_college,
    c.some_college_and_associates_degree,
    c.associates_degree,
    c.bachelors_degree,
    c.graduate_professional_degree
FROM bigquery-public-data.census_bureau_acs.county_2016_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2014 as year_int,
    c.geo_id,
    f.area_name,
    (c.in_grades_1_to_4 + c.in_grades_5_to_8 + c.in_grades_9_to_12 + c.in_undergrad_college + c.less_than_high_school_graduate + c.high_school_diploma + c.less_one_year_college + c.one_year_more_college + c.some_college_and_associates_degree + c.associates_degree + c.bachelors_degree + c.graduate_professional_degree) as education_known_pop,
    (c.in_grades_1_to_4 + c.in_grades_5_to_8) as in_elementary,
    c.in_grades_9_to_12 as in_high_school,
    c.in_undergrad_college,
    c.less_than_high_school_graduate,
    c.high_school_diploma,
    c.less_one_year_college,
    c.one_year_more_college,
    c.some_college_and_associates_degree,
    c.associates_degree,
    c.bachelors_degree,
    c.graduate_professional_degree
FROM bigquery-public-data.census_bureau_acs.county_2014_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2012 as year_int,
    c.geo_id,
    f.area_name,
    (c.in_grades_1_to_4 + c.in_grades_5_to_8 + c.in_grades_9_to_12 + c.in_undergrad_college + c.less_than_high_school_graduate + c.high_school_diploma + c.less_one_year_college + c.one_year_more_college + c.some_college_and_associates_degree + c.associates_degree + c.bachelors_degree + c.graduate_professional_degree) as education_known_pop,
    (c.in_grades_1_to_4 + c.in_grades_5_to_8) as in_elementary,
    c.in_grades_9_to_12 as in_high_school,
    c.in_undergrad_college,
    c.less_than_high_school_graduate,
    c.high_school_diploma,
    c.less_one_year_college,
    c.one_year_more_college,
    c.some_college_and_associates_degree,
    c.associates_degree,
    c.bachelors_degree,
    c.graduate_professional_degree
FROM bigquery-public-data.census_bureau_acs.county_2012_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
UNION ALL
SELECT
    2010 as year_int,
    c.geo_id,
    f.area_name,
    (c.in_grades_1_to_4 + c.in_grades_5_to_8 + c.in_grades_9_to_12 + c.in_undergrad_college + c.less_than_high_school_graduate + c.high_school_diploma + c.less_one_year_college + c.one_year_more_college + c.some_college_and_associates_degree + c.associates_degree + c.bachelors_degree + c.graduate_professional_degree) as education_known_pop,
    (c.in_grades_1_to_4 + c.in_grades_5_to_8) as in_elementary,
    c.in_grades_9_to_12 as in_high_school,
    c.in_undergrad_college,
    c.less_than_high_school_graduate,
    c.high_school_diploma,
    c.less_one_year_college,
    c.one_year_more_college,
    c.some_college_and_associates_degree,
    c.associates_degree,
    c.bachelors_degree,
    c.graduate_professional_degree
FROM bigquery-public-data.census_bureau_acs.county_2010_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
ON c.geo_id = f.county_fips_code
WHERE c.geo_id LIKE '37%' --Counties in NC
ORDER BY year_int DESC, geo_id ASC

----END Education attainment (counts)

----Education attainment (%)
--DROP TABLE
--arenatraining.sbx_russelld.nc_county_education_attain_percents
--CREATE TABLE
--arenatraining.sbx_russelld.nc_county_education_attain_percents AS

SELECT
    2018 as year_int,
    j.geo_id,
    j.area_name,
    ROUND((j.in_elementary / j.education_known_pop) * 100, 1) as in_elementary_pct,
    ROUND((j.in_high_school / j.education_known_pop) * 100, 1) as in_high_school_pct,
    ROUND((j.in_undergrad_college / j.education_known_pop) * 100, 1) as in_undergrad_college_pct,
    ROUND((j.less_than_high_school_graduate / j.education_known_pop) * 100, 1) as less_than_high_school_graduate_pct,
    ROUND((j.high_school_diploma / j.education_known_pop) * 100, 1) as high_school_diploma_pct,
    ROUND((j.less_one_year_college / j.education_known_pop) * 100, 1) as less_one_year_college_pct,
    ROUND((j.one_year_more_college / j.education_known_pop) * 100, 1) as one_year_more_college_pct,
    ROUND((j.some_college_and_associates_degree / j.education_known_pop) * 100, 1) as some_college_and_associates_degree_pct,
    ROUND((j.associates_degree / j.education_known_pop) * 100, 1) as associates_degree_pct,
    ROUND((j.bachelors_degree / j.education_known_pop) * 100, 1) as bachelors_degree_pct,
    ROUND((j.graduate_professional_degree / j.education_known_pop) * 100, 1) as graduate_professional_degree_pct,
FROM(
    SELECT
        c.geo_id,
        f.area_name,
        (c.in_grades_1_to_4 + c.in_grades_5_to_8 + c.in_grades_9_to_12 + c.in_undergrad_college + c.less_than_high_school_graduate + c.high_school_diploma + c.less_one_year_college + c.one_year_more_college + c.some_college_and_associates_degree + c.associates_degree + c.bachelors_degree + c.graduate_professional_degree) as education_known_pop,
        (c.in_grades_1_to_4 + c.in_grades_5_to_8) as in_elementary,
        c.in_grades_9_to_12 as in_high_school,
        c.in_undergrad_college,
        c.less_than_high_school_graduate,
        c.high_school_diploma,
        c.less_one_year_college,
        c.one_year_more_college,
        c.some_college_and_associates_degree,
        c.associates_degree,
        c.bachelors_degree,
        c.graduate_professional_degree
    FROM bigquery-public-data.census_bureau_acs.county_2018_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
    LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
    ON c.geo_id = f.county_fips_code
    WHERE c.geo_id LIKE '37%') j
UNION ALL
SELECT
    2016 as year_int,
    j.geo_id,
    j.area_name,
    ROUND((j.in_elementary / j.education_known_pop) * 100, 1) as in_elementary_pct,
    ROUND((j.in_high_school / j.education_known_pop) * 100, 1) as in_high_school_pct,
    ROUND((j.in_undergrad_college / j.education_known_pop) * 100, 1) as in_undergrad_college_pct,
    ROUND((j.less_than_high_school_graduate / j.education_known_pop) * 100, 1) as less_than_high_school_graduate_pct,
    ROUND((j.high_school_diploma / j.education_known_pop) * 100, 1) as high_school_diploma_pct,
    ROUND((j.less_one_year_college / j.education_known_pop) * 100, 1) as less_one_year_college_pct,
    ROUND((j.one_year_more_college / j.education_known_pop) * 100, 1) as one_year_more_college_pct,
    ROUND((j.some_college_and_associates_degree / j.education_known_pop) * 100, 1) as some_college_and_associates_degree_pct,
    ROUND((j.associates_degree / j.education_known_pop) * 100, 1) as associates_degree_pct,
    ROUND((j.bachelors_degree / j.education_known_pop) * 100, 1) as bachelors_degree_pct,
    ROUND((j.graduate_professional_degree / j.education_known_pop) * 100, 1) as graduate_professional_degree_pct,
FROM(
    SELECT
        c.geo_id,
        f.area_name,
        (c.in_grades_1_to_4 + c.in_grades_5_to_8 + c.in_grades_9_to_12 + c.in_undergrad_college + c.less_than_high_school_graduate + c.high_school_diploma + c.less_one_year_college + c.one_year_more_college + c.some_college_and_associates_degree + c.associates_degree + c.bachelors_degree + c.graduate_professional_degree) as education_known_pop,
        (c.in_grades_1_to_4 + c.in_grades_5_to_8) as in_elementary,
        c.in_grades_9_to_12 as in_high_school,
        c.in_undergrad_college,
        c.less_than_high_school_graduate,
        c.high_school_diploma,
        c.less_one_year_college,
        c.one_year_more_college,
        c.some_college_and_associates_degree,
        c.associates_degree,
        c.bachelors_degree,
        c.graduate_professional_degree
    FROM bigquery-public-data.census_bureau_acs.county_2016_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
    LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
    ON c.geo_id = f.county_fips_code
    WHERE c.geo_id LIKE '37%') j
UNION ALL
SELECT
    2014 as year_int,
    j.geo_id,
    j.area_name,
    ROUND((j.in_elementary / j.education_known_pop) * 100, 1) as in_elementary_pct,
    ROUND((j.in_high_school / j.education_known_pop) * 100, 1) as in_high_school_pct,
    ROUND((j.in_undergrad_college / j.education_known_pop) * 100, 1) as in_undergrad_college_pct,
    ROUND((j.less_than_high_school_graduate / j.education_known_pop) * 100, 1) as less_than_high_school_graduate_pct,
    ROUND((j.high_school_diploma / j.education_known_pop) * 100, 1) as high_school_diploma_pct,
    ROUND((j.less_one_year_college / j.education_known_pop) * 100, 1) as less_one_year_college_pct,
    ROUND((j.one_year_more_college / j.education_known_pop) * 100, 1) as one_year_more_college_pct,
    ROUND((j.some_college_and_associates_degree / j.education_known_pop) * 100, 1) as some_college_and_associates_degree_pct,
    ROUND((j.associates_degree / j.education_known_pop) * 100, 1) as associates_degree_pct,
    ROUND((j.bachelors_degree / j.education_known_pop) * 100, 1) as bachelors_degree_pct,
    ROUND((j.graduate_professional_degree / j.education_known_pop) * 100, 1) as graduate_professional_degree_pct,
FROM(
    SELECT
        c.geo_id,
        f.area_name,
        (c.in_grades_1_to_4 + c.in_grades_5_to_8 + c.in_grades_9_to_12 + c.in_undergrad_college + c.less_than_high_school_graduate + c.high_school_diploma + c.less_one_year_college + c.one_year_more_college + c.some_college_and_associates_degree + c.associates_degree + c.bachelors_degree + c.graduate_professional_degree) as education_known_pop,
        (c.in_grades_1_to_4 + c.in_grades_5_to_8) as in_elementary,
        c.in_grades_9_to_12 as in_high_school,
        c.in_undergrad_college,
        c.less_than_high_school_graduate,
        c.high_school_diploma,
        c.less_one_year_college,
        c.one_year_more_college,
        c.some_college_and_associates_degree,
        c.associates_degree,
        c.bachelors_degree,
        c.graduate_professional_degree
    FROM bigquery-public-data.census_bureau_acs.county_2014_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
    LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
    ON c.geo_id = f.county_fips_code
    WHERE c.geo_id LIKE '37%') j
UNION ALL
SELECT
    2012 as year_int,
    j.geo_id,
    j.area_name,
    ROUND((j.in_elementary / j.education_known_pop) * 100, 1) as in_elementary_pct,
    ROUND((j.in_high_school / j.education_known_pop) * 100, 1) as in_high_school_pct,
    ROUND((j.in_undergrad_college / j.education_known_pop) * 100, 1) as in_undergrad_college_pct,
    ROUND((j.less_than_high_school_graduate / j.education_known_pop) * 100, 1) as less_than_high_school_graduate_pct,
    ROUND((j.high_school_diploma / j.education_known_pop) * 100, 1) as high_school_diploma_pct,
    ROUND((j.less_one_year_college / j.education_known_pop) * 100, 1) as less_one_year_college_pct,
    ROUND((j.one_year_more_college / j.education_known_pop) * 100, 1) as one_year_more_college_pct,
    ROUND((j.some_college_and_associates_degree / j.education_known_pop) * 100, 1) as some_college_and_associates_degree_pct,
    ROUND((j.associates_degree / j.education_known_pop) * 100, 1) as associates_degree_pct,
    ROUND((j.bachelors_degree / j.education_known_pop) * 100, 1) as bachelors_degree_pct,
    ROUND((j.graduate_professional_degree / j.education_known_pop) * 100, 1) as graduate_professional_degree_pct,
FROM(
    SELECT
        c.geo_id,
        f.area_name,
        (c.in_grades_1_to_4 + c.in_grades_5_to_8 + c.in_grades_9_to_12 + c.in_undergrad_college + c.less_than_high_school_graduate + c.high_school_diploma + c.less_one_year_college + c.one_year_more_college + c.some_college_and_associates_degree + c.associates_degree + c.bachelors_degree + c.graduate_professional_degree) as education_known_pop,
        (c.in_grades_1_to_4 + c.in_grades_5_to_8) as in_elementary,
        c.in_grades_9_to_12 as in_high_school,
        c.in_undergrad_college,
        c.less_than_high_school_graduate,
        c.high_school_diploma,
        c.less_one_year_college,
        c.one_year_more_college,
        c.some_college_and_associates_degree,
        c.associates_degree,
        c.bachelors_degree,
        c.graduate_professional_degree
    FROM bigquery-public-data.census_bureau_acs.county_2012_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
    LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
    ON c.geo_id = f.county_fips_code
    WHERE c.geo_id LIKE '37%') j
UNION ALL
SELECT
    2010 as year_int,
    j.geo_id,
    j.area_name,
    ROUND((j.in_elementary / j.education_known_pop) * 100, 1) as in_elementary_pct,
    ROUND((j.in_high_school / j.education_known_pop) * 100, 1) as in_high_school_pct,
    ROUND((j.in_undergrad_college / j.education_known_pop) * 100, 1) as in_undergrad_college_pct,
    ROUND((j.less_than_high_school_graduate / j.education_known_pop) * 100, 1) as less_than_high_school_graduate_pct,
    ROUND((j.high_school_diploma / j.education_known_pop) * 100, 1) as high_school_diploma_pct,
    ROUND((j.less_one_year_college / j.education_known_pop) * 100, 1) as less_one_year_college_pct,
    ROUND((j.one_year_more_college / j.education_known_pop) * 100, 1) as one_year_more_college_pct,
    ROUND((j.some_college_and_associates_degree / j.education_known_pop) * 100, 1) as some_college_and_associates_degree_pct,
    ROUND((j.associates_degree / j.education_known_pop) * 100, 1) as associates_degree_pct,
    ROUND((j.bachelors_degree / j.education_known_pop) * 100, 1) as bachelors_degree_pct,
    ROUND((j.graduate_professional_degree / j.education_known_pop) * 100, 1) as graduate_professional_degree_pct,
FROM(
    SELECT
        c.geo_id,
        f.area_name,
        (c.in_grades_1_to_4 + c.in_grades_5_to_8 + c.in_grades_9_to_12 + c.in_undergrad_college + c.less_than_high_school_graduate + c.high_school_diploma + c.less_one_year_college + c.one_year_more_college + c.some_college_and_associates_degree + c.associates_degree + c.bachelors_degree + c.graduate_professional_degree) as education_known_pop,
        (c.in_grades_1_to_4 + c.in_grades_5_to_8) as in_elementary,
        c.in_grades_9_to_12 as in_high_school,
        c.in_undergrad_college,
        c.less_than_high_school_graduate,
        c.high_school_diploma,
        c.less_one_year_college,
        c.one_year_more_college,
        c.some_college_and_associates_degree,
        c.associates_degree,
        c.bachelors_degree,
        c.graduate_professional_degree
    FROM bigquery-public-data.census_bureau_acs.county_2010_5yr c --county_2018_5yr county_2016_5yr county_2014_5yr county_2012_5yr county_2010_5yr
    LEFT JOIN bigquery-public-data.census_utility.fips_codes_all f
    ON c.geo_id = f.county_fips_code
    WHERE c.geo_id LIKE '37%') j
ORDER BY year_int DESC, geo_id ASC

----END Education attainment (%)
