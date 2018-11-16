class CreatePoses < ActiveRecord::Migration[5.1]
  def change
    create_table :poses do |t|
      t.integer :yogaflow_id
      t.string :name
      t.string :sanskrit
      t.string :picture

      t.timestamps
    end
  end
end
