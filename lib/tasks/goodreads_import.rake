require 'csv'
require 'pry'

desc "Import Goodreads Library"
task :import => :environment do
    Book.destroy_all
    puts "Books table deleted; refilling data..."
    csv_text = File.read("./db/data/goodreads_library_export.csv")
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
        Book.create!(title: row["Title"], author: row["Author"], 
            isbn: row["ISBN"], my_rating: row["My Rating"], 
            average_rating: row["Average Rating"], publisher: row["Publisher"],
            num_pages: row["Number of Pages"], year_published: row["Year Published"], 
            date_read: row["Date Read"], bookshelf: row["Bookshelves"]
        )
    end

    puts "Books data imported. #{Book.count} rows created."

end