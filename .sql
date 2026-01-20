SELECT result
FROM (
    SELECT 
        Name || '(' || SUBSTR(Occupation, 1, 1) || ')' AS result,
        1 AS sort_order,
        Name AS sort_name
    FROM OCCUPATIONS

    UNION ALL

    SELECT 
        'There are a total of ' || COUNT(*) || ' ' || LOWER(Occupation) || 's.' AS result,
        2 AS sort_order,
        LOWER(Occupation) AS sort_name
    FROM OCCUPATIONS
    GROUP BY Occupation
) t
ORDER BY sort_order, sort_name;
