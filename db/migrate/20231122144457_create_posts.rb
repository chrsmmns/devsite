class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :short_desc
      t.string :content

      t.timestamps
    end
  end
end
