class User < ApplicationRecord
  # Direct associations

  has_many   :studentfriends,
             :class_name => "Friend",
             :foreign_key => "follower_id",
             :dependent => :destroy

  has_many   :teacherfriends,
             :class_name => "Friend",
             :foreign_key => "leader_id",
             :dependent => :destroy

  has_many   :favorites,
             :dependent => :destroy

  has_many   :yogaflows,
             :dependent => :destroy

  # Indirect associations

  has_many   :favoriteyogaflows,
             :through => :favorites,
             :source => :yogaflow

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
