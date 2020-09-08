CREATE OR REPLACE FUNCTION find_subjects()
    returns table (
        id INT,
        name TEXT
    ) AS
$$
BEGIN
    RETURN QUERY
        SELECT "subject".id, "subject".name
        FROM subject;
END;
$$
Language plpgsql;