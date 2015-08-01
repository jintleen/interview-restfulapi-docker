class CreatePost1s < ActiveRecord::Migration
  def change
    create_table :post1s do |t|
      t.string :title
      t.string :content

      t.timestamps null: false
    end
  end
end
