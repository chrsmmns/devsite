class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :isbn
      t.string :my_rating
      t.string :average_rating
      t.string :publisher
      t.integer :num_pages
      t.string :year_published
      t.string :date_read
      t.string :bookshelf

      t.timestamps
    end
  end
end
