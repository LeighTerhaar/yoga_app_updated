class Friend < ApplicationRecord
  # Direct associations

  belongs_to :follower,
             :class_name => "User"

  belongs_to :leader,
             :class_name => "User"

  # Indirect associations

  # Validations

end
