/* SQL queries for task 3          */
/* Jakob Götberg, IV1351, KTH 2022 */

-- 1)
    -- Total Amount of Lessons
SELECT EXTRACT(MONTH FROM starting_time) AS Month, COUNT(*) AS Lessons
FROM event
WHERE EXTRACT(YEAR FROM starting_time) = '2022' 
GROUP BY Month;

    -- Specified by Lesson Type
SELECT EXTRACT(MONTH FROM starting_time) AS Month, event_type AS Lesson_type, 
COUNT(*) AS Lessons
FROM event
WHERE EXTRACT(YEAR FROM starting_time) = '2022'
GROUP BY Month, Lesson_type;


-- 2)
    -- Average lessons per month over a year
SELECT COUNT(*)/12 AS average_lessons_month FROM event
WHERE EXTRACT(YEAR FROM starting_time) = '2022';

-- 3) 
    -- List all instructors who has given more than a specific number of lessons during the current month
SELECT inst_uname AS instructor, COUNT(*) AS Lessons
FROM event
WHERE (EXTRACT(YEAR FROM starting_time) = '2022' AND 
EXTRACT(MONTH FROM starting_time) = EXTRACT(MONTH FROM CURRENT_DATE))
GROUP BY inst_uname HAVING COUNT(*) > 1
ORDER BY Lessons DESC;

-- 4)
    -- List all ensembles held during the next week, sorted by music genre and weekday

SELECT to_char(E.starting_time, 'Day') AS Day, Ens.genre AS genre, 
CASE
    WHEN COUNT(S.event_id) = Ens.participant_max THEN 'No more seats'
    WHEN COUNT(S.event_id) = Ens.participant_max - 1 THEN 'One seat left'
    WHEN COUNT(S.event_id) = Ens.participant_max - 2 THEN 'Two seats left'
    ELSE 'Several seats left' 
END AS seats_left
FROM event AS E, student_schedule_event AS S, ensemble AS Ens
WHERE (E.event_type = 3 AND E.event_id = S.event_id AND E.event_id = Ens.event_id AND
EXTRACT(WEEK FROM E.starting_time) = EXTRACT(WEEK FROM CURRENT_DATE))
GROUP BY E.starting_time, genre, Ens.participant_max
ORDER BY Day;
