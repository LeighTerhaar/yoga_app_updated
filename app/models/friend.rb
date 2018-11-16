class Friend < ApplicationRecord
  # Direct associations

  belongs_to :leader,
             :class_name => "User"

  # Indirect associations

  # Validations

end
