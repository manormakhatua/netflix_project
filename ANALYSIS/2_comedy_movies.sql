/*Which country has highest number of comedy movies */

select country,
count(DISTINCT show_id) as no_of_movies
from netflix
where listed_in = 'Comedies'
GROUP BY
country
order by no_of_movies DESC
limit 1;

/*
[
  {
    "country": "United States",
    "no_of_movies": "84"
  }
]
*/