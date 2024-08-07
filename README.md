# Introduction
This repository contains a comprehensive SQL-based analysis of 🍿Netflix's dataset. The primary goal of this analysis is to extract meaningful insights from the data, focusing on various aspects such as 🎬movie genres, 🔎director contributions, and 🧮 content distribution. By leveraging advanced SQL techniques, this analysis aims to uncover patterns 📈 and trends that can provide valuable insights for content strategy, viewer preferences, and market trends 📈.
## The questions I wanted to answer through my SQL queries were:
- For each director count the no. of movies and tv shows created by them in      
separate columns for directors who have created tv shows and movies both. 
- Which country has highest number of comedy movies 
- For each year (as per date added to netflix), which director has maximum number 
of movies released 
- What is average duration of movies in each genre
- Find the list of directors who have created horror and comedy movies both. Display 
director names along with number of comedy and horror movies directed by them. 
# Tools I Used
- **SQL:** The backbone of my analysis, allowing me to query the database and unearth critical insights.
- **PostgreSQL:** The chosen database management system, ideal for handling the job posting data.
- **Visual Studio Code:** My go-to for database management and executing SQL queries.
- **Git & GitHub:** Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking.
# The Analysis
### 1. Director works
🔎Identify the number of TV shows and movies directed by each director and 🧮 Count the total number of movies and TV shows.
```sql
select 
    director,
    count(type) as type_count,
    count(DISTINCT case when type = 'TV Show' then show_id end)as no_of_TvShow,
    count(DISTINCT case when  type ='Movie'  then show_id end)as no_of_Movies
from 
    netflix
group by 
        director
HAVING 
    count(DISTINCT case when type = 'TV Show' then show_id end)>0 
    and count(DISTINCT case when  type ='Movie'  then show_id end)>0;
```
**Insights**
![number of movies and Tv shows](Assets\no._of_movie_and_tv_show.png)
*ChatGPT generated this graph from my SQL query results*

Average number of contents per director:

- Movies: 2.06
- TV Shows: 1.02

Directors with the most movies:
| Director           |    No_of_Movies    |
|--------------------|-------------------:|
| Marcus Raboy       |                  15|
| Quentin Tarantino  |                   7|
| Ryan Polito        |                   7|
| Michael Simon      |                   4|
| Oliver Stone       |                   4|

Directors with the most TV shows:
| Director           |    No_of_Tvshows   |
|--------------------|-------------------:|
| Stan Lathan        |                   2|
| Alessandro Angulo  |                   1|
| BB Sasore          |                   1|
| Billy Corben       |                   1|
| Brad Anderson      |                   1|

**Some key observations:**

- Marcus Raboy is the most prolific director in this dataset, with 15 movies and 1 TV show.
- Quentin Tarantino and Ryan Polito tie for second place in total content, each with 7 movies and 1 TV show.
- Most directors in this dataset seem to specialize more in either movies or TV shows, rather than having a balanced output of both.
- The average director in this dataset has created about 2 movies and 1 TV show for Netflix.

### 2. Highest number of Comedy Movie
To determine which country has produced the highest number📈 of comedy movies available on 🍿Netflix, we can use the following SQL query. This query will 🧮count the number of comedy movies per country and then identify the country with the highest count:
```sql
select country,
count(DISTINCT show_id) as no_of_movies
from netflix
where listed_in = 'Comedies'
GROUP BY
country
order by no_of_movies DESC
limit 1;
```
### 3. Identifying the Director with the Most Movies Released Each Year
To determine which director has released the most 🎬movies in each year based on the date added to 🍿Netflix, we can use the following SQL query. This query groups movies by year and director, 🧮counts the number of movies for each director per year, and then selects the director with the highest count for each year📈:
```sql
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
```
**Insights**
- Total number of unique directors: 50
- Total number of movies: 112
- Year with the most movies added: 2014
- Top 10 directors by movie count:
* Rajiv Chilaka: 16 movies
* Raúl Campos, Jan Suter: 12 movies
* Youssef Chahine: 11 movies
* Jay Chapman: 8 movies
* Martin Scorsese: 7 movies
* Cathy Garcia-Molina: 7 movies
* Jay Karas: 7 movies
* Luc Vinciguerra: 2 movies
* Wyatt Cenac: 1 movie
* Luis Lopez, Clay Tweel: 1 movie
![top 10 directors](Assets\top_10_directors.png)
*ChatGPT generated this graph from my SQL query results*

- Movies added per year:
* 2008: 1
* 2009: 2
* 2010: 1
* 2011: 13
* 2012: 3
* 2013: 6
* 2014: 18
* 2015: 4
* 2016: 4
* 2017: 7
* 2018: 12
* 2019: 14
* 2020: 11
* 2021: 16

![number of movies per year](Assets\no._of_movies_per_year.png)
*ChatGPT generated this graph from my SQL query results*

### 4. Average duration of movies in each genre
To determine the average duration of movies for 🎭 each genre, we can use the following SQL query. This query will group movies by genre and 🧮 calculate the average duration for each group:
```sql
SELECT
    round(AVG(CAST(REPLACE(duration, ' min', '') AS INTEGER)),2) AS avg_duration,
    listed_in,
    COUNT(show_id) AS movie_count
FROM
    netflix
WHERE
    type = 'Movie'
GROUP BY
    listed_in,
    type
    ORDER BY
    avg_duration DESC ;
```

