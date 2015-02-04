class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.text :topic_id
      t.integer :topic_type
      t.date :time
      t.text :title
      t.text :content

      t.timestamps
    end
    add_index :topics, [:topic_type]
  end
end
