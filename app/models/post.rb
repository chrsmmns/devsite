class Post < ApplicationRecord
    validates_presence_of :title, :short_desc, :content
end
