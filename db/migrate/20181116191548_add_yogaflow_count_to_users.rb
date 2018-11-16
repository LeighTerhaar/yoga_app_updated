class AddYogaflowCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :yogaflows_count, :integer
  end
end
