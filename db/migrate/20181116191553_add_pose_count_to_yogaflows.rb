class AddPoseCountToYogaflows < ActiveRecord::Migration[5.1]
  def change
    add_column :yogaflows, :poses_count, :integer
  end
end
