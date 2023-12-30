class Book < ApplicationRecord
    validates_presence_of :title, :author, :isbn, :average_rating, :num_pages, :year_published


end