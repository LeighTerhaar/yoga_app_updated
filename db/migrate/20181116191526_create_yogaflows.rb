class CreateYogaflows < ActiveRecord::Migration[5.1]
  def change
    create_table :yogaflows do |t|
      t.integer :user_id
      t.string :title
      t.string :intention
      t.string :description
      t.string :yogatype

      t.timestamps
    end
  end
end
