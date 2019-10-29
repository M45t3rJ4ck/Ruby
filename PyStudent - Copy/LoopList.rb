# Inside it, define a list of Strings of your 5 favourite movies.
# Now, loop over the list. For each item in the list, print out "Movie: " plus the movies name.
# Can you figure out how to print out Movie 1: <Movie 1's name>.
# Movie 2: ... etc?
# HINT: YOU WILL NEED TO LOOK UP the 'enumerate' command in Python using a Google search.
# This command allows you to loop over a list retaining both the item at every position, and its index (i.e. position in the list).

movie = []
movies = movie.to_a
movie_count = 0
print ("Please enter a movie title: ")
movie = gets.chomp
movies.append(movie)
movie_count += 1
while movie_count != 5
    print ("Please enter a movie title: ")
    movie = gets.chomp
    movies.append(movie)
    movie_count += 1
    if movie_count == 5
        puts (movies).to_a
    end
end
