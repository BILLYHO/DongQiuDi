class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :user_type, default: "local"
      t.boolean :admin, default: false

      t.string :weibo_token
      t.string :weibo_uid
      t.string :weibo_avatar_small
      t.string :weibo_avatar_large
      t.string :weibo_avatar_hd

      t.string :github_token
      t.string :github_id
      t.string :github_avatar

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
