CREATE OR REPLACE FUNCTION find_teachers_teaching_multiple_subjects()
      RETURNS table(
         first_name TEXT,
         last_name TEXT
      ) AS
$$
DECLARE

BEGIN
   RETURN QUERY
      SELECT t.first_name, t.last_name
      FROM teacher AS t
      WHERE t.id IN (
      SELECT teacher_id
      FROM teacher_subject AS ts
      GROUP BY ts.teacher_id
      HAVING COUNT(*) > 1
      );
END;
$$
Language plpgsql;