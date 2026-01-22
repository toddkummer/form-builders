class CreateBlogs < ActiveRecord::Migration[8.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.date :published_at

      t.timestamps
    end
  end
end
