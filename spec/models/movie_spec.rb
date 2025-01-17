require 'rails_helper'

RSpec.describe Movie, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:director) }

    it { should have_many(:roles) }

    end

    describe "InDirect Associations" do

    it { should have_many(:cast) }

    end

    describe "Validations" do

    it { should validate_presence_of(:director_id) }

    it { should validate_presence_of(:title) }

    end
end
