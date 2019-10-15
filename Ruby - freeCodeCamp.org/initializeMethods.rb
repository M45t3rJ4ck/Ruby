# Initialize Method gets called when object gets created
class Book
    attr_accessor :title, :author, :pages
    def initialize(title, author, pages)
        @title = title
        @author = author
        @pages = pages
    end 
end
# Create instance object
book1 = Book.new("Harry Potter", "JK Rowling", 400)
book2 = Book.new("Lord of the Rings", "Tolkein", 500)
# Output code to console
puts book1.title
puts book2.author
