CREATE OR REPLACE FUNCTION create_subject(the_name TEXT)
    RETURNS BOOLEAN AS
$$
DECLARE
--Variable to be used in the function
total INT;

BEGIN
    -- run a query to check if the subject name exists
    SELECT INTO total COUNT(*)
    FROM subject
    WHERE LOWER(name) = LOWER(the_name);

    -- if total is 0 the subject doesn't exist
    if(total = 0) THEN
        -- then create the subject
        INSERT INTO subject(name) VALUES(the_name);
        -- and returns true if the subject was created already
        RETURN TRUE;
    ELSE
        -- returns false if the subject already exists
        RETURN FALSE;
    END IF;

END;
$$
Language plpgsql;