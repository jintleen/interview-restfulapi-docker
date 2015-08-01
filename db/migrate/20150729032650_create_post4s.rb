class CreatePost4s < ActiveRecord::Migration
  def change
    create_table :post4s do |t|
      t.string :title
      t.string :content

      t.timestamps null: false
    end
  end
end
