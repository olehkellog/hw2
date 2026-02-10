# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
#
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
#
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======
# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========
# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Represented by agent
# ====================
# Christian Bale

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all
Agent.destroy_all


# Generate models and tables, according to the domain model.
# TODO!
# 

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!
warner = Studio.new
warner.name = "Warner Bros."
warner.save

batman_begins = Movie.new
batman_begins.title = "Batman Begins"
batman_begins.year_released = 2005
batman_begins.rated = "PG-13"
batman_begins.studio_id = warner.id
batman_begins.save

dark_knight = Movie.new
dark_knight.title = "The Dark Knight"
dark_knight.year_released = 2008
dark_knight.rated = "PG-13"
dark_knight.studio_id = warner.id
dark_knight.save

dark_knight_rises = Movie.new
dark_knight_rises.title = "The Dark Knight Rises"
dark_knight_rises.year_released = 2012
dark_knight_rises.rated = "PG-13"
dark_knight_rises.studio_id = warner.id
dark_knight_rises.save

bale = Actor.new
bale.name = "Christian Bale"
bale.save

caine = Actor.new
caine.name = "Michael Caine"
caine.save

neeson = Actor.new
neeson.name = "Liam Neeson"
neeson.save

holmes = Actor.new
holmes.name = "Katie Holmes"
holmes.save

oldman = Actor.new
oldman.name = "Gary Oldman"
oldman.save

ledger = Actor.new
ledger.name = "Heath Ledger"
ledger.save

eckhart = Actor.new
eckhart.name = "Aaron Eckhart"
eckhart.save

gyllenhaal = Actor.new
gyllenhaal.name = "Maggie Gyllenhaal"
gyllenhaal.save

hardy = Actor.new
hardy.name = "Tom Hardy"
hardy.save

jgl = Actor.new
jgl.name = "Joseph Gordon-Levitt"
jgl.save

hathaway = Actor.new
hathaway.name = "Anne Hathaway"
hathaway.save

r1 = Role.new
r1.movie_id = batman_begins.id
r1.actor_id = bale.id
r1.character_name = "Bruce Wayne"
r1.save

r2 = Role.new
r2.movie_id = batman_begins.id
r2.actor_id = caine.id
r2.character_name = "Alfred"
r2.save

r3 = Role.new
r3.movie_id = batman_begins.id
r3.actor_id = neeson.id
r3.character_name = "Ra's Al Ghul"
r3.save

r4 = Role.new
r4.movie_id = batman_begins.id
r4.actor_id = holmes.id
r4.character_name = "Rachel Dawes"
r4.save

r5 = Role.new
r5.movie_id = batman_begins.id
r5.actor_id = oldman.id
r5.character_name = "Commissioner Gordon"
r5.save

r6 = Role.new
r6.movie_id = dark_knight.id
r6.actor_id = bale.id
r6.character_name = "Bruce Wayne"
r6.save

r7 = Role.new
r7.movie_id = dark_knight.id
r7.actor_id = ledger.id
r7.character_name = "Joker"
r7.save

r8 = Role.new
r8.movie_id = dark_knight.id
r8.actor_id = eckhart.id
r8.character_name = "Harvey Dent"
r8.save

r9 = Role.new
r9.movie_id = dark_knight.id
r9.actor_id = caine.id
r9.character_name = "Alfred"
r9.save

r10 = Role.new
r10.movie_id = dark_knight.id
r10.actor_id = gyllenhaal.id
r10.character_name = "Rachel Dawes"
r10.save

r11 = Role.new
r11.movie_id = dark_knight_rises.id
r11.actor_id = bale.id
r11.character_name = "Bruce Wayne"
r11.save

r12 = Role.new
r12.movie_id = dark_knight_rises.id
r12.actor_id = oldman.id
r12.character_name = "Commissioner Gordon"
r12.save

r13 = Role.new
r13.movie_id = dark_knight_rises.id
r13.actor_id = hardy.id
r13.character_name = "Bane"
r13.save

r14 = Role.new
r14.movie_id = dark_knight_rises.id
r14.actor_id = jgl.id
r14.character_name = "John Blake"
r14.save

r15 = Role.new
r15.movie_id = dark_knight_rises.id
r15.actor_id = hathaway.id
r15.character_name = "Selina Kyle"
r15.save

ari = Agent.new
ari.name = "Ari Emanuel"
ari.save

bale.agent_id = ari.id
bale.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

movies = Movie.all

for movie in movies
  studio = Studio.find_by({ "id" => movie["studio_id"] })
  puts "#{movie["title"].ljust(25)} #{movie["year_released"]} #{movie["rated"]} #{studio["name"]}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

roles = Role.all

for role in roles
  movie = Movie.find_by({ "id" => role["movie_id"] })
  actor = Actor.find_by({ "id" => role["actor_id"] })
  puts "#{movie["title"].ljust(25)} #{actor["name"].ljust(22)} #{role["character_name"]}"
end

# Prints a header for the agent's list of represented actors output
puts ""
puts "Represented by agent"
puts "===================="
puts ""

# Query the actor data and loop through the results to display the agent's list of represented actors output.
# TODO!
ari = Agent.find_by({ "name" => "Ari Emanuel" })
aris_actors = Actor.where({ "agent_id" => ari["id"] })

for actor in aris_actors
  puts actor["name"]
end