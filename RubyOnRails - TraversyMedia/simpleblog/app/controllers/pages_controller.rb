class PagesController < ApplicationController
    def about
        @title = 'About Us'
        @content = 'This is the about page, meant for more information about this current app and where or how to get in contact with the creators.'
    end
end
