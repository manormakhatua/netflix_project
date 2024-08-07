COPY netflix (show_id,"type",title,director,"cast",country,date_added,release_year,rating,duration,listed_in,"description")
FROM 'C:\netflix_project\netflix.csv'
DELIMITER ','
CSV HEADER;
