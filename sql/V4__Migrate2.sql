INSERT INTO "School" ("school", "type", "reg", "egov")
SELECT DISTINCT on (zno.EONAME) zno.EONAME, zno.EOTYPENAME, "Territory".reg, zno.EOParent
FROM zno
LEFT JOIN "Territory"
ON zno.EORegName = "Territory".reg AND zno.areaname = "Territory".area AND zno.EOTerName = "Territory".territory
WHERE zno.EONAME IS NOT NULL;

INSERT INTO "School" (school, reg)
SELECT DISTINCT ON (zno.UkrPTName) zno.UkrPTName, "Territory".reg
FROM zno
LEFT JOIN "Territory"
ON zno.UkrPTRegName = "Territory".reg AND zno.UkrPTAreaName = "Territory".area AND zno.UkrPTTerName = "Territory".territory
WHERE zno.UkrPTName NOT IN (
SELECT school
FROM "School") AND zno.UkrPTName IS NOT NULL;

INSERT INTO "School" (school, reg)
SELECT DISTINCT ON (zno.bioPTName) zno.bioPTName, "Territory".reg
FROM zno
LEFT JOIN "Territory"
ON zno.bioPTName = "Territory".reg AND zno.bioPTName = "Territory".area AND zno.bioPTName = "Territory".territory
WHERE zno.bioPTName NOT IN (
SELECT school
FROM "School"
) AND zno.bioPTName IS NOT NULL;
