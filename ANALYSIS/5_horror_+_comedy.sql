/*Find the list of directors who have created horror and comedy movies. Display 
director names along with number of comedy and horror movies directed by them. */

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

/*
[
  {
    "director": "Adam McKay",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Akiva Goldsman",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Al Campbell, Alice Mathias",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Alex Merkin",
    "type_count": "2",
    "no_of_horror_movie": "2",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Alex Winter",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Amy Poehler",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Andrew Douglas",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Andy Tennant",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Ann Deborah Fishman",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Bradley Parker",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Brett Weiner",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Brian Robbins",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Bruce Leddy",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Bruce McCulloch",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Bruce W. Smith",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Burr Steers",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Callie Khouri, Jesse V. Johnson",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Caryn Waechter",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Chad Archibald",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Charles Stone III",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Chester Tam",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Chris Eigeman",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Chris Stokes",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Christopher Alender",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Christopher Guest",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Ciarán Foy",
    "type_count": "2",
    "no_of_horror_movie": "2",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Claire Scanlon",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Craig Anderson",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Craig Gillespie",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Dallas Jackson",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Daniel Gray Longino",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Darren Grant",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Darren Lynn Bousman",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "David R. Ellis",
    "type_count": "2",
    "no_of_horror_movie": "2",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "David Wain",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "David Zucker",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Dean Parisot",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Dennis Bartok",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Dennis Dugan",
    "type_count": "2",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "2"
  },
  {
    "director": "Don Mancini",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Douglas McGrath",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Dylan C. Brown",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Elliot Hegarty",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Emma Tammi",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Eric Bress",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Eric Idle",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Eric Stoltz",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Erik White",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Ethan Coen, Joel Coen",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Fernando Lebrija",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Fred Wolf",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Grant Heslov",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Grant S. Johnson, Ippsie Jones",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Gregg Bishop",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Gregory Plotkin",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Harrison Smith",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Hugh WIlson",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Ian Edelman",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Ian MacNaughton",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Jake Szymanski",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "James Dearden",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "James Haslam",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "James Wan",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "James Wong",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Jamie Babbit",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Jared Hess",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Jarrad Paul, Andrew Mogel",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Jay Roach",
    "type_count": "2",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "2"
  },
  {
    "director": "Jeff Garlin",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Jeff Tremaine",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Joe Dante",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Joel Gallen",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Joey Kern",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Johannes Roberts",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Jon Lucas, Scott Moore",
    "type_count": "2",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "2"
  },
  {
    "director": "Jonathan Levine",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Jovanka Vuckovic, Annie Clark, Roxanne Benjamin, Karyn Kusama",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Justin P. Lange",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Ken Marino",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Kevin Pollak",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Kevin Smith",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Kyle Newacheck",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Kyle Rideout",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Lars Klevberg",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Laura Terruso",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Leigh Janiak",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Leslie Small",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Lev L. Spiro",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Lionel C. Martin",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "M.J. Bassett",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Malcolm D. Lee",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Marcus Nispel",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Mark Murphy",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Mary Lambert",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Matt Piedmont",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Melanie Mayron",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Michael Duggan",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Michael G. Kehoe",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Michael Gallagher",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Michael Polish",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Michael Tiddes",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Michael Winnick",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Michael Winterbottom",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Mike Clattenburg",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Mike Elliott",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Natasha Lyonne",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Neal Brennan",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Neil LaBute",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Nelson McCormick",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Nick Castle",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Nick Simon",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Nicol Paone",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Oliver Blackburn",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Oliver Frampton",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Owen Egerton",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Peter Farrelly, Will Graham, Steve Carr, Griffin Dunne, Steve Brill, James Duffy, Jonathan van Tulleken, Elizabeth Banks, Patrik Forsberg, Brett Ratner, Rusty Cundieff, James Gunn",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Peter Hutchings",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Peter Segal",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Peter Winther",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Phil Burgers",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Rich Ragsdale",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Ricky Gervais",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Robert Adetuyi",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Robert Smigel",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Rod Blackhurst",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Rolfe Kanefsky",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Roman Atwood, Ben Pluimer",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Rusty Nixon",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Sam Macaroni",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Scot Armstrong",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Scott Aukerman",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Scott Zabielski",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Sean Anders",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Sonny Mallhi",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Stephan Rick",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Steve Brill",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Steve Pink",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Steve Rash",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Steven Brill",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Ted Emery",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Terry Hughes, Ian MacNaughton",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Tom Edmunds",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Tom Elkins",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Travis Stevens",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Troy Miller",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Troy Nixey",
    "type_count": "1",
    "no_of_horror_movie": "1",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Warren P. Sonoda",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  },
  {
    "director": "Wes Craven",
    "type_count": "2",
    "no_of_horror_movie": "2",
    "no_of_comedy_movie": "0"
  },
  {
    "director": "Zara Hayes",
    "type_count": "1",
    "no_of_horror_movie": "0",
    "no_of_comedy_movie": "1"
  }
]
*/