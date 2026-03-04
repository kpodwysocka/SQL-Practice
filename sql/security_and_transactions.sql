-- TCL 
BEGIN;

INSERT INTO customers VALUES (3, 'Kate', 'Paris');

ROLLBACK;

-- DCL 
CREATE USER analyst WITH PASSWORD 'password';
GRANT SELECT ON customers TO analyst;
