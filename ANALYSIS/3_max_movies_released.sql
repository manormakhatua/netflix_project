/*
For each year (as per date added to netflix), which director has maximum number 
of movies released 
*/

 WITH Yearly_Director_Counts AS (
    SELECT
        EXTRACT(year FROM TO_DATE(date_added, 'FMMonth DD, YYYY')) AS year_added,
        director,
        COUNT(show_id) AS movie_count
    FROM
        netflix
    WHERE
        type = 'Movie' and 
        director is not NULL
    GROUP BY
        EXTRACT(year FROM TO_DATE(date_added, 'FMMonth DD, YYYY')),
        director
),
Ranked_Directors AS (
    SELECT
        year_added,
        director,
        movie_count,
        RANK() OVER (PARTITION BY year_added ORDER BY movie_count DESC) AS rank
    FROM
        Yearly_Director_Counts
)
SELECT
    year_added,
    director,
    movie_count
FROM
    Ranked_Directors
WHERE
    rank = 1;


/* ALTERNATIVE WAY  */

    WITH Yearly_Director_Counts AS (
    SELECT
        EXTRACT(year FROM TO_DATE(date_added, 'FMMonth DD, YYYY')) AS year_added,
        director,
        COUNT(show_id) AS movie_count
    FROM
        netflix
    WHERE
        type = 'Movie' and 
        director is not NULL
    GROUP BY
        EXTRACT(year FROM TO_DATE(date_added, 'FMMonth DD, YYYY')),
        director
),
Max_Movie_Counts AS (
    SELECT
        year_added,
        MAX(movie_count) AS max_movie_count
    FROM
        Yearly_Director_Counts
    GROUP BY
        year_added
)
SELECT
    ydc.year_added,
    ydc.director,
    ydc.movie_count
FROM
    Yearly_Director_Counts ydc
JOIN
    Max_Movie_Counts mmc
ON
    ydc.year_added = mmc.year_added
    AND ydc.movie_count = mmc.max_movie_count
ORDER BY
    ydc.year_added;



/*
[
  {
    "year_added": "2008",
    "director": "Sorin Dan Mihalcescu",
    "movie_count": "1"
  },
  {
    "year_added": "2009",
    "director": "Ole Bornedal",
    "movie_count": "1"
  },
  {
    "year_added": "2009",
    "director": "Joe Dante",
    "movie_count": "1"
  },
  {
    "year_added": "2010",
    "director": "Jim Monaco",
    "movie_count": "1"
  },
  {
    "year_added": "2011",
    "director": "Rob LaDuca, Robert C. Ramirez",
    "movie_count": "1"
  },
  {
    "year_added": "2011",
    "director": "Larry Elikann",
    "movie_count": "1"
  },
  {
    "year_added": "2011",
    "director": "Icíar Bollaín",
    "movie_count": "1"
  },
  {
    "year_added": "2011",
    "director": "Roger Young",
    "movie_count": "1"
  },
  {
    "year_added": "2011",
    "director": "Arthur Allan Seidelman",
    "movie_count": "1"
  },
  {
    "year_added": "2011",
    "director": "Robert Markowitz",
    "movie_count": "1"
  },
  {
    "year_added": "2011",
    "director": "Richard Michaels",
    "movie_count": "1"
  },
  {
    "year_added": "2011",
    "director": "Linda Otto",
    "movie_count": "1"
  },
  {
    "year_added": "2011",
    "director": "Buzz Kulik",
    "movie_count": "1"
  },
  {
    "year_added": "2011",
    "director": "Joel Oliansky",
    "movie_count": "1"
  },
  {
    "year_added": "2011",
    "director": "Eric Laneuville",
    "movie_count": "1"
  },
  {
    "year_added": "2011",
    "director": "John Herzfeld",
    "movie_count": "1"
  },
  {
    "year_added": "2011",
    "director": "Roy Campanella II",
    "movie_count": "1"
  },
  {
    "year_added": "2012",
    "director": "Tim Johnson",
    "movie_count": "1"
  },
  {
    "year_added": "2012",
    "director": "Matt Piedmont",
    "movie_count": "1"
  },
  {
    "year_added": "2012",
    "director": "Constance Marks",
    "movie_count": "1"
  },
  {
    "year_added": "2013",
    "director": "Josh Greenbaum",
    "movie_count": "1"
  },
  {
    "year_added": "2013",
    "director": "Jay Chapman",
    "movie_count": "1"
  },
  {
    "year_added": "2013",
    "director": "Will Lovelace, Dylan Southern",
    "movie_count": "1"
  },
  {
    "year_added": "2013",
    "director": "Henry Sarwer-Foner",
    "movie_count": "1"
  },
  {
    "year_added": "2013",
    "director": "Jason Moore",
    "movie_count": "1"
  },
  {
    "year_added": "2013",
    "director": "Dave Higby",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "James Yukich",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Luis Lopez, Clay Tweel",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Jay Karas",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Robert Nixon, Fisher Stevens",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Paul Reubens, Wayne Orr",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Jehane Noujaim",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Orlando von Einsiedel",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Peggy Holmes",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Lance Bangs",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Leo Riley, Eric Radomski",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Christopher Smith",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Jayson Thiessen, Ishi Rudell",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Wyatt Cenac",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Katy Chevigny, Ross Kauffman",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Werner Herzog",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Greg Whiteley",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Chapman Way, Maclain Way",
    "movie_count": "1"
  },
  {
    "year_added": "2014",
    "director": "Leo Riley",
    "movie_count": "1"
  },
  {
    "year_added": "2015",
    "director": "Luc Vinciguerra",
    "movie_count": "2"
  },
  {
    "year_added": "2015",
    "director": "Jay Karas",
    "movie_count": "2"
  },
  {
    "year_added": "2016",
    "director": "Jay Karas",
    "movie_count": "4"
  },
  {
    "year_added": "2017",
    "director": "Jay Chapman",
    "movie_count": "7"
  },
  {
    "year_added": "2018",
    "director": "Raúl Campos, Jan Suter",
    "movie_count": "12"
  },
  {
    "year_added": "2019",
    "director": "Cathy Garcia-Molina",
    "movie_count": "7"
  },
  {
    "year_added": "2019",
    "director": "Martin Scorsese",
    "movie_count": "7"
  },
  {
    "year_added": "2020",
    "director": "Youssef Chahine",
    "movie_count": "11"
  },
  {
    "year_added": "2021",
    "director": "Rajiv Chilaka",
    "movie_count": "16"
  }
]
*/