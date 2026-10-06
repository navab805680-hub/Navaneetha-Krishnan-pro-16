USE CollegeDB;

DROP PROCEDURE IF EXISTS DisplayNumbers;

DELIMITER $$

CREATE PROCEDURE DisplayNumbers()
BEGIN

    -- Declare counter variable

    -- Write a loop to display numbers from 1 to 10

END $$

DELIMITER ;

CALL DisplayNumbers();

CREATE OR REPLACE PROCEDURE insert_student(
    p_student_id     IN NUMBER,
    p_student_name   IN VARCHAR2,
    p_department_id  IN NUMBER
)
IS
BEGIN
    INSERT INTO Student(StudentID, StudentName, DepartmentID)
    VALUES (p_student_id, p_student_name, p_department_id);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully.');
END;
/

BEGIN
    insert_student(1005, 'Ravi', 101);
END;
/
