CREATE OR REPLACE FUNCTION add_teacher(theFirstname TEXT, theLastname TEXT, theEmail TEXT)
    RETURNS BOOLEAN AS
$$
DECLARE
total INT;

BEGIN
    SELECT INTO total COUNT(*)
    FROM teacher
    WHERE LOWER(email) = LOWER(theEmail);

    if (total = 0) THEN
        INSERT INTO teacher(first_name, last_name, email)
        VALUES(theFirstname, theLastname, theEmail);

        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;
$$
Language plpgsql;