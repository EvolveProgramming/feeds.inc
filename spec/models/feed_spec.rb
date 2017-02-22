require 'rails_helper'

RSpec.describe Feed, type: :model do
  describe "with invalid attributes" do
    it "tests the name field" do
      expect(FactoryGirl.build(:feed, name: " ")).to be_invalid
    end

    it "tests the url field" do
      expect(FactoryGirl.build(:feed, url: " ")).to be_invalid
    end

    it "tests the description field" do
      expect(FactoryGirl.build(:feed, description: " ")).to be_invalid
    end
  end

  describe "with vaid attributes" do
    it "takes valid name" do
      expect(FactoryGirl.build(:feed, name: "Example")).to be_valid
    end

    it "takes valid url" do
      expect(FactoryGirl.build(:feed, url: "http://feeds.feedburner.com/railscasts")).to be_valid
    end

    it "takes valid description" do
      expect(FactoryGirl.build(:feed, description: "test number one for description")).to be_valid
    end
  end
end
