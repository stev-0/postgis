SELECT ST_AsText(ST_Buffer(ST_GeomFromText('POINT(100 90)'),50,'quad_segs=8'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('POINT(100 90)'),50,'quad_segs=8 side=left'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('POINT(100 90)'),50,'quad_segs=2'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('LINESTRING(50 50,150 150,150 50)'),10,'endcap=round join=round'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('LINESTRING(50 50,150 150,150 50)'),10,'endcap=square join=round'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('LINESTRING(50 50,150 150,150 50)'),10,'endcap=flat join=round'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('LINESTRING(50 50,150 150,150 50)'),10,'join=bevel'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('LINESTRING(50 50,150 150,150 50)'),10,'join=mitre mitre_limit=5.0'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('LINESTRING(50 50,150 150,150 50)'),10,'join=mitre mitre_limit=1.0'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('LINESTRING(50 50,150 150,150 50)'),10,'join=mitre mitre_limit=1.0 side=both'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('LINESTRING(50 50,150 150,150 50)'),10,'side=left'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('LINESTRING(50 50,150 150,150 50)'),10,'side=right'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('LINESTRING(50 50,150 150,150 50)'),10,'side=left join=mitre'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('POINT EMPTY'),50));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('POLYGON ((20 20, 20 40, 40 40, 40 40, 40 20, 20 20))'),10,'join=mitre'));
SELECT ST_AsText(ST_Buffer(ST_ForceRHR(ST_GeomFromText('POLYGON ((20 20, 20 40, 40 40, 40 40, 40 20, 20 20))')),10,'join=mitre side=right'));
SELECT ST_AsText(ST_Buffer(ST_ForceRHR(ST_GeomFromText('POLYGON ((20 20, 20 40, 40 40, 40 40, 40 20, 20 20))')),10,'join=mitre side=left'));
SELECT ST_AsText(ST_Buffer(ST_ForceRHR(ST_GeomFromText('POLYGON ((20 20, 20 40, 40 40, 40 40, 40 20, 20 20))')),5,'join=mitre side=right'));
SELECT ST_AsText(ST_Buffer(ST_ForceRHR(ST_GeomFromText('MULTIPOINT ((10 40), (40 30), (20 20), (30 10))')),10,'quad_segs=4'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('MULTILINESTRING ((10 10, 20 20, 10 40),(40 40, 30 30, 40 20, 30 10))'),10,'join=mitre'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('MULTILINESTRING ((10 10, 20 20, 10 40),(40 40, 30 30, 40 20, 30 10))'),10,'side=left join=mitre'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('MULTILINESTRING ((10 10, 20 20, 10 40),(40 40, 30 30, 40 20, 30 10))'),10,'side=left'));
SELECT ST_AsText(ST_Buffer(ST_GeomFromText('GEOMETRYCOLLECTION(POINT(10 10),LINESTRING(50 50,51 60))'),10));
