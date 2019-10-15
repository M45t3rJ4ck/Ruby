# Create own datatype template with class defined by attributes
class Book
    attr_accessor :title, :author, :pages
end
# Create instance object based on own datatype
book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK Rowling"
book1.pages = 400

book2 = Book.new()
book2.title = "Lord of the rings"
book2.author = "Tolkein"
book2.pages = 500
# Output code to console
puts "Line 1:"
puts book1.title
puts book1.author
puts book1.pages
puts "Line 2:"
puts book2.title
puts book2.author
puts book2.pages
