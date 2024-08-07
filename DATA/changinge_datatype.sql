
ALTER TABLE netflix
  ALTER COLUMN release_year TYPE TEXT;

ALTER TABLE netflix
  ALTER COLUMN release_year TYPE INTEGER USING release_year::integer;





