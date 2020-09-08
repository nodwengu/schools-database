CREATE OR REPLACE FUNCTION find_teachers_for_subject(theSubject TEXT)
   RETURNS table(
      first_name TEXT,
      last_name TEXT,
      name TEXT
   ) AS
$$
DECLARE

BEGIN
   RETURN QUERY
      SELECT DISTINCT t.first_name, t.last_name, s.name
      FROM teacher t
      JOIN teacher_subject ts
      ON t.id = ts.teacher_id
      JOIN subject s
      ON ts.subject_id = s.id
      WHERE s.name = theSubject;
END;
$$
Language plpgsql;