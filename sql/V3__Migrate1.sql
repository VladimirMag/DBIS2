INSERT INTO "Territory" ("reg", "area", "territory", "territorytype")
SELECT DISTINCT "regname", "areaname", "tername", "tertypename"
FROM zno;

INSERT INTO "Territory" ("reg", "area", "territory")
SELECT DISTINCT eoregname, eoareaname, eotername
FROM zno
WHERE EORegName IS NOT NULL AND EOAreaName IS NOT NULL AND EOTerName IS NOT NULL
EXCEPT
SELECT "reg", "area", "territory"
FROM "Territory";