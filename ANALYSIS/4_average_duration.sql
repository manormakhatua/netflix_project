/*
What is average duration of movies in each genre 
*/

SELECT
      round(avg(cast(split_part(duration,' ',1) as integer)),2) as avg_duration,
      listed_in,
      count(show_id)as movie_count
FROM
    netflix
WHERE
type = 'Movie' 
group BY
listed_in,
type
order BY
avg_duration
DESC;

--ALTERNATIVE WAY 

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

/*
[
  {
    "avg_duration": "173.00",
    "listed_in": "Classic Movies, Music & Musicals",
    "movie_count": "1"
  },
  {
    "avg_duration": "172.00",
    "listed_in": "Action & Adventure, Cult Movies, Dramas",
    "movie_count": "1"
  },
  {
    "avg_duration": "166.00",
    "listed_in": "Action & Adventure, Classic Movies, International Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "158.00",
    "listed_in": "Cult Movies, Dramas, Thrillers",
    "movie_count": "1"
  },
  {
    "avg_duration": "153.67",
    "listed_in": "Classic Movies, Dramas, Romantic Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "148.00",
    "listed_in": "Action & Adventure, Sci-Fi & Fantasy, Thrillers",
    "movie_count": "1"
  },
  {
    "avg_duration": "145.50",
    "listed_in": "Classic Movies, Cult Movies, Dramas",
    "movie_count": "2"
  },
  {
    "avg_duration": "145.00",
    "listed_in": "Classic Movies, Dramas, Music & Musicals",
    "movie_count": "2"
  },
  {
    "avg_duration": "144.67",
    "listed_in": "Action & Adventure, Classic Movies, Dramas",
    "movie_count": "9"
  },
  {
    "avg_duration": "138.55",
    "listed_in": "Action & Adventure, International Movies, Music & Musicals",
    "movie_count": "11"
  },
  {
    "avg_duration": "137.00",
    "listed_in": "Classic Movies, Horror Movies, Thrillers",
    "movie_count": "1"
  },
  {
    "avg_duration": "135.56",
    "listed_in": "Dramas, International Movies, Music & Musicals",
    "movie_count": "57"
  },
  {
    "avg_duration": "134.00",
    "listed_in": "Cult Movies, Dramas, International Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "133.63",
    "listed_in": "Action & Adventure, Comedies, Dramas",
    "movie_count": "27"
  },
  {
    "avg_duration": "133.50",
    "listed_in": "Classic Movies, Dramas, Sports Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "133.00",
    "listed_in": "International Movies, Music & Musicals, Romantic Movies",
    "movie_count": "6"
  },
  {
    "avg_duration": "132.64",
    "listed_in": "Classic Movies, Dramas",
    "movie_count": "11"
  },
  {
    "avg_duration": "132.00",
    "listed_in": "Comedies, LGBTQ Movies, Music & Musicals",
    "movie_count": "1"
  },
  {
    "avg_duration": "131.92",
    "listed_in": "Action & Adventure, Dramas, International Movies",
    "movie_count": "132"
  },
  {
    "avg_duration": "131.69",
    "listed_in": "Classic Movies, Dramas, International Movies",
    "movie_count": "16"
  },
  {
    "avg_duration": "129.67",
    "listed_in": "Comedies, International Movies, Sci-Fi & Fantasy",
    "movie_count": "6"
  },
  {
    "avg_duration": "129.25",
    "listed_in": "Action & Adventure, Classic Movies, Comedies",
    "movie_count": "4"
  },
  {
    "avg_duration": "128.00",
    "listed_in": "Classic Movies, Thrillers",
    "movie_count": "1"
  },
  {
    "avg_duration": "127.33",
    "listed_in": "Classic Movies, Comedies, International Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "127.05",
    "listed_in": "Comedies, International Movies, Music & Musicals",
    "movie_count": "55"
  },
  {
    "avg_duration": "127.00",
    "listed_in": "Action & Adventure, Sci-Fi & Fantasy, Sports Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "126.50",
    "listed_in": "International Movies, Romantic Movies, Thrillers",
    "movie_count": "2"
  },
  {
    "avg_duration": "126.00",
    "listed_in": "Classic Movies, Dramas, LGBTQ Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "125.83",
    "listed_in": "Action & Adventure, Children & Family Movies, Sci-Fi & Fantasy",
    "movie_count": "6"
  },
  {
    "avg_duration": "124.92",
    "listed_in": "Dramas, Faith & Spirituality, International Movies",
    "movie_count": "12"
  },
  {
    "avg_duration": "122.60",
    "listed_in": "Action & Adventure, Classic Movies",
    "movie_count": "5"
  },
  {
    "avg_duration": "122.54",
    "listed_in": "Dramas, International Movies, Sci-Fi & Fantasy",
    "movie_count": "13"
  },
  {
    "avg_duration": "122.25",
    "listed_in": "Action & Adventure, Children & Family Movies, Classic Movies",
    "movie_count": "4"
  },
  {
    "avg_duration": "122.00",
    "listed_in": "Children & Family Movies, Classic Movies, Comedies",
    "movie_count": "3"
  },
  {
    "avg_duration": "122.00",
    "listed_in": "Action & Adventure, Comedies, Music & Musicals",
    "movie_count": "1"
  },
  {
    "avg_duration": "121.00",
    "listed_in": "Classic Movies, Comedies, Sports Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "121.00",
    "listed_in": "Anime Features, International Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "120.40",
    "listed_in": "Action & Adventure, Horror Movies, International Movies",
    "movie_count": "5"
  },
  {
    "avg_duration": "120.00",
    "listed_in": "Action & Adventure, Romantic Movies, Sci-Fi & Fantasy",
    "movie_count": "1"
  },
  {
    "avg_duration": "120.00",
    "listed_in": "Dramas, Music & Musicals, Romantic Movies",
    "movie_count": "5"
  },
  {
    "avg_duration": "120.00",
    "listed_in": "Dramas, Horror Movies, Sci-Fi & Fantasy",
    "movie_count": "1"
  },
  {
    "avg_duration": "119.94",
    "listed_in": "Dramas, Faith & Spirituality",
    "movie_count": "18"
  },
  {
    "avg_duration": "119.75",
    "listed_in": "Action & Adventure, Thrillers",
    "movie_count": "4"
  },
  {
    "avg_duration": "119.50",
    "listed_in": "Action & Adventure, Anime Features, Classic Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "119.25",
    "listed_in": "Classic Movies, Comedies, Dramas",
    "movie_count": "4"
  },
  {
    "avg_duration": "119.24",
    "listed_in": "Dramas, International Movies, Sports Movies",
    "movie_count": "25"
  },
  {
    "avg_duration": "119.14",
    "listed_in": "Comedies, Dramas, International Movies",
    "movie_count": "274"
  },
  {
    "avg_duration": "119.00",
    "listed_in": "Horror Movies, Romantic Movies, Sci-Fi & Fantasy",
    "movie_count": "1"
  },
  {
    "avg_duration": "118.97",
    "listed_in": "Dramas, International Movies, Romantic Movies",
    "movie_count": "180"
  },
  {
    "avg_duration": "118.00",
    "listed_in": "International Movies, Music & Musicals, Thrillers",
    "movie_count": "3"
  },
  {
    "avg_duration": "118.00",
    "listed_in": "Children & Family Movies, Dramas, Music & Musicals",
    "movie_count": "2"
  },
  {
    "avg_duration": "118.00",
    "listed_in": "Comedies, LGBTQ Movies, Thrillers",
    "movie_count": "1"
  },
  {
    "avg_duration": "117.25",
    "listed_in": "Action & Adventure, Comedies, Cult Movies",
    "movie_count": "4"
  },
  {
    "avg_duration": "116.60",
    "listed_in": "Action & Adventure, Classic Movies, Cult Movies",
    "movie_count": "5"
  },
  {
    "avg_duration": "116.13",
    "listed_in": "Dramas, International Movies, Thrillers",
    "movie_count": "134"
  },
  {
    "avg_duration": "116.00",
    "listed_in": "Dramas, Horror Movies, Thrillers",
    "movie_count": "1"
  },
  {
    "avg_duration": "116.00",
    "listed_in": "Dramas, Horror Movies, Music & Musicals",
    "movie_count": "1"
  },
  {
    "avg_duration": "116.00",
    "listed_in": "Action & Adventure, Dramas, Independent Movies",
    "movie_count": "12"
  },
  {
    "avg_duration": "115.67",
    "listed_in": "Classic Movies, Dramas, Independent Movies",
    "movie_count": "9"
  },
  {
    "avg_duration": "115.50",
    "listed_in": "Action & Adventure, International Movies, Sports Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "115.40",
    "listed_in": "Action & Adventure, Cult Movies, International Movies",
    "movie_count": "5"
  },
  {
    "avg_duration": "114.88",
    "listed_in": "Action & Adventure, Dramas",
    "movie_count": "34"
  },
  {
    "avg_duration": "114.60",
    "listed_in": "Comedies, International Movies, Thrillers",
    "movie_count": "5"
  },
  {
    "avg_duration": "114.39",
    "listed_in": "International Movies, Romantic Movies",
    "movie_count": "18"
  },
  {
    "avg_duration": "114.25",
    "listed_in": "Action & Adventure, International Movies, Sci-Fi & Fantasy",
    "movie_count": "16"
  },
  {
    "avg_duration": "114.00",
    "listed_in": "Comedies, Cult Movies, Sports Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "114.00",
    "listed_in": "Action & Adventure, Romantic Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "114.00",
    "listed_in": "Action & Adventure, Cult Movies, Sci-Fi & Fantasy",
    "movie_count": "3"
  },
  {
    "avg_duration": "114.00",
    "listed_in": "Action & Adventure, Cult Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "114.00",
    "listed_in": "Action & Adventure, Children & Family Movies, Dramas",
    "movie_count": "3"
  },
  {
    "avg_duration": "113.83",
    "listed_in": "Action & Adventure, International Movies, Romantic Movies",
    "movie_count": "6"
  },
  {
    "avg_duration": "113.66",
    "listed_in": "Action & Adventure, International Movies",
    "movie_count": "101"
  },
  {
    "avg_duration": "113.42",
    "listed_in": "Dramas, International Movies, LGBTQ Movies",
    "movie_count": "12"
  },
  {
    "avg_duration": "112.98",
    "listed_in": "Horror Movies, International Movies, Thrillers",
    "movie_count": "45"
  },
  {
    "avg_duration": "112.50",
    "listed_in": "Classic Movies, Comedies, Music & Musicals",
    "movie_count": "2"
  },
  {
    "avg_duration": "112.50",
    "listed_in": "Action & Adventure, Dramas, Faith & Spirituality",
    "movie_count": "2"
  },
  {
    "avg_duration": "112.50",
    "listed_in": "Dramas, International Movies",
    "movie_count": "362"
  },
  {
    "avg_duration": "112.33",
    "listed_in": "Comedies, Cult Movies, Dramas",
    "movie_count": "6"
  },
  {
    "avg_duration": "112.00",
    "listed_in": "Action & Adventure, Comedies, International Movies",
    "movie_count": "70"
  },
  {
    "avg_duration": "112.00",
    "listed_in": "Classic Movies, Independent Movies, Thrillers",
    "movie_count": "1"
  },
  {
    "avg_duration": "111.51",
    "listed_in": "Comedies, International Movies, Romantic Movies",
    "movie_count": "152"
  },
  {
    "avg_duration": "111.50",
    "listed_in": "Horror Movies, International Movies, Romantic Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "111.26",
    "listed_in": "Action & Adventure, Sci-Fi & Fantasy",
    "movie_count": "62"
  },
  {
    "avg_duration": "111.20",
    "listed_in": "Action & Adventure, Dramas, Sci-Fi & Fantasy",
    "movie_count": "5"
  },
  {
    "avg_duration": "111.10",
    "listed_in": "Dramas, Romantic Movies",
    "movie_count": "52"
  },
  {
    "avg_duration": "110.57",
    "listed_in": "Dramas, Music & Musicals",
    "movie_count": "7"
  },
  {
    "avg_duration": "110.50",
    "listed_in": "Horror Movies, LGBTQ Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "110.50",
    "listed_in": "Action & Adventure, Sports Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "110.00",
    "listed_in": "Anime Features, Music & Musicals",
    "movie_count": "1"
  },
  {
    "avg_duration": "110.00",
    "listed_in": "Action & Adventure, Faith & Spirituality, Sci-Fi & Fantasy",
    "movie_count": "1"
  },
  {
    "avg_duration": "110.00",
    "listed_in": "Dramas, Faith & Spirituality, Romantic Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "110.00",
    "listed_in": "Dramas, Romantic Movies, Thrillers",
    "movie_count": "2"
  },
  {
    "avg_duration": "110.00",
    "listed_in": "Children & Family Movies, Classic Movies, Dramas",
    "movie_count": "1"
  },
  {
    "avg_duration": "110.00",
    "listed_in": "International Movies, LGBTQ Movies, Romantic Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "109.61",
    "listed_in": "Dramas, Thrillers",
    "movie_count": "82"
  },
  {
    "avg_duration": "109.40",
    "listed_in": "Dramas, Romantic Movies, Sci-Fi & Fantasy",
    "movie_count": "5"
  },
  {
    "avg_duration": "109.00",
    "listed_in": "Documentaries, Dramas",
    "movie_count": "1"
  },
  {
    "avg_duration": "109.00",
    "listed_in": "Action & Adventure, Dramas, Romantic Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "108.47",
    "listed_in": "Dramas, Sports Movies",
    "movie_count": "19"
  },
  {
    "avg_duration": "108.25",
    "listed_in": "International Movies, Sci-Fi & Fantasy",
    "movie_count": "4"
  },
  {
    "avg_duration": "108.00",
    "listed_in": "Comedies, Cult Movies, LGBTQ Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "108.00",
    "listed_in": "Action & Adventure, Dramas, Sports Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "108.00",
    "listed_in": "Action & Adventure, Comedies, Sports Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "107.78",
    "listed_in": "International Movies, Thrillers",
    "movie_count": "67"
  },
  {
    "avg_duration": "107.77",
    "listed_in": "Dramas",
    "movie_count": "138"
  },
  {
    "avg_duration": "107.58",
    "listed_in": "Sci-Fi & Fantasy, Thrillers",
    "movie_count": "12"
  },
  {
    "avg_duration": "106.67",
    "listed_in": "Anime Features, Children & Family Movies, International Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "106.32",
    "listed_in": "Comedies, Dramas, Romantic Movies",
    "movie_count": "19"
  },
  {
    "avg_duration": "106.27",
    "listed_in": "Children & Family Movies, Dramas, International Movies",
    "movie_count": "11"
  },
  {
    "avg_duration": "106.25",
    "listed_in": "Action & Adventure, Comedies, Sci-Fi & Fantasy",
    "movie_count": "8"
  },
  {
    "avg_duration": "106.19",
    "listed_in": "Dramas, Independent Movies, International Movies",
    "movie_count": "252"
  },
  {
    "avg_duration": "106.00",
    "listed_in": "Comedies, Romantic Movies, Sports Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "106.00",
    "listed_in": "Comedies, Cult Movies, Sci-Fi & Fantasy",
    "movie_count": "1"
  },
  {
    "avg_duration": "106.00",
    "listed_in": "Dramas, Faith & Spirituality, Sports Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "105.00",
    "listed_in": "Dramas, Faith & Spirituality, Independent Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "104.89",
    "listed_in": "Action & Adventure",
    "movie_count": "128"
  },
  {
    "avg_duration": "104.80",
    "listed_in": "Dramas, Sci-Fi & Fantasy, Thrillers",
    "movie_count": "5"
  },
  {
    "avg_duration": "104.75",
    "listed_in": "Comedies, Dramas, Music & Musicals",
    "movie_count": "4"
  },
  {
    "avg_duration": "104.52",
    "listed_in": "Comedies, Dramas",
    "movie_count": "29"
  },
  {
    "avg_duration": "104.50",
    "listed_in": "Dramas, LGBTQ Movies, Romantic Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "104.33",
    "listed_in": "Comedies, International Movies, Sports Movies",
    "movie_count": "6"
  },
  {
    "avg_duration": "104.17",
    "listed_in": "Comedies, International Movies",
    "movie_count": "176"
  },
  {
    "avg_duration": "104.09",
    "listed_in": "International Movies, Music & Musicals",
    "movie_count": "11"
  },
  {
    "avg_duration": "104.08",
    "listed_in": "Action & Adventure, Comedies",
    "movie_count": "51"
  },
  {
    "avg_duration": "104.00",
    "listed_in": "Comedies, Dramas, Faith & Spirituality",
    "movie_count": "2"
  },
  {
    "avg_duration": "103.00",
    "listed_in": "International Movies, Romantic Movies, Sci-Fi & Fantasy",
    "movie_count": "1"
  },
  {
    "avg_duration": "103.00",
    "listed_in": "Cult Movies, Dramas, Music & Musicals",
    "movie_count": "1"
  },
  {
    "avg_duration": "103.00",
    "listed_in": "Comedies, International Movies, LGBTQ Movies",
    "movie_count": "8"
  },
  {
    "avg_duration": "103.00",
    "listed_in": "Action & Adventure, Horror Movies",
    "movie_count": "6"
  },
  {
    "avg_duration": "102.90",
    "listed_in": "Dramas, Independent Movies",
    "movie_count": "100"
  },
  {
    "avg_duration": "102.67",
    "listed_in": "Independent Movies, Sci-Fi & Fantasy, Thrillers",
    "movie_count": "3"
  },
  {
    "avg_duration": "102.50",
    "listed_in": "Comedies, Faith & Spirituality, Romantic Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "102.33",
    "listed_in": "Comedies, Horror Movies, International Movies",
    "movie_count": "15"
  },
  {
    "avg_duration": "102.14",
    "listed_in": "Comedies, Independent Movies, International Movies",
    "movie_count": "22"
  },
  {
    "avg_duration": "102.00",
    "listed_in": "Action & Adventure, Anime Features, Sci-Fi & Fantasy",
    "movie_count": "4"
  },
  {
    "avg_duration": "102.00",
    "listed_in": "Horror Movies, International Movies",
    "movie_count": "57"
  },
  {
    "avg_duration": "101.78",
    "listed_in": "Children & Family Movies, Dramas, Sports Movies",
    "movie_count": "9"
  },
  {
    "avg_duration": "101.67",
    "listed_in": "Dramas, Sci-Fi & Fantasy",
    "movie_count": "6"
  },
  {
    "avg_duration": "101.63",
    "listed_in": "Children & Family Movies, Comedies, Dramas",
    "movie_count": "16"
  },
  {
    "avg_duration": "101.56",
    "listed_in": "Comedies, Romantic Movies",
    "movie_count": "80"
  },
  {
    "avg_duration": "101.33",
    "listed_in": "Comedies, Sci-Fi & Fantasy",
    "movie_count": "3"
  },
  {
    "avg_duration": "101.26",
    "listed_in": "Dramas, Independent Movies, Thrillers",
    "movie_count": "31"
  },
  {
    "avg_duration": "101.20",
    "listed_in": "Independent Movies, International Movies, Thrillers",
    "movie_count": "5"
  },
  {
    "avg_duration": "101.00",
    "listed_in": "Children & Family Movies, Dramas, Independent Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "101.00",
    "listed_in": "Classic Movies, Comedies, Cult Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "101.00",
    "listed_in": "Comedies, Horror Movies, Sci-Fi & Fantasy",
    "movie_count": "4"
  },
  {
    "avg_duration": "101.00",
    "listed_in": "Action & Adventure, Children & Family Movies, Cult Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "100.61",
    "listed_in": "Comedies, Dramas, Independent Movies",
    "movie_count": "116"
  },
  {
    "avg_duration": "100.50",
    "listed_in": "Dramas, Independent Movies, Sports Movies",
    "movie_count": "8"
  },
  {
    "avg_duration": "100.50",
    "listed_in": "Comedies, Dramas, LGBTQ Movies",
    "movie_count": "4"
  },
  {
    "avg_duration": "100.20",
    "listed_in": "Action & Adventure, Children & Family Movies, Comedies",
    "movie_count": "5"
  },
  {
    "avg_duration": "100.00",
    "listed_in": "Independent Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "100.00",
    "listed_in": "Children & Family Movies, Documentaries, Sports Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "99.95",
    "listed_in": "Thrillers",
    "movie_count": "65"
  },
  {
    "avg_duration": "99.86",
    "listed_in": "Dramas, LGBTQ Movies",
    "movie_count": "7"
  },
  {
    "avg_duration": "99.78",
    "listed_in": "International Movies, Sci-Fi & Fantasy, Thrillers",
    "movie_count": "9"
  },
  {
    "avg_duration": "99.00",
    "listed_in": "Horror Movies, International Movies, Sci-Fi & Fantasy",
    "movie_count": "1"
  },
  {
    "avg_duration": "99.00",
    "listed_in": "LGBTQ Movies, Thrillers",
    "movie_count": "1"
  },
  {
    "avg_duration": "99.00",
    "listed_in": "Action & Adventure, Horror Movies, Sci-Fi & Fantasy",
    "movie_count": "11"
  },
  {
    "avg_duration": "99.00",
    "listed_in": "Action & Adventure, Children & Family Movies, Independent Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "98.50",
    "listed_in": "Action & Adventure, Comedies, Romantic Movies",
    "movie_count": "4"
  },
  {
    "avg_duration": "98.00",
    "listed_in": "Cult Movies, Horror Movies, Thrillers",
    "movie_count": "1"
  },
  {
    "avg_duration": "98.00",
    "listed_in": "Children & Family Movies, Faith & Spirituality, Music & Musicals",
    "movie_count": "1"
  },
  {
    "avg_duration": "98.00",
    "listed_in": "Action & Adventure, Comedies, Horror Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "98.00",
    "listed_in": "Action & Adventure, Classic Movies, Sci-Fi & Fantasy",
    "movie_count": "1"
  },
  {
    "avg_duration": "97.50",
    "listed_in": "Action & Adventure, International Movies, Thrillers",
    "movie_count": "2"
  },
  {
    "avg_duration": "97.00",
    "listed_in": "Children & Family Movies, Dramas, Faith & Spirituality",
    "movie_count": "6"
  },
  {
    "avg_duration": "96.50",
    "listed_in": "Cult Movies, Horror Movies, Independent Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "96.36",
    "listed_in": "Independent Movies, Thrillers",
    "movie_count": "11"
  },
  {
    "avg_duration": "96.35",
    "listed_in": "Dramas, Independent Movies, LGBTQ Movies",
    "movie_count": "17"
  },
  {
    "avg_duration": "96.00",
    "listed_in": "Children & Family Movies, Comedies, Faith & Spirituality",
    "movie_count": "1"
  },
  {
    "avg_duration": "96.00",
    "listed_in": "Horror Movies, Sci-Fi & Fantasy",
    "movie_count": "4"
  },
  {
    "avg_duration": "96.00",
    "listed_in": "Action & Adventure, Anime Features, Horror Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "95.40",
    "listed_in": "Comedies, Horror Movies, Independent Movies",
    "movie_count": "5"
  },
  {
    "avg_duration": "95.39",
    "listed_in": "Horror Movies, Thrillers",
    "movie_count": "54"
  },
  {
    "avg_duration": "95.33",
    "listed_in": "Comedies, Faith & Spirituality, International Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "95.20",
    "listed_in": "Children & Family Movies, Comedies, International Movies",
    "movie_count": "5"
  },
  {
    "avg_duration": "95.00",
    "listed_in": "Comedies, Dramas, Sports Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "95.00",
    "listed_in": "Classic Movies, Comedies, Independent Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "95.00",
    "listed_in": "Sci-Fi & Fantasy",
    "movie_count": "1"
  },
  {
    "avg_duration": "95.00",
    "listed_in": "Classic Movies, Comedies, Romantic Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "94.80",
    "listed_in": "Action & Adventure, Independent Movies, Sci-Fi & Fantasy",
    "movie_count": "5"
  },
  {
    "avg_duration": "94.50",
    "listed_in": "Action & Adventure, Horror Movies, Thrillers",
    "movie_count": "2"
  },
  {
    "avg_duration": "94.43",
    "listed_in": "Action & Adventure, Independent Movies",
    "movie_count": "7"
  },
  {
    "avg_duration": "94.30",
    "listed_in": "Music & Musicals",
    "movie_count": "10"
  },
  {
    "avg_duration": "94.00",
    "listed_in": "Children & Family Movies, Comedies, Sports Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "94.00",
    "listed_in": "Comedies, Cult Movies, Music & Musicals",
    "movie_count": "2"
  },
  {
    "avg_duration": "94.00",
    "listed_in": "Children & Family Movies, Classic Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "93.63",
    "listed_in": "Comedies, Sports Movies",
    "movie_count": "8"
  },
  {
    "avg_duration": "93.50",
    "listed_in": "Comedies, Independent Movies, Thrillers",
    "movie_count": "2"
  },
  {
    "avg_duration": "93.43",
    "listed_in": "Dramas, Independent Movies, Sci-Fi & Fantasy",
    "movie_count": "7"
  },
  {
    "avg_duration": "93.38",
    "listed_in": "Children & Family Movies, Comedies, Romantic Movies",
    "movie_count": "8"
  },
  {
    "avg_duration": "93.04",
    "listed_in": "Dramas, Independent Movies, Romantic Movies",
    "movie_count": "24"
  },
  {
    "avg_duration": "93.00",
    "listed_in": "Comedies, Documentaries, International Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "92.58",
    "listed_in": "Comedies, Horror Movies",
    "movie_count": "12"
  },
  {
    "avg_duration": "92.43",
    "listed_in": "Comedies, Music & Musicals",
    "movie_count": "7"
  },
  {
    "avg_duration": "92.32",
    "listed_in": "Action & Adventure, Anime Features, International Movies",
    "movie_count": "38"
  },
  {
    "avg_duration": "92.00",
    "listed_in": "Action & Adventure, Horror Movies, Independent Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "92.00",
    "listed_in": "Action & Adventure, Documentaries, International Movies",
    "movie_count": "6"
  },
  {
    "avg_duration": "91.82",
    "listed_in": "Children & Family Movies, Comedies, Sci-Fi & Fantasy",
    "movie_count": "11"
  },
  {
    "avg_duration": "91.75",
    "listed_in": "Action & Adventure, Anime Features, Children & Family Movies",
    "movie_count": "4"
  },
  {
    "avg_duration": "91.71",
    "listed_in": "Horror Movies",
    "movie_count": "55"
  },
  {
    "avg_duration": "91.71",
    "listed_in": "Anime Features, Children & Family Movies",
    "movie_count": "7"
  },
  {
    "avg_duration": "91.67",
    "listed_in": "Horror Movies, Independent Movies, Sci-Fi & Fantasy",
    "movie_count": "3"
  },
  {
    "avg_duration": "91.50",
    "listed_in": "Classic Movies, Cult Movies, Horror Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "91.38",
    "listed_in": "Dramas, Independent Movies, Music & Musicals",
    "movie_count": "8"
  },
  {
    "avg_duration": "91.33",
    "listed_in": "Documentaries, Faith & Spirituality, International Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "91.17",
    "listed_in": "Comedies, Cult Movies",
    "movie_count": "12"
  },
  {
    "avg_duration": "91.11",
    "listed_in": "Horror Movies, Independent Movies",
    "movie_count": "18"
  },
  {
    "avg_duration": "91.11",
    "listed_in": "Children & Family Movies, Dramas, Romantic Movies",
    "movie_count": "9"
  },
  {
    "avg_duration": "91.00",
    "listed_in": "Anime Features, International Movies, Sci-Fi & Fantasy",
    "movie_count": "1"
  },
  {
    "avg_duration": "91.00",
    "listed_in": "Horror Movies, LGBTQ Movies, Music & Musicals",
    "movie_count": "1"
  },
  {
    "avg_duration": "91.00",
    "listed_in": "Comedies, Independent Movies, Romantic Movies",
    "movie_count": "8"
  },
  {
    "avg_duration": "91.00",
    "listed_in": "Action & Adventure, Comedies, Independent Movies",
    "movie_count": "7"
  },
  {
    "avg_duration": "91.00",
    "listed_in": "Anime Features, Romantic Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "90.80",
    "listed_in": "Cult Movies, Horror Movies",
    "movie_count": "5"
  },
  {
    "avg_duration": "90.24",
    "listed_in": "Comedies, Independent Movies",
    "movie_count": "25"
  },
  {
    "avg_duration": "90.23",
    "listed_in": "Comedies",
    "movie_count": "110"
  },
  {
    "avg_duration": "90.09",
    "listed_in": "Documentaries, Music & Musicals",
    "movie_count": "82"
  },
  {
    "avg_duration": "90.00",
    "listed_in": "Children & Family Movies, Comedies, Cult Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "90.00",
    "listed_in": "Horror Movies, Independent Movies, International Movies",
    "movie_count": "10"
  },
  {
    "avg_duration": "90.00",
    "listed_in": "Dramas, Romantic Movies, Sports Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "90.00",
    "listed_in": "Cult Movies, Independent Movies, Thrillers",
    "movie_count": "1"
  },
  {
    "avg_duration": "90.00",
    "listed_in": "Anime Features",
    "movie_count": "1"
  },
  {
    "avg_duration": "89.52",
    "listed_in": "Children & Family Movies, Dramas",
    "movie_count": "29"
  },
  {
    "avg_duration": "89.00",
    "listed_in": "Horror Movies, Independent Movies, Thrillers",
    "movie_count": "16"
  },
  {
    "avg_duration": "89.00",
    "listed_in": "Documentaries, LGBTQ Movies, Music & Musicals",
    "movie_count": "2"
  },
  {
    "avg_duration": "89.00",
    "listed_in": "Comedies, Music & Musicals, Romantic Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "88.33",
    "listed_in": "Action & Adventure, Independent Movies, International Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "88.17",
    "listed_in": "Horror Movies, Sci-Fi & Fantasy, Thrillers",
    "movie_count": "6"
  },
  {
    "avg_duration": "88.15",
    "listed_in": "Children & Family Movies, Music & Musicals",
    "movie_count": "20"
  },
  {
    "avg_duration": "88.00",
    "listed_in": "Comedies, LGBTQ Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "88.00",
    "listed_in": "Comedies, Cult Movies, Independent Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "87.50",
    "listed_in": "Action & Adventure, Children & Family Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "87.00",
    "listed_in": "Comedies, Cult Movies, Horror Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "87.00",
    "listed_in": "Sports Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "86.00",
    "listed_in": "Children & Family Movies, Faith & Spirituality",
    "movie_count": "1"
  },
  {
    "avg_duration": "85.83",
    "listed_in": "Documentaries, International Movies, Music & Musicals",
    "movie_count": "41"
  },
  {
    "avg_duration": "85.70",
    "listed_in": "Documentaries, International Movies, Sports Movies",
    "movie_count": "44"
  },
  {
    "avg_duration": "85.60",
    "listed_in": "Children & Family Movies, Sports Movies",
    "movie_count": "5"
  },
  {
    "avg_duration": "85.33",
    "listed_in": "Comedies, Cult Movies, International Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "84.80",
    "listed_in": "Comedies, Independent Movies, LGBTQ Movies",
    "movie_count": "5"
  },
  {
    "avg_duration": "84.50",
    "listed_in": "Documentaries, Dramas, International Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "84.20",
    "listed_in": "Documentaries, Sports Movies",
    "movie_count": "65"
  },
  {
    "avg_duration": "84.00",
    "listed_in": "Music & Musicals, Romantic Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "84.00",
    "listed_in": "Comedies, Independent Movies, Music & Musicals",
    "movie_count": "1"
  },
  {
    "avg_duration": "84.00",
    "listed_in": "Action & Adventure, Anime Features",
    "movie_count": "1"
  },
  {
    "avg_duration": "83.57",
    "listed_in": "Music & Musicals, Stand-Up Comedy",
    "movie_count": "7"
  },
  {
    "avg_duration": "83.33",
    "listed_in": "Romantic Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "82.53",
    "listed_in": "Children & Family Movies, Comedies",
    "movie_count": "201"
  },
  {
    "avg_duration": "81.78",
    "listed_in": "Children & Family Movies, Documentaries",
    "movie_count": "9"
  },
  {
    "avg_duration": "81.67",
    "listed_in": "Children & Family Movies, Comedies, Music & Musicals",
    "movie_count": "15"
  },
  {
    "avg_duration": "80.86",
    "listed_in": "Documentaries",
    "movie_count": "359"
  },
  {
    "avg_duration": "79.76",
    "listed_in": "Documentaries, International Movies",
    "movie_count": "186"
  },
  {
    "avg_duration": "79.50",
    "listed_in": "Documentaries, Stand-Up Comedy",
    "movie_count": "2"
  },
  {
    "avg_duration": "79.00",
    "listed_in": "Documentaries, Horror Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "79.00",
    "listed_in": "Documentaries, LGBTQ Movies",
    "movie_count": "22"
  },
  {
    "avg_duration": "78.57",
    "listed_in": "Documentaries, International Movies, LGBTQ Movies",
    "movie_count": "7"
  },
  {
    "avg_duration": "77.50",
    "listed_in": "Anime Features, Music & Musicals, Sci-Fi & Fantasy",
    "movie_count": "2"
  },
  {
    "avg_duration": "77.00",
    "listed_in": "Classic Movies, Cult Movies, Documentaries",
    "movie_count": "1"
  },
  {
    "avg_duration": "75.00",
    "listed_in": "Documentaries, Faith & Spirituality, Music & Musicals",
    "movie_count": "1"
  },
  {
    "avg_duration": "74.33",
    "listed_in": "Children & Family Movies, Documentaries, International Movies",
    "movie_count": "6"
  },
  {
    "avg_duration": "74.00",
    "listed_in": "Documentaries, LGBTQ Movies, Sports Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "66.91",
    "listed_in": "Stand-Up Comedy",
    "movie_count": "334"
  },
  {
    "avg_duration": "66.13",
    "listed_in": "Documentaries, Faith & Spirituality",
    "movie_count": "8"
  },
  {
    "avg_duration": "66.13",
    "listed_in": "Children & Family Movies, Sci-Fi & Fantasy",
    "movie_count": "8"
  },
  {
    "avg_duration": "63.56",
    "listed_in": "Children & Family Movies",
    "movie_count": "215"
  },
  {
    "avg_duration": "61.67",
    "listed_in": "International Movies",
    "movie_count": "3"
  },
  {
    "avg_duration": "60.00",
    "listed_in": "Anime Features, International Movies, Romantic Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "59.00",
    "listed_in": "Children & Family Movies, Independent Movies",
    "movie_count": "2"
  },
  {
    "avg_duration": "57.00",
    "listed_in": "Comedies, Documentaries",
    "movie_count": "2"
  },
  {
    "avg_duration": "53.00",
    "listed_in": "International Movies, Sports Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "49.18",
    "listed_in": "Classic Movies, Documentaries",
    "movie_count": "11"
  },
  {
    "avg_duration": "46.00",
    "listed_in": "Children & Family Movies, Comedies, LGBTQ Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "45.48",
    "listed_in": "Movies",
    "movie_count": "57"
  },
  {
    "avg_duration": "40.00",
    "listed_in": "Action & Adventure, Documentaries, Sports Movies",
    "movie_count": "1"
  },
  {
    "avg_duration": "36.00",
    "listed_in": "Anime Features, Documentaries",
    "movie_count": "1"
  },
  {
    "avg_duration": "30.00",
    "listed_in": "Comedies, Music & Musicals, Sports Movies",
    "movie_count": "1"
  }
]
*/

