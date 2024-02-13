# 07. Armed workers count 



SELECT p.name AS name, SUM(w.is_armed) AS armed_workers
FROM preserves p
JOIN workers w ON w.preserve_id = p.id
GROUP BY name
HAVING armed_workers > 0
ORDER BY armed_workers DESC, name;