| Listed_in                                       |    Movie_count     |Avg_Duration      |
|-------------------------------------------------|--------------------|------------------|
|Dramas, International Movies                     |                 362|             112.5|
|Documentaries                                    |                 359|             80.86|
|Stand-Up Comedy                                  |                 334|             66.91|
|Comedies, Dramas, International Movies           |                 274|            119.14|
|Dramas, Independent Movies, International Movies |                 252|            106.19|
|Children & Family Movies                         |                 215|             63.56|
|Children & Family Movies, Comedies               |                 201|             82.53|
|Documentaries, International Movies              |                 186|             79.76|
|Dramas, International Movies, Romantic Movies    |                 180|            118.97|
|Comedies, International Movies                   |                 176|            104.17|

![top 10 categories](Assets\top_10_categories.png)
*ChatGPT generated this graph from my SQL query results*

## 5. Identifying Directors Who Have Made Both Horror and Comedy Movies
To identify directors who have created both 😱 horror and 😂 comedy movies, we can use the following SQL query. This query will first filter the movies by genre and then find directors who have worked in both genres:

```sql
select 
director,
count(type) as type_count,
count(DISTINCT CASE when listed_in = 'Horror Movies' THEN show_id END) as no_of_horror_movie,
count(DISTINCT case when listed_in= 'Comedies' THEN show_id END) as no_of_comedy_movie
FROM
netflix
WHERE
type = 'Movie' and
listed_in IN ('Horror Movies','Comedies') and
director IS NOT NULL
GROUP BY
director
HAVING
count(DISTINCT CASE when listed_in = 'Horror Movies' THEN show_id END)>=0 and
count(DISTINCT case when listed_in= 'Comedies' THEN show_id END)>=0;
```
**Insights**
- There are nearly twice as many comedy movies (101) as horror movies (55) in this dataset.
- Wes Craven and Alex Merkin lead in horror movie direction with 2 movies each.
- Jon Lucas & Scott Moore, Jay Roach, and Dennis Dugan are the top comedy directors with 2 movies each.
- Most directors in the top 10 lists have directed only 1 movie in their respective genres.

![top 10 directors by number of horror movies](Assets\top_10_horror_movie.png)

![top 10 directors by number of comedy movies](Assets\top_10_comedy_movie.png)
*ChatGPT generated this graph from my SQL query results*

Total number of movies:

- Horror movies: 55
- Comedy movies: 101

# What I Learned
Throughout this adventure, I've turbocharged my SQL toolkit with some serious firepower:

### SQL Techniques Used
- **Self-Joins:** Used to compare rows within the same table for identifying directors with multi-genre contributions.
- **Conditional Aggregation:** Applied to count occurrences of specific genres.
- **Common Table Expressions (CTEs):** Utilized for breaking down complex queries into manageable parts.
- **INNER JOINs:** Implemented to combine related data from different sections of the dataset
- **Analytical Wizardry:**  Mastering real-world puzzles, transforming questions into actionable SQL insights.


# Conclusions
### INSIGHTS
**1. Director works**

Overall, the analysis provides insights into the output of directors on Netflix, highlighting the most prolific directors, average content creation, and the relationship between movies and TV shows. It shows that while some directors specialize in movies, others may focus on TV shows, and there is no strong correlation between the two types of content.

- Prolific Output:Marcus Raboy has the highest number of movies directed.
- Tied Rankings:Tarantino and Polito have the same number of projects, placing them second.
-  Specialization:Many directors focus on either movies or TV shows, rather than balancing both.
-  Average Output: On average, directors have created a modest number of movies and TV shows.

**2. Highest number of Comedy Movie**

based on the data provided, the United States is identified as the country with the most comedy movies available on Netflix, with a total of 84 comedy films.

**3. Identifying the Director with the Most Movies Released Each Year**

**(i). Total Number of Unique Directors:** 50

This means that there are 50 different directors who have contributed to the movies in the dataset. Each director is counted only once, regardless of how many movies they have directed.

**(ii). Total Number of Movies:** 112

This indicates that there are a total of 112 movies in the dataset. This number represents the entire collection of films directed by the 50 unique directors.

**(iii). Year with the Most Movies Added:** 2014

The year 2014 saw the highest number of movies added to the dataset. This could suggest that there was a significant increase in movie production or acquisition during that year, possibly due to various factors such as market demand, popular trends, or specific events in the film industry.

Overall, this data provides a comprehensive overview of the movie landscape in the dataset, highlighting the contributions of various directors, the total number of movies, and trends over the years. It can be useful for understanding the dynamics of movie production and the impact of specific directors in the industry.

**4. Average duration of movies in each genre**

In summary, the statement highlights the diversity in both the duration of movies and the number of movies available in different categories. The average values provide a general idea, but the range and standard deviation indicate that there is considerable variability, which is important for understanding the overall landscape of the dataset. This information can be useful for making decisions about content, marketing strategies, or understanding audience preferences.

**5. Identifying Directors Who Have Made Both Horror and Comedy Movies**

 Overall, these observations highlight the distribution of movies across genres, the leading directors in each genre, and the general trend of directors' output. The data suggests that while there are a few prolific directors in both comedy and horror, many directors have only made a single film in their respective genres, indicating a diverse range of contributions from various filmmakers.

# Closing Thoughts
This Netflix data analysis project has been an enriching experience, providing valuable insights into the content available on the platform. By diving deep into the dataset, I was able to uncover interesting patterns and trends related to genres, directors, and content distribution. This project not only helped in understanding the data better but also honed various SQL skills and techniques.
This project showcased the power of SQL in analyzing and deriving insights from large datasets. The ability to write complex queries, use advanced SQL functions, and efficiently manipulate data is invaluable for any data analyst. By exploring the Netflix dataset, i gained a better understanding of content trends and director contributions, which could be beneficial for strategic decision-making in the entertainment industry.