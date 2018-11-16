class CreateFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :friends do |t|
      t.integer :follower_id
      t.integer :leader_id

      t.timestamps
    end
  end
end
