class Yogaflow < ApplicationRecord
  # Direct associations

  has_many   :poses,
             :dependent => :nullify

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
