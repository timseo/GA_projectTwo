class Post < ApplicationRecord
  belongs_to :user
  has_many :drink
  has_many :comment
end
