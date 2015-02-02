class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :news_id
      t.text :time
      t.text :title
      t.text :content

      t.timestamps
    end
    add_index :news, [:news_id]
  end
end
