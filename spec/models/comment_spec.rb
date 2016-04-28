require "spec_helper"

describe Comment do
  describe "relations" do
    it {should belong_to :article}
  end
  describe "validations" do
    it "validate maximum char to body" do
      should validate_length_of(:body).is_at_most(4000).with_long_message('is too long (maximum is 4000 characters)')
    end
  end
end