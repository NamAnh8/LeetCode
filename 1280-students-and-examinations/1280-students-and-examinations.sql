# Write your MySQL query statement below
SELECT s.student_id,s.student_name, sub.subject_name, IFNULL(COUNT(e.subject_name), 0) AS attended_exams FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e ON e.subject_name = sub.subject_name AND e.student_id = s.student_id
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id ASC, sub.subject_name ASC;

