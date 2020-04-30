class Post < ApplicationRecord
  validates :body, presence: true, length: { minimum: 1, maximum: 280 }
end
