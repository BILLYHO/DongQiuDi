class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :member_id
      t.text :name
      t.text :gender
      t.text :position
      t.text :about
      t.text :motto

      t.timestamps
    end
    add_index :members, [:member_id]
  end
end
