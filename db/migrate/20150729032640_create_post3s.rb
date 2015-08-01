class CreatePost3s < ActiveRecord::Migration
  def change
    create_table :post3s do |t|
      t.string :title
      t.string :content

      t.timestamps null: false
    end
  end
end
