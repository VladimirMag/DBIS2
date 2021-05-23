INSERT INTO "Pupil" ("pupId", "birthdate", "sex", "reg" , "area", "territory", "regiontype","classprof","classlang","school")
SELECT DISTINCT ON ("outid") "outid", "birth", "sextypename", "regname", "areaname", "tername", "regtypename", "classprofilename", "classlangname", "eoname"
FROM zno;