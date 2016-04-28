FactoryGirl.define do
  factory :comment do
    sequence(:author) {|n| "Author #{n}"}
    sequence(:body) {|n| "Comment body #{n}"}
  end
end