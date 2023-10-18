-- ROLLBACK

BEGIN;
 UPDATE students 
 SET name_student = 'Daniel Cortés'
 WHERE id_student=5;
ROLLBACK;

BEGIN;
 UPDATE students
 SET name_student = 'Serena Williams'
 WHERE id_student=4;
COMMIT;