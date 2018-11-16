class Yogaflow < ApplicationRecord
  # Direct associations

  has_many   :favorites,
             :dependent => :destroy

  has_many   :poses,
             :dependent => :nullify

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  has_many   :users,
             :through => :favorites,
             :source => :user

  # Validations

end
