class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url, default: "shared url"
      t.integer :category_id

      t.timestamps
    end
  end
end
