/* 
1. For each director count the no of movies and tv shows created by them in      
separate columns for directors who have created tv shows and movies both.  
*/

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


/*
[
  {
    "director": "Alessandro Angulo",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "BB Sasore",
    "type_count": "3",
    "no_of_tvshow": "1",
    "no_of_movies": "2"
  },
  {
    "director": "Billy Corben",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Brad Anderson",
    "type_count": "4",
    "no_of_tvshow": "1",
    "no_of_movies": "3"
  },
  {
    "director": "Bunmi Ajakaiye",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Cosima Spender",
    "type_count": "3",
    "no_of_tvshow": "1",
    "no_of_movies": "2"
  },
  {
    "director": "Dan Forrer",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Daniel Kontur",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "David Ayer",
    "type_count": "4",
    "no_of_tvshow": "1",
    "no_of_movies": "3"
  },
  {
    "director": "Eli Roth",
    "type_count": "3",
    "no_of_tvshow": "1",
    "no_of_movies": "2"
  },
  {
    "director": "Estela Renner",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Jalil Lespert",
    "type_count": "3",
    "no_of_tvshow": "1",
    "no_of_movies": "2"
  },
  {
    "director": "Jay Chandrasekhar",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Jerry Seinfeld",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Joe Berlinger",
    "type_count": "4",
    "no_of_tvshow": "1",
    "no_of_movies": "3"
  },
  {
    "director": "John Dower",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Julien Leclercq",
    "type_count": "3",
    "no_of_tvshow": "1",
    "no_of_movies": "2"
  },
  {
    "director": "Justin Webster",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Kemi Adetiba",
    "type_count": "3",
    "no_of_tvshow": "1",
    "no_of_movies": "2"
  },
  {
    "director": "Kim Seong-hun",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Kobun Shizuno, Hiroyuki Seshita",
    "type_count": "3",
    "no_of_tvshow": "1",
    "no_of_movies": "2"
  },
  {
    "director": "Kyran Kelly",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Malik Nejer",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Manolo Caro",
    "type_count": "3",
    "no_of_tvshow": "1",
    "no_of_movies": "2"
  },
  {
    "director": "Marcus Raboy",
    "type_count": "16",
    "no_of_tvshow": "1",
    "no_of_movies": "15"
  },
  {
    "director": "Mark Tonderai",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Masaaki Yuasa",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Mateo Gil",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Michael Simon",
    "type_count": "5",
    "no_of_tvshow": "1",
    "no_of_movies": "4"
  },
  {
    "director": "Mike Flanagan",
    "type_count": "4",
    "no_of_tvshow": "1",
    "no_of_movies": "3"
  },
  {
    "director": "Noam Murro",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Obi Emelonye",
    "type_count": "3",
    "no_of_tvshow": "1",
    "no_of_movies": "2"
  },
  {
    "director": "Oliver Stone",
    "type_count": "5",
    "no_of_tvshow": "1",
    "no_of_movies": "4"
  },
  {
    "director": "Olivier Megaton",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Oriol Paulo",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Quentin Tarantino",
    "type_count": "8",
    "no_of_tvshow": "1",
    "no_of_movies": "7"
  },
  {
    "director": "Ryan Polito",
    "type_count": "8",
    "no_of_tvshow": "1",
    "no_of_movies": "7"
  },
  {
    "director": "Sion Sono",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Soumendra Padhi",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Stan Lathan",
    "type_count": "4",
    "no_of_tvshow": "2",
    "no_of_movies": "2"
  },
  {
    "director": "Steven Bognar, Julia Reichert",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Tensai Okamura",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Thierry Demaizière, Alban Teurlai",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Thomas Astruc",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Tiller Russell",
    "type_count": "3",
    "no_of_tvshow": "1",
    "no_of_movies": "2"
  },
  {
    "director": "Tosin Coker",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Tsutomu Mizushima",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": "Ziad Doueiri",
    "type_count": "2",
    "no_of_tvshow": "1",
    "no_of_movies": "1"
  },
  {
    "director": null,
    "type_count": "2634",
    "no_of_tvshow": "2446",
    "no_of_movies": "188"
  }
]
*/
