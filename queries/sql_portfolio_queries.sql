-- Query 1: Student Count by Grade Level
SELECT grade_level, COUNT(*) AS student_count
FROM students
GROUP BY grade_level
ORDER BY grade_level;

-- Query 2: Pass Rate by Grade Level
SELECT 
    s.grade_level,
    ROUND(AVG(CAST(sc.passed AS FLOAT)) * 100, 1) AS pass_rate_percentage
FROM 
    students s
JOIN 
    scores sc ON s.student_id = sc.student_id
GROUP BY 
    s.grade_level
ORDER BY 
    s.grade_level;

-- Query 3: Top Math Performers
SELECT 
    s.student_id,
    s.name,
    s.grade_level,
    sc.subject,
    sc.score
FROM 
    students s
JOIN 
    scores sc ON s.student_id = sc.student_id
WHERE 
    sc.subject = 'Math' AND sc.score > 90
ORDER BY 
    sc.score DESC;

-- Query 4: Monthly Average Scores by Subject
SELECT 
    strftime('%Y-%m', test_date) AS month,
    subject,
    ROUND(AVG(score), 1) AS avg_score
FROM 
    scores
GROUP BY 
    month, subject
ORDER BY 
    month ASC, subject ASC;

-- Query 5: Top Score per Student (All Subjects)
SELECT 
    s.student_id,
    s.name,
    MAX(sc.score) AS top_score
FROM 
    students s
JOIN 
    scores sc ON s.student_id = sc.student_id
GROUP BY 
    s.student_id, s.name
ORDER BY 
    top_score DESC;
