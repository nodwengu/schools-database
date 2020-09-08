CREATE TABLE teacher_subject(
    teacher_id INT NOT NULL,
    subject_id INT NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teacher(id),
    FOREIGN KEY (subject_id) REFERENCES subject(id)
);

INSERT INTO teacher_subject(teacher_id, subject_id) VALUES(1, 2);
INSERT INTO teacher_subject(teacher_id, subject_id) VALUES(6, 2);
INSERT INTO teacher_subject(teacher_id, subject_id) VALUES(2, 3);
INSERT INTO teacher_subject(teacher_id, subject_id) VALUES(4, 4);
INSERT INTO teacher_subject(teacher_id, subject_id) VALUES(5, 5);
INSERT INTO teacher_subject(teacher_id, subject_id) VALUES(6, 6);
INSERT INTO teacher_subject(teacher_id, subject_id) VALUES(6, 7);
INSERT INTO teacher_subject(teacher_id, subject_id) VALUES(1, 7);
INSERT INTO teacher_subject(teacher_id, subject_id) VALUES(6, 8);
INSERT INTO teacher_subject(teacher_id, subject_id) VALUES(1, 8);


--SELECT *
--FROM teacher AS t
--JOIN teacher_subject AS ts
--ON t.id = ts.teacher_id
--JOIN subject AS s
--ON ts.subject_id = s.id
--WHERE s.name = 'Mathematics';
--
--SELECT s.name, t.first_name
--FROM subject AS s
--JOIN teacher_subject AS ts
--ON s.id = ts.subject_id
--JOIN teacher AS t
--ON ts.teacher_id = t.id
--WHERE t.id = 1;
--
--
--SELECT s.name, t.first_name
--FROM subject AS s
--JOIN teacher_subject AS ts
--ON s.id = ts.subject_id
--JOIN teacher AS t
--ON ts.teacher_id = t.id
--WHERE t.first_name = 'Lindani';




