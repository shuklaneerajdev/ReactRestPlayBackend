class Post < ApplicationRecord
  paginates_per 10
  has_many :comments
end
