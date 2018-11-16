require 'rails_helper'

RSpec.describe Pose, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:yogaflow) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
