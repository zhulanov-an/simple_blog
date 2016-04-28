require "spec_helper"

describe Article do

  describe "validations" do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:text)}
  end

  describe "relations" do
    it {should have_many :comments}
  end

  describe "#subject" do
    it "returns the article title" do
      article = FactoryGirl.create(:article, :title => 'Lorem ipsum')
      expect(article.subject).to eq 'Lorem ipsum'
    end
  end

end