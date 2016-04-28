class Comment < ActiveRecord::Base
  validates :body, length: { maximum: 4000}
  belongs_to :article
end
