CREATE OR REPLACE FUNCTION link_teacher_to_subject(teacherId INT, subjectId INT)
    RETURNS BOOLEAN AS
$$
DECLARE
total INT;

BEGIN
   SELECT INTO total COUNT(*)
   FROM teacher AS t
   JOIN teacher_subject AS ts
   ON t.id = ts.teacher_id
   JOIN subject AS s
   ON ts.subject_id = s.id
   WHERE ts.teacher_id = teacherId AND ts.subject_id = subjectId;

   if (total = 0) THEN
      INSERT INTO teacher_subject(teacher_id, subject_id)
      VALUES(teacherId, subjectId);

      RETURN TRUE;
   ELSE
      RETURN FALSE;
   END IF;
END;
$$
Language plpgsql;

--SELECT *
--FROM teacher AS t
--JOIN teacher_subject AS ts
--ON t.id = ts.teacher_id
--JOIN subject AS s
--ON ts.subject_id = s.id
--WHERE ts.teacher_id = 1 AND ts.subject_id = 2;
