require "spec_helper"

describe Comment do
  describe "relations" do
    it {should belong_to :article}
  end
end