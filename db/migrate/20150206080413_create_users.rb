class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :weibo_token
      t.string :weibo_uid
      t.string :weibo_avatar_small
      t.string :weibo_avatar_large
      t.string :weibo_avatar_hd

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
