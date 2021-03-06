require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:studentfriends) }

    it { should have_many(:teacherfriends) }

    it { should have_many(:favorites) }

    it { should have_many(:yogaflows) }

    end

    describe "InDirect Associations" do

    it { should have_many(:followers) }

    it { should have_many(:leaders) }

    it { should have_many(:favoriteyogaflows) }

    end

    describe "Validations" do
      
    end
end
