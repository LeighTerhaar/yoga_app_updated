class Pose < ApplicationRecord
  # Direct associations

  belongs_to :yogaflow,
             :required => false,
             :counter_cache => true

  # Indirect associations

  # Validations

end
