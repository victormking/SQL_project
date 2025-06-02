# 📊 Education Insights (SQL): Student Enrollment and Academic Performance Analysis

This project demonstrates proficiency in SQL by analyzing mock K–12 education data. We explore trends in enrollment, subject-level performance, and time-based test outcomes using only SQL (no R or Python). Queries are structured to simulate real-world use cases aligned with the responsibilities of a Junior Data Analyst.

---

## 🧠 Purpose

The goal is to use SQL to:
- Track enrollment patterns by grade
- Assess subject-level pass rates
- Identify high-performing students
- Analyze academic trends over time
- Extract insights to support educators and decision-makers

All queries were written and executed in **DB Browser for SQLite** using a relational database built from two CSV files.

---

## 📁 File Structure

| Folder | Contents |
|--------|----------|
| `data/` | `students.csv`, `scores.csv` — 201 students, 601 test scores |
| `queries/` | `portfolio_queries.sql` — 5 SQL queries executed in DB Browser |
| `results/` | Query result exports (CSV screenshots optional) |
| `README.md` | Documentation of project intent and queries |

---

## 🧾 Dataset Overview

**students.csv** (201 rows):  
- `student_id`, `name`, `gender`, `birthdate`, `grade_level`, `enrollment_date`, `school`

**scores.csv** (601 rows):  
- `student_id`, `subject`, `test_type`, `score`, `passed`, `test_date`, `teacher`

---
